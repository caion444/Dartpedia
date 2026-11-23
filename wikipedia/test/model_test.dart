import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wikipedia/wikipedia.dart';

const String dartLangSummaryJson = '''
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\\"mw-page-title-main\\">Dart (programming language)</span>",
  "titles": {
    "canonical": "Dart_(programming_language)",
    "normalized": "Dart (programming language)",
    "display": "<span class=\\"mw-page-title-main\\">Dart (programming language)</span>"
  },
  "pageid": 33381813,
  "lang": "en",
  "dir": "ltr",
  "description": "Programming language",
  "extract": "Dart is a programming language designed by Lars Bak and Kasper Lund and developed by Google.",
  "extract_html": "<p><b>Dart</b> is a programming language designed by Lars Bak and Kasper Lund and developed by Google.</p>"
}
''';

void main() {
  group('deserialize example JSON responses from wikipedia API', () {
    test(
      'deserialize Dart Programming Language page summary example data from json string into a Summary object',
      () {
        final Map<String, Object?> pageSummaryInput =
            jsonDecode(dartLangSummaryJson) as Map<String, Object?>;
        final Summary summary = Summary.fromJson(pageSummaryInput);
        expect(summary.titles.canonical, 'Dart_(programming_language)');
        expect(summary.pageid, 33381813);
        expect(summary.description, 'Programming language');
      },
    );

    test(
      'deserialize Cat article example data from json file into a Summary object',
      () async {
        final String articleJson = await File(
          './test/test_data/cat_summary.json',
        ).readAsString();
        final Map<String, Object?> articleMap =
            jsonDecode(articleJson) as Map<String, Object?>;
        final Summary summary = Summary.fromJson(articleMap);
        expect(summary.titles.canonical, 'Cat');
        expect(summary.pageid, 6678);
      },
    );

    test(
      'deserialize Cat article extract example data from json file into an Article object',
      () async {
        final String articleJson = await File(
          './test/test_data/cat_extract.json',
        ).readAsString();
        final Map<String, Object?> articleMap =
            jsonDecode(articleJson) as Map<String, Object?>;
        final List<Article> articles = Article.listFromJson(articleMap);
        expect(articles.first.title, 'Cat');
      },
    );

    test('throws FormatException on invalid Summary JSON', () {
      expect(
        () => Summary.fromJson({'invalid': 'data'}),
        throwsFormatException,
      );
    });
  });
}
