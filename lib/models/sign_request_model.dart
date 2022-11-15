class SignupRequestModel {
  SignupRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });
  late final String name;
  late final String email;
  late final String phone;
  late final String password;

  SignupRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['password'] = password;
    return _data;
  }
}
