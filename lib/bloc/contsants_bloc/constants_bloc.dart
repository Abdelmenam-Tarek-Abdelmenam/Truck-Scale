import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/data_sources/pref_repository.dart';

part 'constants_event.dart';
part 'constants_state.dart';

class ConstantsBloc extends Bloc<ConstantsEvent, ConstantsState> {
  ConstantsBloc() : super(ConstantsState.initial()) {
    on<ChangeWeightUnitEvent>(_changeWeightHandler);
    on<ChangeMoneyUnitEvent>(_changeMoneyHandler);
    on<ChangeNameEvent>(_changeNameHandler);
    on<ChangeAddressEvent>(_changeAddressHandler);
    on<ChangePhoneEvent>(_changePhoneHandler);
  }
  void _changeWeightHandler(ChangeWeightUnitEvent event, Emitter emit) =>
      emit(state.copyWith(weightUnit: event.newValue));
  void _changeMoneyHandler(ChangeMoneyUnitEvent event, Emitter emit) =>
      emit(state.copyWith(moneyUnit: event.newValue));
  void _changeNameHandler(ChangeNameEvent event, Emitter emit) =>
      emit(state.copyWith(placeName: event.newValue));
  void _changeAddressHandler(ChangeAddressEvent event, Emitter emit) =>
      emit(state.copyWith(placeAddress: event.newValue));
  void _changePhoneHandler(ChangePhoneEvent event, Emitter emit) =>
      emit(state.copyWith(placePhone: event.newValue));
}
