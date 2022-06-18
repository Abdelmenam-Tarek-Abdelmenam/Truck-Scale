import '../data_sources/data_base/db_repository.dart';

class Vehicle {
  String plate;
  double weight;
  String driverName;
  String driverPhone;
  String model;

  Vehicle({
    required this.plate,
    required this.weight,
    required this.driverName,
    required this.driverPhone,
    required this.model,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        plate: json[VehiclesTable.plate],
        weight: json[VehiclesTable.weight].toDouble(),
        driverName: json[VehiclesTable.name],
        driverPhone: json[VehiclesTable.phone],
        model: json[VehiclesTable.model],
      );
  Map<String, dynamic> get toJson => {
        VehiclesTable.plate: plate,
        VehiclesTable.weight: weight,
        VehiclesTable.name: driverName,
        VehiclesTable.phone: driverPhone,
        VehiclesTable.model: model,
      };
}
