part of 'style_bloc.dart';

abstract class StyleEvent extends Equatable {
  const StyleEvent();
}

class ChangeThemeEvent extends StyleEvent {
  final ThemeMode themeMode;

  const ChangeThemeEvent(this.themeMode);

  @override
  List<Object> get props => [themeMode.index];
}

class ChangeLanguageEvent extends StyleEvent {
  final LanguageMode languageMode;

  const ChangeLanguageEvent(this.languageMode);

  @override
  List<Object> get props => [languageMode.index];
}
