class Client {
  String id;
  String name;
  String phone;
  String carPlate;

  Client({
    required this.id,
    required this.name,
    required this.phone,
    required this.carPlate,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        carPlate: json["carPlate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "carPlate": carPlate,
      };
}
