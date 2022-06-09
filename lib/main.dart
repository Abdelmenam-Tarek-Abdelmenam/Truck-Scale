import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/resources/theme_manager.dart';

import 'bloc/my_bloc_observer.dart';
import 'presentation/resources/routes_manger.dart';

void main() => BlocOverrides.runZoned(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        runApp(const MyApp());
      },
      blocObserver: MyBlocObserver(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: StringManger.appName,
        theme: lightThemeData,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.mainRoute,
      );
}