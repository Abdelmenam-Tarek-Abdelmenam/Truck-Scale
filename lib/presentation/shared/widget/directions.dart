import 'package:desktop/desktop.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';

class PaddingDirection extends EdgeInsets {
  PaddingDirection.direction(
      {double start = 0, double end = 0, double top = 0, double bottom = 0})
      : super.only(
            right: StringManger.langIndex == 0 ? end : start,
            left: StringManger.langIndex == 0 ? start : end,
            top: top,
            bottom: bottom);
}

class BorderDirection extends BorderRadius {
  BorderDirection.direction(
      {Radius topStart = Radius.zero,
      Radius topEnd = Radius.zero,
      Radius bottomStart = Radius.zero,
      Radius bottomEnd = Radius.zero})
      : super.only(
          topLeft: StringManger.langIndex == 0 ? topStart : topEnd,
          topRight: StringManger.langIndex == 0 ? topEnd : topStart,
          bottomLeft: StringManger.langIndex == 0 ? bottomStart : bottomEnd,
          bottomRight: StringManger.langIndex == 0 ? bottomEnd : bottomStart,
        );
}
