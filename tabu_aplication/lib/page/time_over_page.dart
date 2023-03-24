import 'package:flutter/material.dart';
import 'package:tabu_aplication/genel_widgets/genel_widgets.dart';

class TimeOver extends StatefulWidget {
  const TimeOver({super.key});

  @override
  State<TimeOver> createState() => _TimeOverState();
}

class _TimeOverState extends State<TimeOver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/blue.jpg"), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "Oyun Özeti",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.red),
              ),
            )),
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "A Takımı",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "B Takımı",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                ]),
                TableRow(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                ]),
              ],
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.only(bottom: 30, top: 30),
              child: Text(
                "1. Tur Özeti",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.red),
              ),
            )),
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Doğru:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                ]),
                TableRow(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Tabu:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                ]),
                TableRow(children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Toplam Puan:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "0",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
                ]),
              ],
            ),
            const SizedBox(height: 40),
            RegisterDevamEtBtn(
              function: () {},
              width: 200,
              color: Colors.red,
              btnAdi: "DEVAM",
              size: 16,
              borderColor: Colors.white,
              borderSize: 3,
            )
          ],
        ),
      ),
    );
  }
}
