class Vehicle {
  String plate;
  double weight;
  String driverName;
  String driverPhone;

  Vehicle({
    required this.plate,
    required this.weight,
    required this.driverName,
    required this.driverPhone,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        plate: json["plate"],
        weight: json["weight"].toDouble(),
        driverName: json["driverName"],
        driverPhone: json["driverPhone"],
      );

  Map<String, dynamic> get toJson => {
        "plate": plate,
        "weight": weight,
        "driverName": driverName,
        "driverPhone": driverPhone,
      };
}
