class ArgumentException extends FormatException {
  final String? command;
  final String? argumentName;

  ArgumentException(
    super.message, [
    this.command,
    this.argumentName,
    super.source,
    super.offset,
  ]);

  @override
  String toString() {
    var msg = 'ArgumentException: $message';
    if (command != null) msg += ' (command: $command)';
    if (argumentName != null) msg += ' (argument: $argumentName)';
    return msg;
  }
}
