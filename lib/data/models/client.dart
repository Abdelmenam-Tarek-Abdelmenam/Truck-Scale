import '../data_sources/data_base/db_repository.dart';

class Client {
  int id;
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
        id: json[ClientsTable.id],
        name: json[ClientsTable.name],
        phone: json[ClientsTable.phone],
        carPlate: json[ClientsTable.carPlate],
      );

  Map<String, dynamic> get toJson => {
        ClientsTable.id: id,
        ClientsTable.name: name,
        ClientsTable.phone: phone,
        ClientsTable.carPlate: carPlate,
      };
}
