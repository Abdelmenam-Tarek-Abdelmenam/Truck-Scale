import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:truck_scale/bloc/layout_bloc/layout_bloc.dart';

import '../shared/window_layout/window_layout.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowsLayout(
      child: BlocBuilder<LayoutBloc, ActiveLayout>(
        builder: (context, state) {
          return state.getWidget;
        },
      ),
    );
  }
}
