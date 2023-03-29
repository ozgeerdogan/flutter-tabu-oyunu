import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabu_aplication/page/time_over_page.dart';

import '../genel_widgets/genel_widgets.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({
    super.key,
  });

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  Color cardColor = const Color.fromARGB(255, 32, 29, 79);
  static const maxSeconds = 30;
  int seconds = maxSeconds;
  Timer? timer;
  void resetTimer() => setState(() {
        seconds = maxSeconds;
      });

  void startTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }

    void stopTimer({bool reset = true}) {
      if (reset) {
        resetTimer();
      }
      setState(() {
        timer?.cancel();
      });
    }

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        stopTimer(reset: false);
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TimeOver()),
          );
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    //startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: const Color.fromARGB(255, 0, 30, 54),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 15, right: 15, bottom: 15),
              child: Row(
                children: [
                  TakimCard(takimName: "Takım 1", takimPuan: 1),
                  _buildtimer(),
                  TakimCard(takimName: "Takım 2", takimPuan: 0),
                ],
              ),
            ),
            const WordCard(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BottomCard(
                      bottomText: "Yanlış",
                      bottomColor: const Color.fromARGB(255, 147, 21, 12)),
                  BottomCard(
                      bottomText: "Pas",
                      bottomColor: const Color.fromARGB(255, 94, 144, 191)),
                  BottomCard(
                      bottomText: "Doğru",
                      bottomColor: const Color.fromARGB(255, 17, 150, 30)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildtimer() {
    if (seconds == 0) {
      return const Expanded(
          child: Icon(Icons.alarm, size: 110, color: Colors.red));
    } else {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: 100,
              width: 70,
              child: Stack(fit: StackFit.expand, children: [
                CircularProgressIndicator(
                    value: 1 - seconds / maxSeconds,
                    strokeWidth: 5,
                    valueColor: const AlwaysStoppedAnimation(Colors.white),
                    backgroundColor: cardColor),
                Center(
                    child: Text(
                  "$seconds",
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
              ])),
        ),
      );
    }
  }
}
