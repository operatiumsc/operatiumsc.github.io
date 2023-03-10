class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.role,
    this.token,
  });

  String? id;
  String? firstname;
  String? lastname;
  String? role;
  String? token;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        role: json["role"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "role": role,
        "token": token,
      };
}