import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/shared/window_layout/widgets/windows_buttons.dart';

import 'widgets/side_drawer.dart';

class WindowsLayout extends StatelessWidget {
  final Widget child;

  const WindowsLayout({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Theme.of(context).primaryColor,
        width: 1,
        child: Row(
          children: [
            SizedBox(
                width: 200,
                child: Container(
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: const [Expanded(child: SideDrawer())],
                    ))),
            Expanded(
              child: Column(children: [
                WindowTitleBarBox(
                  child: Row(
                    children: [
                      Expanded(
                          child: MoveWindow(
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                        ),
                      )),
                      const WindowButtons()
                    ],
                  ),
                ),
                child
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
