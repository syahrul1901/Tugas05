class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Syahrul Yanuar",
      username: "Syahrul",
      email: "syahrulyanuar019@gmail.com",
      profilePhoto: "https://cdn.medcom.id/dynamic/content/2019/05/10/1019864/yRws8pSTo6.jpg?w=480",
      phoneNumber: "0895700990711",
    );
  }
}
