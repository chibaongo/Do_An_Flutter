class Usera {
  String id;
  //final String name;
  final String phone;
  final String email;
  final String name;

  //final String picture;

  Usera({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,

    // required this.picture,
  });
 
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,

      //'picture': picture,
    };
  }
  
}
