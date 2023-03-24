import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double oyunSure = 30;
  double pasHakki = 3;
  double tabu = 1;
  double kazanmaPuani = 25;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backImage.png"), fit: BoxFit.cover)),
        child: Column(children: [
          const SizedBox(
            height: 190,
          ),
          const Icon(
            Icons.settings_suggest,
            color: Colors.red,
            size: 80,
          ),
          const Text(
            "Ayarlar",
            style: TextStyle(
                color: Colors.red, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Süre: ${oyunSure.round()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Slider(
                    activeColor: Colors.red,
                    min: 0,
                    max: 180,
                    divisions: 30,
                    value: oyunSure,
                    onChanged: (double newValue) {
                      setState(() {
                        oyunSure = newValue;
                      });
                    }),
                    Text(
                  "Pas Hakkı: ${pasHakki.round()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Slider(
                    activeColor: Colors.red,
                    min: 0,
                    max: 5,
                    value: pasHakki,
                    onChanged: (double newValue) {
                      setState(() {
                        pasHakki = newValue;
                      });
                    }),Text(
                  "Tabu: ${tabu.round()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Slider(
                    activeColor: Colors.red,
                    min: 0,
                    max: 3,
                    value: tabu,
                    onChanged: (double newValue) {
                      setState(() {
                        tabu = newValue;
                      });
                    }),
                    Text(
                  "Kazanma Puanı: ${kazanmaPuani.round()}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Slider(
                    activeColor: Colors.red,
                    min: 0,
                    max: 250,
                    divisions: 25,
                    value: kazanmaPuani,
                    onChanged: (double newValue) {
                      setState(() {
                        kazanmaPuani = newValue;
                      });
                    })
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
