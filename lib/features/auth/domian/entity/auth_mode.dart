enum AuthMode {
  signUp(name: 'Sign Up'),
  signIn(name: 'Sign In');

  final String name;

  const AuthMode({
    required this.name,
  });
}
