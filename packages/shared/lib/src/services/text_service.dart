class TextService {
  String _trimTextTheEnd(
    String value,
    int start,
    int end,
  ) {
    String result = '';
    result = value.substring(start, end);
    return result;
  }
}
