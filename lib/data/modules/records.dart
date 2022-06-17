import 'package:truck_scale/presentation/resources/asstes_manager.dart';

class Record {
  String id;
  double weight;
  String carPlate;
  String materialName;
  TruckType type;
  String date;

  Record(
      {required this.id,
      required this.weight,
      required this.carPlate,
      required this.materialName,
      required this.type,
      required this.date});

  factory Record.fromJson(Map<String, dynamic> json) => Record(
        id: json["id"],
        weight: json["weight"].toDouble(),
        carPlate: json["carPlate"],
        materialName: json["materialName"],
        type: TruckType.values[json["type"]],
        date: json["date"],
      );

  Map<String, dynamic> get toJson => {
        "id": id,
        "weight": weight,
        "carPlate": carPlate,
        "materialName": materialName,
        "type": type.index,
        "date": date,
      };
}

enum TruckType { empty, full }

extension IconName on TruckType {
  String get icon {
    switch (this) {
      case TruckType.empty:
        return IconsManager.emptyTruck;
      case TruckType.full:
        return IconsManager.fullTruck;
    }
  }
}
