import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabu_aplication/genel_widgets/genel_widgets.dart';
import 'package:tabu_aplication/page/settings_page.dart';
import 'package:tabu_aplication/page/play_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: Get.size.width,
      height: Get.size.height,
      child: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/backImage.png"),
                  fit: BoxFit.cover)),
        ),
        Positioned.fill(
          bottom: 120,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'TABU',
              style: GoogleFonts.rockSalt(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 171, 57, 11),
                    letterSpacing: 3,
                    fontSize: 65),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 180,
          child: Align(
            alignment: Alignment.center,
            child: RegisterDevamEtBtn(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PlayPage()),
                  );
                },
                borderColor: const Color.fromARGB(255, 6, 41, 69),
                borderSize: 3,
                width: 200,
                height: 70,
                btnAdi: "OYNA",
                size: 35,
                textColor: const Color.fromARGB(255, 171, 57, 11),
                color: Colors.transparent),
          ),
        ),
        Positioned.fill(
          top: 380,
          child: Align(
            alignment: Alignment.center,
            child: RegisterDevamEtBtn(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                  );
                },
                borderColor: const Color.fromARGB(255, 6, 41, 69),
                borderSize: 3,
                width: 150,
                height: 40,
                btnAdi: "Ayarlar",
                size: 20,
                textColor: const Color.fromARGB(255, 171, 57, 11),
                color: Colors.transparent),
          ),
        ),
        Positioned.fill(
          top: 470,
          child: Align(
            alignment: Alignment.center,
            child: RegisterDevamEtBtn(
                function: () {},
                borderColor: const Color.fromARGB(255, 6, 41, 69),
                borderSize: 3,
                width: 150,
                height: 40,
                btnAdi: "Çıkış",
                size: 20,
                textColor: const Color.fromARGB(255, 171, 57, 11),
                color: Colors.transparent),
          ),
        ),
      ]),
    ));
  }
}
