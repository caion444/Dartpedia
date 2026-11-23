import 'title_set.dart';

class Summary {
  Summary({
    required this.titles,
    required this.pageid,
    required this.extract,
    required this.extractHtml,
    required this.lang,
    required this.dir,
    this.url,
    this.description,
  });

  TitleSet titles;
  int pageid;
  String extract;
  String extractHtml;
  String? url;
  String lang;
  String dir;
  String? description;

  factory Summary.fromJson(Map<String, Object?> json) {
    return switch (json) {
      {
        'titles': final Map<String, Object?> titles,
        'pageid': final int pageid,
        'extract': final String extract,
        'extract_html': final String extractHtml,
        'lang': final String lang,
        'dir': final String dir,
        'description': final String description,
      } =>
        Summary(
          titles: TitleSet.fromJson(titles),
          pageid: pageid,
          extract: extract,
          extractHtml: extractHtml,
          lang: lang,
          dir: dir,
          description: description,
        ),
      {
        'titles': final Map<String, Object?> titles,
        'pageid': final int pageid,
        'extract': final String extract,
        'extract_html': final String extractHtml,
        'lang': final String lang,
        'dir': final String dir,
      } =>
        Summary(
          titles: TitleSet.fromJson(titles),
          pageid: pageid,
          extract: extract,
          extractHtml: extractHtml,
          lang: lang,
          dir: dir,
        ),
      _ => throw FormatException('Could not deserialize Summary, json=$json'),
    };
  }

  @override
  String toString() =>
      'Summary[titles=$titles, pageid=$pageid, extract=$extract, description=$description]';
}
