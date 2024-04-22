class Users {
  final String Fname;
  final String Lname;
  final String gender;
  final String email;
  final String dateofbirth;
  final String phone_number;
  final String password;

  Users(
      {required this.Fname,
      required this.Lname,
      required this.gender,
      required this.email,
      required this.dateofbirth,
      required this.phone_number,
      required this.password});

  factory Users.fromJson(jsonData) {
    return Users(
      Fname: jsonData['Fname'],
      Lname: jsonData['Lname'],
      gender: jsonData['gender'],
      email: jsonData['email'],
      dateofbirth: jsonData['dateofbirth'],
      phone_number: jsonData['phone_number'],
      password: jsonData['password'],
    );
  }
}
