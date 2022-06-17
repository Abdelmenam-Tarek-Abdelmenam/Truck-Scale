import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/view/clients_view/client_view.dart';
import 'package:truck_scale/presentation/view/home_view/home_view.dart';
import 'package:truck_scale/presentation/view/records_view/records_view.dart';
import 'package:truck_scale/presentation/view/reports_veiw/reports_view.dart';
import 'package:truck_scale/presentation/view/setting_view/setting_view.dart';
import 'package:truck_scale/presentation/view/vehicles_view/vehicles_view.dart';

import '../../presentation/resources/string_manager.dart';
import '../../presentation/view/material_view/materials_view.dart';

part 'layout_event.dart';
part 'layout_state.dart';

class LayoutBloc extends Bloc<LayoutBlocEvent, ActiveLayout> {
  LayoutBloc() : super(ActiveLayout.home) {
    on<ChangeActiveLayout>(_changeActiveLayoutHandler);
  }
  _changeActiveLayoutHandler(ChangeActiveLayout event, Emitter emit) {
    emit(event.active);
  }
}
