class Users {
  final String name;
  final String clockin;

  const Users({required this.name, required this.clockin});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(name: json['name'], clockin: json['sign_in_time']);
  }
}
