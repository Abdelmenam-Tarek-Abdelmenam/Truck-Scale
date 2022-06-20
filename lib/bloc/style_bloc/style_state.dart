part of 'style_bloc.dart';

class StyleBlocState extends Equatable {
  final ThemeMode themeMode;
  final LanguageMode languageMode;

  const StyleBlocState({
    required this.themeMode,
    required this.languageMode,
  });

  factory StyleBlocState.initial() {
    int themeIndex =
        PreferenceRepository.getData(key: PreferenceKey.themeMode) ?? 0;
    int languageIndex =
        PreferenceRepository.getData(key: PreferenceKey.languageMode) ?? 0;
    return StyleBlocState(
      themeMode: ThemeMode.values[themeIndex],
      languageMode: LanguageMode.values[languageIndex],
    );
  }

  StyleBlocState copyWith({
    ThemeMode? newTheme,
    LanguageMode? newLanguage,
  }) {
    if (newTheme != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.themeMode,
        value: newTheme.index,
      );
    } else if (newLanguage != null) {
      PreferenceRepository.putData(
        key: PreferenceKey.languageMode,
        value: newLanguage.index,
      );
    }
    return StyleBlocState(
      themeMode: newTheme ?? themeMode,
      languageMode: newLanguage ?? languageMode,
    );
  }

  @override
  List<Object?> get props => [themeMode.index, languageMode.index];
}
