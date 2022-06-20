part of 'constants_bloc.dart';

class ConstantsState extends Equatable {
  final String weightUnit;
  final String moneyUnit;
  final String placeName;
  final String placePhone;
  final String placeAddress;

  const ConstantsState({
    required this.weightUnit,
    required this.moneyUnit,
    required this.placeName,
    required this.placePhone,
    required this.placeAddress,
  });

  factory ConstantsState.initial() {
    return ConstantsState(
      weightUnit:
          PreferenceRepository.getData(key: PreferenceKey.weightUnit) ?? "Kg",
      moneyUnit:
          PreferenceRepository.getData(key: PreferenceKey.moneyUnit) ?? "EGP",
      placeName:
          PreferenceRepository.getData(key: PreferenceKey.placeName) ?? "",
      placePhone:
          PreferenceRepository.getData(key: PreferenceKey.placePhone) ?? "",
      placeAddress:
          PreferenceRepository.getData(key: PreferenceKey.placeAddress) ?? "",
    );
  }

  ConstantsState copyWith(
      {String? weightUnit,
      String? moneyUnit,
      String? placeName,
      String? placePhone,
      String? placeAddress}) {
    if (weightUnit != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.weightUnit,
        value: weightUnit,
      );
    } else if (moneyUnit != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.moneyUnit,
        value: moneyUnit,
      );
    } else if (placeName != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.placeName,
        value: placeName,
      );
    } else if (placePhone != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.placePhone,
        value: placePhone,
      );
    } else if (placeAddress != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.placeAddress,
        value: placeAddress,
      );
    }
    return ConstantsState(
      weightUnit: weightUnit ?? this.weightUnit,
      moneyUnit: moneyUnit ?? this.moneyUnit,
      placeName: placeName ?? this.placeName,
      placePhone: placePhone ?? this.placePhone,
      placeAddress: placeAddress ?? this.placeAddress,
    );
  }

  @override
  List<Object?> get props =>
      [weightUnit, moneyUnit, placeName, placePhone, placeAddress];
}
