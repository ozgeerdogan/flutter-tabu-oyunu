// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabu_aplication/models/words.data.dart';

class RegisterDevamEtBtn extends StatelessWidget {
  final Function function;
  final String btnAdi;
  final double width;
  final double height;
  final Color? color;
  final double size;
  final Color? textColor;
  final Color? borderColor;
  final double? borderSize;
  const RegisterDevamEtBtn(
      {super.key,
      this.borderSize,
      this.borderColor,
      this.textColor,
      this.size = 12,
      required this.function,
      this.btnAdi = 'Devam Et',
      required this.width,
      this.height = 44,
      this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          side: BorderSide(
              color: borderColor ?? Colors.transparent, width: borderSize ?? 0),
        ),
        onPressed: () {
          function();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(btnAdi,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: size,
              )),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BottomCard extends StatelessWidget {
  String bottomText;
  Color bottomColor;
  BottomCard({super.key, required this.bottomText, required this.bottomColor});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          onTap: null,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: bottomColor),
              height: 80,
              width: 100,
              child: Center(
                  child: Text(
                bottomText,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TakimCard extends StatelessWidget {
  Color cardColor = const Color.fromARGB(255, 32, 29, 79);
  String takimName;
  int takimPuan;
  TakimCard({super.key, required this.takimName, required this.takimPuan});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: cardColor),
        height: 100,
        width: 120,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                takimName,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                takimPuan.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PauseCard extends StatelessWidget {
  const PauseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 32, 29, 79),
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Icon(
                Icons.pause,
                size: 60,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}

class WordCard extends StatelessWidget {
  final String? title;
  const WordCard({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 32, 29, 79)),
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                Provider.of<WordData>(context)
                    .words[index]
                    .title[index]
                    .toString(),
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Color.fromARGB(255, 92, 92, 92),
                height: 35,
              ),
              const SizedBox(height: 25),
              Text(
                Provider.of<WordData>(context)
                    .words[index]
                    .title[index + 1]
                    .toString(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 8),
              Text(
                Provider.of<WordData>(context)
                    .words[index]
                    .title[index + 2]
                    .toString(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 8),
              Text(
                Provider.of<WordData>(context)
                    .words[index]
                    .title[index + 3]
                    .toString(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 8),
              Text(
                Provider.of<WordData>(context)
                    .words[index]
                    .title[index + 4]
                    .toString(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 8),
              Text(
                Provider.of<WordData>(context)
                    .words[index]
                    .title[index + 5]
                    .toString(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          );
        },
      ),
    );
  }
}
