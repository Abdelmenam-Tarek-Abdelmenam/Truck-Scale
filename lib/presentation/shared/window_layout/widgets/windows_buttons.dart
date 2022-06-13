import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/theme_manager.dart';

class WindowButtons extends StatefulWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  State<WindowButtons> createState() => _WindowButtonsState();
}

class _WindowButtonsState extends State<WindowButtons> {
  final buttonColors = WindowButtonColors(
      iconNormal: ColorManager.brown,
      mouseOver: ColorManager.mainYellow,
      mouseDown: ColorManager.brown,
      iconMouseOver: ColorManager.brown,
      iconMouseDown: ColorManager.lightYellow);

  final closeButtonColors = WindowButtonColors(
      mouseOver: ColorManager.lightRed,
      mouseDown: ColorManager.red,
      iconNormal: ColorManager.brown,
      iconMouseOver: ColorManager.whiteColor);

  void maximizeOrRestore() {
    setState(() {
      appWindow.maximizeOrRestore();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        appWindow.isMaximized
            ? RestoreWindowButton(
                colors: buttonColors,
                onPressed: maximizeOrRestore,
              )
            : MaximizeWindowButton(
                colors: buttonColors,
                onPressed: maximizeOrRestore,
              ),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
