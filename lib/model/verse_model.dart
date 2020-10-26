

class Verses {
  final Details details;
  final String notice;

  Verses({
    this.details,
    this.notice,
  });

  factory Verses.fromJson(Map<String, dynamic> json) {
    return Verses(
        details: json['details'] as Details, notice: json['notice'] as String);
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
}
