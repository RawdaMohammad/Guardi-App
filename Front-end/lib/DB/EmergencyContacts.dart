class EmergencyContacts{
  final String fullName;
  final String phoneNumber;
  final String relationshipStatus;

  EmergencyContacts({
    required this.fullName,
    required this.phoneNumber,
    required this.relationshipStatus,
  });

  factory EmergencyContacts.fromJson(jsonData){
    return EmergencyContacts(
      fullName: jsonData['full_name'],
      phoneNumber: jsonData['phone_number'],
      relationshipStatus: jsonData['relationship_status'],
    );
  }
}