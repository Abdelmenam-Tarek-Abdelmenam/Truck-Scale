import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../../data/models/records.dart';
import '../../../resources/string_manager.dart';
import '../../../resources/styles_manager.dart';
import '../../../shared/widget/directions.dart';

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
              borderRadius: BorderDirection.direction(
                topStart: StyleManager.radius10,
                bottomStart: StyleManager.radius10,
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
                child: Tooltip(
                  message: StringManger.type,
                  child: SvgPicture.asset(
                    record.type.icon,
                    height: height,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              defaultText(
                  context: context,
                  message: StringManger.ticketNumber,
                  text: record.id),
              defaultText(
                  message: StringManger.name,
                  context: context,
                  text: record.clientName,
                  size: 18.sp),
              line(context),
              defaultText(
                  context: context,
                  message: StringManger.plateNumber,
                  text: record.carPlate,
                  size: 22.sp,
                  fontWeight: FontWeight.normal),
              Expanded(
                child: Tooltip(
                  message: StringManger.weight,
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
              ),
              defaultText(
                  message: StringManger.material,
                  context: context,
                  text: record.materialName,
                  size: 20.sp,
                  fontWeight: FontWeight.normal),
              line(context),
              Padding(
                padding: PaddingManager.p8,
                child: Tooltip(
                  message: StringManger.date,
                  child: Text(
                    record.date,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
            ]),
          ),
        ),
        iconBox(context),
      ],
    );
  }

  Widget defaultText(
          {required BuildContext context,
          required String message,
          required String text,
          FontWeight? fontWeight,
          double? size}) =>
      Expanded(
        child: Tooltip(
          message: message,
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
        ),
      );

  Widget iconBox(BuildContext context) => Container(
      height: height + 10,
      decoration: BoxDecoration(
        borderRadius: BorderDirection.direction(
          topEnd: StyleManager.radius10,
          bottomEnd: StyleManager.radius10,
        ),
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
      ),
      child: Row(
        children: [
          myIcon(
              message: StringManger.view,
              context: context,
              onPressed: () {},
              icon: Icons.remove_red_eye_outlined,
              halfHeight: true),
          line(context),
          myIcon(
              message: StringManger.print,
              context: context,
              onPressed: () {},
              icon: Icons.print_outlined),
          line(context),
          myIcon(
              message: StringManger.delete,
              context: context,
              onPressed: () {},
              icon: Icons.delete_outline_outlined),
        ],
      ));

  Widget myIcon(
          {required BuildContext context,
          required VoidCallback onPressed,
          required String message,
          bool halfHeight = false,
          required IconData icon}) =>
      Tooltip(
        message: message,
        child: MaterialButton(
          height: height + 15,
          minWidth: 0,
          onPressed: onPressed,
          child: Icon(
            icon,
            size: halfHeight ? height / 2 : height,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );

  Widget line(BuildContext context) => SizedBox(
        height: height + 10,
        child: Dividers.verticalLine,
      );
}
