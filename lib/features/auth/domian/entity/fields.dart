enum Fields {
  username(name: 'username'),
  password(name: 'password'),
  fullname(name: 'fullname');

  final String name;

  const Fields({
    required this.name,
  });
}
