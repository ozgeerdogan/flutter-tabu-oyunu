import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabu_aplication/page/time_over_page.dart';

import '../genel_widgets/genel_widgets.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  Color cardColor = const Color.fromARGB(255, 32, 29, 79);
  static const maxSeconds = 10;
  int seconds = maxSeconds;
  Timer? timer;
  void resetTimer() => setState(() {
        seconds = maxSeconds;
      });

  void startTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
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
    startTimer();
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
            Expanded(child: wordCard(context)),
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

  Container wordCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: cardColor),
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Column(
        children: const [
          SizedBox(
            height: 60,
          ),
          Text(
            "ANAHTAR",
            style: TextStyle(
                color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Color.fromARGB(255, 92, 92, 92),
            height: 35,
          ),
          SizedBox(height: 25),
          Text(
            "Kilit",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 8),
          Text(
            "Metal",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 8),
          Text(
            "Kasa",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 8),
          Text(
            "Kapı",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 8),
          Text(
            "Çilingir",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    );
  }

  Widget _buildtimer() {
    if (seconds == 0) {
      return const Icon(Icons.alarm, size: 100, color: Colors.red);
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
