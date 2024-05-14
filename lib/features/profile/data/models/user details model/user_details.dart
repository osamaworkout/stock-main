class UserDetailsModel {
  final String username;
  final String name;
  final String email;
  final String password;

  UserDetailsModel({
    required this.username,
    required this.name,
    required this.email,
    required this.password,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      username: json['username'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'name': name,
      'email': email,
      'password': password,
    };
  }
}

