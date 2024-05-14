class AccountModel {
  final String username;
  final String name;
  final String email;
  final String password;

  AccountModel({
    required this.username,
    required this.name,
    required this.email,
    required this.password,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
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

