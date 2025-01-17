class CustomTrace {
  const CustomTrace._({
    required this.functionName,
    required this.fileName,
    required this.lineNumber,
    required this.columnNumber,
  });

  factory CustomTrace.from(StackTrace trace) {
    final frames = trace.toString().split('\n');
    final functionName = _getFunctionNameFromFrame(frames[0]);
    final fileInfo = _getFileInfoFromFrame(frames[0]);

    return CustomTrace._(
      functionName: functionName,
      fileName: fileInfo[0],
      lineNumber: 1,
      columnNumber: 1,
    );
  }

  final String functionName;

  final String fileName;
  final int lineNumber;
  final int columnNumber;

  static List<String> _getFileInfoFromFrame(String trace) {
    final indexOfFileName = trace.indexOf(RegExp('[A-Za-z]+.dart'));
    final fileInfo = trace.substring(indexOfFileName);

    return fileInfo.split(':');
  }

  static String _getFunctionNameFromFrame(String trace) {
    final indexOfWhiteSpace = trace.indexOf(' ');
    final subStr = trace.substring(indexOfWhiteSpace);
    final indexOfFunction = subStr.indexOf(RegExp('[A-Za-z0-9]'));

    return subStr.substring(indexOfFunction).substring(0, subStr.substring(indexOfFunction).indexOf(' '));
  }

  @override
  String toString() {
    return 'CustomTrace('
        'functionName: $functionName, '
        'fileName: $fileName, '
        'lineNumber: $lineNumber, '
        'columnNumber: $columnNumber)';
  }
}
