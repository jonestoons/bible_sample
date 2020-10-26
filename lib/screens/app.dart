import 'package:bible_sample/provider/load_verse.dart';
import 'package:bible_sample/widgets/verse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: BibleVerses(),
      child: MaterialApp(
        title: 'Bible Verses',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Bible Verses'),
          ),
          body: Verse(),
        ),
      ),
    );
  }
}
