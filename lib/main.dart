import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/bloc/layout_bloc/layout_bloc.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/resources/theme/theme_manager.dart';

import 'bloc/my_bloc_observer.dart';
import 'presentation/resources/routes_manger.dart';

void main() => BlocOverrides.runZoned(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        print("main run");

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
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LayoutBloc(),
        child: ScreenUtilInit(
          designSize: const Size(1440, 1024),
          builder: (context, _) => MaterialApp(
            title: StringManger.appName,
            theme: lightThemeData,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.mainRoute,
          ),
        ),
      );
}
