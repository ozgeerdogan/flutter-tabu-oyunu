import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  static const maxSeconds = 60;
  int seconds = maxSeconds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 175, 97, 154), Colors.white])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildtimer(),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    ));
  }

  Widget _buildtimer() {
    if (seconds == 0) {
      return const Icon(
        Icons.task_alt,
        size: 112,
        color: Color.fromARGB(255, 86, 11, 148),
      );
    } else {
      return SizedBox(
          height: 200,
          width: 200,
          child: Stack(fit: StackFit.expand, children: [
            CircularProgressIndicator(
              value: 1 - seconds / maxSeconds,
              strokeWidth: 12,
              valueColor: const AlwaysStoppedAnimation(Colors.white),
              backgroundColor: const Color.fromARGB(255, 86, 11, 148),
            ),
            Center(
                child: Text(
              "$seconds",
              style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ))
          ]));
    }
  }
}
