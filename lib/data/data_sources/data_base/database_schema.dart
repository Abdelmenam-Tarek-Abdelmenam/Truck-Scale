part of "db_repository.dart";

class ClientsTable {
  static const String tableName = 'clients';

  static const String id = 'id';
  static const String name = 'name';
  static const String phone = 'phone';
  static const String carPlate = 'carPlate';
}

class MaterialTable {
  static const String tableName = 'materials';
  static const String id = 'id';
  static const String name = 'name';
  static const String price = 'price';
}

class RecordsTable {
  static const String tableName = 'records';
  static const String id = 'id';
  static const String weight = 'weight';
  static const String carPlate = 'carPlate';
  static const String materialName = 'materialName';
  static const String clientName = 'clientName';
  static const String type = 'type';
  static const String date = 'date';
}

class VehiclesTable {
  static const String tableName = 'vehicles';
  static const String name = 'name';
  static const String phone = 'phone';
  static const String plate = 'plate';
  static const String weight = 'weight';
  static const String model = 'model';
}

class _TablesSchema {
  static const String _clients =
      '''CREATE TABLE  IF NOT EXISTS "${ClientsTable.tableName}" (
        "${ClientsTable.id}" INTEGER ,
        "${ClientsTable.name}" TEXT ,
        "${ClientsTable.phone}" TEXT ,
        "${ClientsTable.carPlate}" TEXT
PRIMARY KEY("id" AUTOINCREMENT)
);''';

  static const String materials =
      '''CREATE TABLE  IF NOT EXISTS "${MaterialTable.tableName}" (
        "${MaterialTable.id}" INTEGER ,
        "${MaterialTable.name}" TEXT ,
        "${MaterialTable.price}" NUMERIC
	PRIMARY KEY("id" AUTOINCREMENT)
);''';

  static const String records =
      '''CREATE TABLE  IF NOT EXISTS  "${RecordsTable.tableName}" (
        "${RecordsTable.id}" INTEGER ,
        "${RecordsTable.weight}" NUMERIC ,
        "${RecordsTable.carPlate}" TEXT ,
        "${RecordsTable.materialName}" TEXT ,
	PRIMARY KEY("id" AUTOINCREMENT)
);''';

  static const String _vehicle =
      '''CREATE TABLE  IF NOT EXISTS  "${VehiclesTable.tableName}" (
        "${VehiclesTable.name}" TEXT ,
        "${VehiclesTable.plate}" TEXT ,
        "${VehiclesTable.phone}" TEXT ,
        "${VehiclesTable.weight}" NUMERIC ,
        "${VehiclesTable.model}" TEXT ,
	PRIMARY KEY("id" AUTOINCREMENT)
);''';

  static List<String> get allSchemas =>
      [_clients, materials, records, _vehicle];
  static List<String> get allNames => [
        ClientsTable.tableName,
        MaterialTable.tableName,
        RecordsTable.tableName,
        VehiclesTable.tableName
      ];
}
