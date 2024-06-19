class Volunteer{
  final String idPhotoFrontPath;
  final String idPhotoBackPath;
  final String selfPhotoPath;

  Volunteer({
    required this.idPhotoFrontPath,
    required this.idPhotoBackPath,
    required this.selfPhotoPath
  });

  factory Volunteer.fromJson(Map<String, dynamic> json) {
    return Volunteer(
      idPhotoFrontPath: json['id_front'],
      idPhotoBackPath: json['id_back'],
      selfPhotoPath: json['self_photo'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id_front': idPhotoFrontPath,
      'id_back': idPhotoBackPath,
      'self_photo': selfPhotoPath,
    };
  }
}