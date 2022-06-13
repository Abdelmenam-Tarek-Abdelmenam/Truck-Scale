import 'package:flutter/material.dart';

import '../../shared/window_layout/window_layout.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WindowsLayout(
      appBar: Text('Main View'),
      child: Center(
        child: Text('Main View'),
      ),
    );
  }
}
