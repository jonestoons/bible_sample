import 'package:bible_sample/provider/load_verse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Verse extends StatefulWidget {
  @override
  _VerseState createState() => _VerseState();
}

class _VerseState extends State<Verse> {
  Future<void> getVerse() async {
    await Provider.of<BibleVerses>(context, listen: false).getVerses();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BibleVerses>(
      builder: (context, provider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Center(child: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('Verse'),
            // )),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: provider.getVerse != null
                        ? Text(
                            provider.getVerse.verse.details.reference,
                            style: TextStyle(fontSize: 18.0, color: Colors.red, fontWeight: FontWeight.bold),
                          )
                        : Text(
                            'Click the Randomize button below',
                            style: TextStyle(fontSize: 18.0, color: Colors.red),
                          ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                    child: provider.getVerse != null
                        ? Text(
                            provider.getVerse.verse.details.text,
                            style: TextStyle(fontSize: 25.0),
                          )
                        : Text(
                            '',
                            style: TextStyle(fontSize: 18.0, color: Colors.red),
                          ),
                  ),
                ),
              ],
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
      },
    );
  }
}
