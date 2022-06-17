import 'package:flutter/material.dart';

class Dividers {
  static const h5 = SizedBox(
    height: 5,
  );
  static const h10 = SizedBox(
    height: 10,
  );
  static const h15 = SizedBox(
    height: 15,
  );
  static const h20 = SizedBox(
    height: 20,
  );

  static const w5 = SizedBox(
    width: 5,
  );
  static const w10 = SizedBox(
    width: 10,
  );

  static const horizontalLine = Divider(
    thickness: 1,
    height: 0,
  );
  static const verticalLine = VerticalDivider(
    thickness: 2,
    width: 2,
  );
}
