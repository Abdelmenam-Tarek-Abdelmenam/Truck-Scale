import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/modules/records.dart';

class RecordDesign extends StatelessWidget {
  final Record record;
  RecordDesign(this.record, {Key? key}) : super(key: key);

  final double height = 60.r;

  @override
  Widget build(BuildContext context) {
    print(record.type.icon);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height + 10,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: Theme.of(context).colorScheme.onBackground,
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ),
            ),
            child: Row(children: [
              Container(
                width: 70.w,
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  record.type.icon,
                  height: height,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Expanded(
                child: Text(
                  record.id,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 24.sp),
                ),
              ),
              line(context),
              Expanded(
                child: Text(
                  record.carPlate,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: record.weight.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 30.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: "00  ",
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
              Expanded(
                child: Text(
                  record.materialName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.normal),
                ),
              ),
              line(context),
              Expanded(
                child: Text(
                  record.date,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ]),
          ),
        ),
        iconBox(context),
      ],
    );
  }

  Widget iconBox(BuildContext context) => Container(
      height: height + 10,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
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
        child: VerticalDivider(
          color: Theme.of(context).primaryColor.withOpacity(0.5),
          thickness: 2,
          width: 2,
        ),
      );
}
