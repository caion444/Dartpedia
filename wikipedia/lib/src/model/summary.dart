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

  final TitleSet titles;
  final int pageid;
  final String extract;
  final String extractHtml;
  final String lang;
  final String dir;
  final String? url;
  final String? description;

  static Summary fromJson(Map<String, Object?> json) {
    return switch (json) {
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
          description: json['description'] as String?,
          url: switch (json['content_urls']) {
            {'desktop': {'page': final String pageUrl}} => pageUrl,
            _ => null,
          },
        ),
      _ => throw FormatException('Formato inválido para Summary: $json'),
    };
  }
}
