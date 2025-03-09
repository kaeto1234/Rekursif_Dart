class Kombinasi {
  void generate(String current, int length, String chars) {
    if (current.length == length) {
      print(current);
      return;
    }
    for (int i = 0; i < chars.length; i++) {
      generate(current + chars[i], length, chars);
    }
  }
}
