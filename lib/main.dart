import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/bloc/layout_bloc/layout_bloc.dart';
import 'package:truck_scale/bloc/style_bloc/style_enums.dart';
import 'package:truck_scale/data/data_sources/pref_repository.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/resources/theme/theme_manager.dart';

import 'bloc/contsants_bloc/constants_bloc.dart';
import 'bloc/my_bloc_observer.dart';
import 'bloc/style_bloc/style_bloc.dart';
import 'presentation/resources/routes_manger.dart';

void main() => BlocOverrides.runZoned(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await PreferenceRepository.init();
        runApp(const MyApp());
        doWhenWindowReady(() {
          appWindow.minSize = const Size(720, 720);
          appWindow.size = const Size(1024, 720);
          appWindow.alignment = Alignment.center;
          appWindow.show();
        });
      },
      blocObserver: MyBlocObserver(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LayoutBloc(),
          ),
          BlocProvider(
            create: (context) => StyleBloc(),
          ),
          BlocProvider(
            create: (context) => ConstantsBloc(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(1440, 1024),
          builder: (context, _) => BlocBuilder<StyleBloc, StyleBlocState>(
            builder: (context, state) {
              StringManger.setLanguage = state.languageMode.index;
              return Directionality(
                textDirection: state.languageMode.textDirection,
                child: MaterialApp(
                  locale: state.languageMode.locale,
                  supportedLocales: LanguageMode.values.map((e) => e.locale),
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  title: StringManger.appName,
                  theme: lightThemeData,
                  darkTheme: darkThemeData,
                  debugShowCheckedModeBanner: false,
                  themeMode: state.themeMode,
                  onGenerateRoute: RouteGenerator.getRoute,
                  initialRoute: Routes.mainRoute,
                ),
              );
            },
          ),
        ),
      );
}
