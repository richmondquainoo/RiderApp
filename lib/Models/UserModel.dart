class UserModel {
  int id;
  String name;
  String email;
  String password;
  String phone;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone
  });

  Map <String, dynamic> toMap(){
    return{
      'id':id,
      'name':name,
      'email':email,
      'password':password,
      'phone':phone,
    };
  }

  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email, password: $password, phone: $phone}';
  }
}
