import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../../data/modules/records.dart';
import '../../../resources/styles_manager.dart';

class RecordDesign extends StatelessWidget {
  final Record record;
  RecordDesign(this.record, {Key? key}) : super(key: key);

  final double height = 60.r;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height + 10,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: StyleManager.radius10,
                bottomLeft: StyleManager.radius10,
              ),
              color: Theme.of(context).colorScheme.onBackground,
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ),
            ),
            child: Row(children: [
              Container(
                width: 70.w,
                padding: PaddingManager.p10,
                child: SvgPicture.asset(
                  record.type.icon,
                  height: height,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              defaultText(context: context, text: record.id),
              line(context),
              defaultText(
                  context: context,
                  text: record.carPlate,
                  size: 22.sp,
                  fontWeight: FontWeight.normal),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: record.weight.toInt().toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 30.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: ".00  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20.sp)),
                      TextSpan(
                          text: "Kg",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 18.sp)),
                    ],
                  ),
                ),
              ),
              defaultText(
                  context: context,
                  text: record.materialName,
                  size: 20.sp,
                  fontWeight: FontWeight.normal),
              line(context),
              defaultText(
                  context: context,
                  text: record.date,
                  size: 18.sp,
                  fontWeight: FontWeight.w100),
            ]),
          ),
        ),
        iconBox(context),
      ],
    );
  }

  Widget defaultText(
          {required BuildContext context,
          required String text,
          FontWeight? fontWeight,
          double? size}) =>
      Expanded(
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: fontWeight,
              fontSize: size ?? 24.sp),
        ),
      );

  Widget iconBox(BuildContext context) => Container(
      height: height + 10,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: StyleManager.radius10,
          bottomRight: StyleManager.radius10,
        ),
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
      ),
      child: Row(
        children: [
          myIcon(
              context: context,
              onPressed: () {},
              icon: Icons.remove_red_eye_outlined,
              halfHeight: true),
          line(context),
          myIcon(
              context: context, onPressed: () {}, icon: Icons.print_outlined),
          line(context),
          myIcon(
              context: context,
              onPressed: () {},
              icon: Icons.delete_outline_outlined),
        ],
      ));

  Widget myIcon(
          {required BuildContext context,
          required VoidCallback onPressed,
          bool halfHeight = false,
          required IconData icon}) =>
      MaterialButton(
        height: height + 15,
        minWidth: 0,
        onPressed: onPressed,
        child: Icon(
          icon,
          size: halfHeight ? height / 2 : height,
          color: Theme.of(context).primaryColor,
        ),
      );

  Widget line(BuildContext context) => SizedBox(
        height: height + 10,
        child: Dividers.verticalLine,
      );
}
