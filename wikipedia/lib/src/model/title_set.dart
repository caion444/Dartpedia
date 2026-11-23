class TitleSet {
  TitleSet({
    required this.canonical,
    required this.normalized,
    required this.display,
  });

  String canonical;
  String normalized;
  String display;

  factory TitleSet.fromJson(Map<String, Object?> json) {
    if (json
        case {
          'canonical': final String canonical,
          'normalized': final String normalized,
          'display': final String display,
        }) {
      return TitleSet(
        canonical: canonical,
        normalized: normalized,
        display: display,
      );
    }
    throw FormatException('Could not deserialize TitleSet, json=$json');
  }

  @override
  String toString() =>
      'TitleSet[canonical=$canonical, normalized=$normalized, display=$display]';
}
