part of 'constants_bloc.dart';

abstract class ConstantsEvent extends Equatable {
  final String newValue;

  const ConstantsEvent(this.newValue);

  @override
  List<Object> get props => [newValue];
}

class ChangeWeightUnitEvent extends ConstantsEvent {
  const ChangeWeightUnitEvent(String newValue) : super(newValue);
}

class ChangeMoneyUnitEvent extends ConstantsEvent {
  const ChangeMoneyUnitEvent(String newValue) : super(newValue);
}

class ChangeNameEvent extends ConstantsEvent {
  const ChangeNameEvent(String newValue) : super(newValue);
}

class ChangeAddressEvent extends ConstantsEvent {
  const ChangeAddressEvent(String newValue) : super(newValue);
}

class ChangePhoneEvent extends ConstantsEvent {
  const ChangePhoneEvent(String newValue) : super(newValue);
}
