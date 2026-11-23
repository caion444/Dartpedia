class TitleSet {
  TitleSet({
    required this.canonical,
    required this.normalized,
    required this.display,
  });

  final String canonical;
  final String normalized;
  final String display;

  static TitleSet fromJson(Map<String, Object?> json) {
    return switch (json) {
      {
        'canonical': final String canonical,
        'normalized': final String normalized,
        'display': final String display,
      } =>
        TitleSet(
          canonical: canonical,
          normalized: normalized,
          display: display,
        ),
      _ => throw FormatException('Formato inválido para TitleSet: $json'),
    };
  }
}
