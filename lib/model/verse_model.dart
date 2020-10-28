class MainVerse {
  final Verses verse;

  MainVerse({
    this.verse,
  });

  factory MainVerse.fromJson(Map<String, dynamic> json) {
    return MainVerse(
      verse: Verses.fromJson(json['verse']),
    );
  }
}

class Verses {
  final Details details;
  final String notice;

  Verses({
    this.details,
    this.notice,
  });

  factory Verses.fromJson(Map<String, dynamic> json) {
    return Verses(
      notice: json['notice'],
      details: Details.fromJson(json['details']),
    );
  }
}

class Details {
  final String text;
  final String reference;
  final String version;
  final String verseurl;

  Details({
    this.text,
    this.reference,
    this.version,
    this.verseurl,
  });

  factory Details.fromJson(Map<String, dynamic> parsedJson) {
    return Details(
      text: parsedJson['text'],
      reference: parsedJson['reference'],
      version: parsedJson['version'],
      verseurl: parsedJson['verseurl'],
    );
  }
}
