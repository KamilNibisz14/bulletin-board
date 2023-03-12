class RegisterPersonalData{
  String username;
  String password;
  String repeatPassword;
  String phone;
  String country;
  String city;
  RegisterPersonalData({
    required this.city,
    required this.country,
    required this.password,
    required this.phone,
    required this.repeatPassword,
    required this.username
  });
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'phone': phone,
      'country': country,
      'city': city,
    };
  }
}