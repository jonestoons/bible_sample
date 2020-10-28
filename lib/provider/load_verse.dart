import 'dart:convert';

import 'package:bible_sample/model/verse_model.dart';
// import 'package:bible_sample/widgets/verse.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class BibleVerses with ChangeNotifier {
  MainVerse _mainVerse;

  MainVerse get getVerse{
    return _mainVerse;
  }

  Future<void> getVerses() async {
    final url = 'https://beta.ourmanna.com/api/v1/get/?format=json';
    try {
      final response = await http.get(url);
      var extractedData = json.decode(response.body) as Map<String, dynamic>;
      var bibleVerse = MainVerse.fromJson(extractedData);

      if (extractedData == null) {
        return;
      }

      _mainVerse = bibleVerse;
      // print(bibleVerse.verse.details.text);
      // extractedData.forEach((vID, vData) {
      //   bibleVerse.add(Verses(
      //     notice: vData['notice'],
      //     details: (vData['details'] as dynamic).map(
      //       (e) => Details(
      //           reference: e['reference'],
      //           text: e['text'],
      //           version: e['version'],
      //           verseurl: e['verseurl']),
      //     ),
      //   ));
      // });

      // _mainVerse = bibleVerse[0];

    } catch (e) {}

    notifyListeners();
  }
}
