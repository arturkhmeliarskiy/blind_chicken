extension IterableUtils<I> on Iterable<I> {
  I? find(bool Function(I element) test) {
    for (I element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  I? found(Iterable<I> items, bool Function(I element) test) {
    for (I element in items) {
      if (test(element)) return element;
    }
    return null;
  }
}
