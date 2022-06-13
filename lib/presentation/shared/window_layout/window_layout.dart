import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/shared/window_layout/widgets/windows_buttons.dart';

class WindowsLayout extends StatelessWidget {
  final Widget? appBar;
  final Widget child;

  const WindowsLayout({required this.child, this.appBar, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.black,
        width: 1,
        child: Expanded(
          child: Column(children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                      child: MoveWindow(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: appBar,
                    ),
                  )),
                  const WindowButtons()
                ],
              ),
            ),
            child
          ]),
        ),
      ),
    );
  }
}
