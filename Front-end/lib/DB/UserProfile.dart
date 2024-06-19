class UserProfile {
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? dateOfBirth;
  final String? phoneNumber;
  final String? profileImage;

  UserProfile({
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.phoneNumber,
    this.profileImage,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      firstName: json['Fname'],
      lastName: json['Lname'],
      gender: json['gender'],
      dateOfBirth: json['dateofbirth'],
      phoneNumber: json['phone_number'],
      profileImage: json['profile_image'],
    );
  }
}
