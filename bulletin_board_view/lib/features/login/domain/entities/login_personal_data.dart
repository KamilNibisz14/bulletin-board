class LoginPersonalData{
  String username;
  String password;
  LoginPersonalData({
    required this.password,
    required this.username
  });
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}