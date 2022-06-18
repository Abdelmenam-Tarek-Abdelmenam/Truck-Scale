import '../data_sources/data_base/db_repository.dart';

class MaterialModel {
  int id;
  String name;
  double price;

  MaterialModel({
    required this.id,
    required this.name,
    required this.price,
  });

  factory MaterialModel.fromJson(Map<String, dynamic> json) => MaterialModel(
        id: json[MaterialTable.id],
        name: json[MaterialTable.name],
        price: json[MaterialTable.price].toDouble(),
      );

  Map<String, dynamic> get toJson => {
        MaterialTable.id: id,
        MaterialTable.name: name,
        MaterialTable.price: price,
      };
}
