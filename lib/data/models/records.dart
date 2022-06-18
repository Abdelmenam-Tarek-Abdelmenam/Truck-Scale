import 'package:truck_scale/presentation/resources/asstes_manager.dart';

import '../data_sources/data_base/db_repository.dart';

class Record {
  String id;
  double weight;
  String carPlate;
  String materialName;
  String clientName;
  TruckType type;
  String date;

  Record(
      {required this.id,
      required this.weight,
      required this.carPlate,
      required this.materialName,
      required this.type,
      required this.clientName,
      required this.date});

  factory Record.fromJson(Map<String, dynamic> json) => Record(
        id: json[RecordsTable.id],
        weight: json[RecordsTable.weight].toDouble(),
        carPlate: json[RecordsTable.carPlate],
        materialName: json[RecordsTable.materialName],
        clientName: json[RecordsTable.clientName],
        type: TruckType.values[json[RecordsTable.type]],
        date: json[RecordsTable.date],
      );

  Map<String, dynamic> get toJson => {
        RecordsTable.id: id,
        RecordsTable.weight: weight,
        RecordsTable.carPlate: carPlate,
        RecordsTable.materialName: materialName,
        RecordsTable.clientName: clientName,
        RecordsTable.type: type.index,
        RecordsTable.date: date,
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
