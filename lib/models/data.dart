class User {
  String email;
  String password;
  String nama;

  User({
    required this.email,
    required this.password,
    required this.nama,
  });
}

User user1 = User(
  email: 'admin@gmail.com',
  password: '003',
  nama: 'Admin',
);
