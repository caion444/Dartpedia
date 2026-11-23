import 'dart:convert';
import 'package:test/test.dart';
import 'package:wikipedia/wikipedia.dart';

void main() {
  group('Testes de deserialização JSON (Pattern Matching)', () {
    test('Converte JSON de Summary em objeto Summary', () {
      const String rawJson = '''
      {
        "titles": {
          "canonical": "Dart_(programming_language)",
          "normalized": "Dart (programming language)",
          "display": "Dart (programming language)"
        },
        "pageid": 33384112,
        "extract": "Dart is a programming language designed by Lars Bak and Kasper Lund.",
        "extract_html": "<p>Dart is a programming language.</p>",
        "lang": "en",
        "dir": "ltr",
        "description": "Programming language",
        "content_urls": {
          "desktop": {
            "page": "https://en.wikipedia.org/wiki/Dart_(programming_language)"
          }
        }
      }
      ''';

      final Map<String, Object?> decoded =
          jsonDecode(rawJson) as Map<String, Object?>;
      final Summary summary = Summary.fromJson(decoded);

      expect(summary.titles.display, 'Dart (programming language)');
      expect(summary.pageid, 33384112);
      expect(summary.description, 'Programming language');
      expect(
        summary.url,
        'https://en.wikipedia.org/wiki/Dart_(programming_language)',
      );
    });

    test('Converte JSON de OpenSearch em objeto SearchResults', () {
      const String rawSearchJson = '''
      [
        "Dart",
        ["Dart", "Dartmouth College"],
        ["", ""],
        ["https://en.wikipedia.org/wiki/Dart", "https://en.wikipedia.org/wiki/Dartmouth_College"]
      ]
      ''';

      final List<Object?> decoded = jsonDecode(rawSearchJson) as List<Object?>;
      final SearchResults searchResults = SearchResults.fromJson(decoded);

      expect(searchResults.searchTerm, 'Dart');
      expect(searchResults.results.length, 2);
      expect(searchResults.results.first.title, 'Dart');
    });
  });
}
