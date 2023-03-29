import 'package:flutter/material.dart';
import 'package:tabu_aplication/models/word.dart';

class WordData with ChangeNotifier {
  final List<Word> words = [
    Word(title: [
      "KUMBARA",
      "Para",
      "Biriktirmek",
      "Yatırım",
      "Banka",
      "Saklamak"
    ]),
    Word(title: ["YABANİ", "Vahşi", "İlkel", "Hayat", "Orman", "Hayvan"]),
  ];
}
