import 'package:bible_sample/provider/load_verse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Verse extends StatefulWidget {
  const Verse({Key key}) : super(key: key);

  @override
  _VerseState createState() => _VerseState();
}

class _VerseState extends State<Verse> {
  Future<void> getVerse() async {
    await Provider.of<BibleVerses>(context, listen: false).getVerses();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Center(child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Text('Verse'),
        // )),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Jeh',
              style: TextStyle(fontSize: 18.0, color: Colors.red),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Center(
                child: Text(
                  'Hey',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              padding: EdgeInsets.only(top: 5),
            ),
          ),
        ),
        RaisedButton.icon(
          icon: Icon(Icons.refresh),
          label: Text('Randomize'),
          onPressed: getVerse,
          elevation: 0,
          textColor: Colors.white,
          color: Theme.of(context).primaryColor,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        )
      ],
    );
  }
}
