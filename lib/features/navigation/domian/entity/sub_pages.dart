enum SubPages {
  home(),
  messages(),
  notifications(),
  my_profile();

  int get length => SubPages.values.length;

  static const defaultPage = SubPages.my_profile;
}
