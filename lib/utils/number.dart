extension Range on num {
  bool isBetween(num from, num to, {bool include = false}) {
    if (include) {
      return from <= this && this <= to;
    }
    return from < this && this < to;
  }
}
