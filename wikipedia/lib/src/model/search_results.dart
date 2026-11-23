class SearchResult {
  SearchResult({
    required this.title,
    required this.url,
  });

  final String title;
  final String url;
}

class SearchResults {
  SearchResults(this.results, {this.searchTerm});

  final List<SearchResult> results;
  final String? searchTerm;

  static SearchResults fromJson(List<Object?> json) {
    final List<SearchResult> results = <SearchResult>[];
    if (json case [
      final String searchTerm,
      final Iterable<Object?> articleTitles,
      Iterable<Object?> _,
      final Iterable<Object?> articleUrls,
    ]) {
      final List<String> titlesList = articleTitles.whereType<String>().toList();
      final List<String> urlsList = articleUrls.whereType<String>().toList();

      for (int i = 0; i < titlesList.length && i < urlsList.length; i++) {
        results.add(SearchResult(title: titlesList[i], url: urlsList[i]));
      }
      return SearchResults(results, searchTerm: searchTerm);
    }
    throw FormatException('Formato inválido para SearchResults: $json');
  }

  @override
  String toString() {
    final StringBuffer pretty = StringBuffer();
    for (final SearchResult result in results) {
      pretty.writeln('${result.title} - ${result.url}');
    }
    return pretty.toString();
  }
}
