import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';

class PartText extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const PartText(this.text1, this.text2, this.text3, this.text4, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.p15,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text1,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: RichText(
              text: TextSpan(
                text: text2,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontSize: 30.sp),
                children: <TextSpan>[
                  TextSpan(
                      text: "$text3  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20.sp)),
                  TextSpan(
                      text: text4,
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 18.sp)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
