import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:truck_scale/data/data_sources/pref_repository.dart';
import 'package:truck_scale/bloc/style_bloc/style_enums.dart';

part 'style_event.dart';
part 'style_state.dart';

class StyleBloc extends Bloc<StyleEvent, StyleBlocState> {
  StyleBloc() : super(StyleBlocState.initial()) {
    on<ChangeThemeEvent>(changeThemeHandler);
    on<ChangeLanguageEvent>(changeLanguageHandler);
  }

  int get themeIndex => state.themeMode.index;
  int get languageIndex => state.languageMode.index;

  void changeThemeHandler(ChangeThemeEvent event, Emitter emit) {
    emit(state.copyWith(newTheme: event.themeMode));
  }

  void changeLanguageHandler(ChangeLanguageEvent event, Emitter emit) {
    emit(state.copyWith(newLanguage: event.languageMode));
  }
}
