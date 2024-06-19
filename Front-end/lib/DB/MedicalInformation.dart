class MedicalInformation{
  final int id;
  final int userId;
  final String allergies;
  final String chronicDisease;
  final String bloodType;
  final String medications;

  MedicalInformation({
    required this.id,
    required this.userId,
    required this.allergies,
    required this.chronicDisease,
    required this.bloodType,
    required this.medications,
  });

  factory MedicalInformation.fromJson(jsonData){
    return MedicalInformation(
        id: jsonData['id'],
        userId: jsonData['user_id'],
        allergies: jsonData['allergies'],
        chronicDisease: jsonData['chronic_disease'],
        bloodType: jsonData['blood_type'],
        medications: jsonData['medications'],
    );
  }
}