class OTPModel {
  String name;
  String email;
  String password;
  String phone;
  int pin;

  OTPModel({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.pin
  });

  Map<String, dynamic> toMap(){
    return{
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'pin': pin,
    };
  }

  Map<String, dynamic> toJson(){
    return{
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'pin': pin,
    };
  }

  @override
  String toString() {
    return 'OTPModel{name: $name, email: $email, password: $password, phone: $phone, pin: $pin}';
  }
}
