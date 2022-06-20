import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';

import '../../../resources/styles_manager.dart';
import '../../../shared/widget/directions.dart';
import '../../../shared/widget/dividers.dart';
import '../../../shared/widget/numeric_field.dart';

class PrintsSector extends StatelessWidget {
  const PrintsSector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManger.printsSector,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        Dividers.h5,
        firstBox(context),
        Dividers.h10,
        secondBox(context),
        Dividers.h10,
        thirdBox(context),
      ],
    );
  }

  Widget firstBox(BuildContext context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: StyleManager.smallShadow,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              clickableText(context, StringManger.allRecords, () {}),
              SizedBox(height: 45.h, child: Dividers.verticalLine),
              clickableText(context, StringManger.allVehicles, () {}),
            ]),
            Dividers.horizontalLine,
            Row(children: [
              clickableText(context, StringManger.allMaterials, () {}),
              SizedBox(height: 45.h, child: Dividers.verticalLine),
              clickableText(context, StringManger.allClients, () {}),
            ]),
          ],
        ),
      );

  Widget secondBox(BuildContext context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: StyleManager.smallShadow,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              clickableText(context, StringManger.filterRecords, () {}),
              SizedBox(height: 45.h, child: Dividers.verticalLine),
              clickableText(context, StringManger.filterVehicles, () {}),
            ]),
            Dividers.horizontalLine,
            Row(children: [
              clickableText(context, StringManger.filterMaterials, () {}),
              SizedBox(height: 45.h, child: Dividers.verticalLine),
              clickableText(context, StringManger.filterClients, () {}),
            ]),
          ],
        ),
      );

  Widget thirdBox(BuildContext context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: StyleManager.smallShadow,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              rowFiled(context, StringManger.highRecords, () {}),
              SizedBox(height: 50.h, child: Dividers.verticalLine),
              rowFiled(context, StringManger.lowRecords, () {}),
            ]),
            Dividers.horizontalLine,
            Row(children: [
              rowFiled(context, StringManger.highMaterials, () {}),
              SizedBox(height: 50.h, child: Dividers.verticalLine),
              rowFiled(context, StringManger.lowMaterial, () {}),
            ]),
            Dividers.horizontalLine,
            Row(children: [
              rowFiled(context, StringManger.highVehicles, () {}),
              SizedBox(height: 50.h, child: Dividers.verticalLine),
              rowFiled(context, StringManger.lowVehicles, () {}),
            ]),
            Dividers.horizontalLine,
            Row(children: [
              rowFiled(context, StringManger.highClients, () {}),
              SizedBox(height: 50.h, child: Dividers.verticalLine),
              rowFiled(context, StringManger.lowClients, () {}),
            ]),
          ],
        ),
      );

  Widget rowFiled(BuildContext context, String text, VoidCallback onPressed) =>
      Expanded(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        clickableText(context, text, onPressed),
        Padding(
          padding: PaddingDirection.direction(end: 8.0),
          child: SizedBox(
            width: 150,
            child: NumericField(
              TextEditingController(text: '0'),
              title: StringManger.empty,
            ),
          ),
        )
      ]));

  Widget clickableText(
          BuildContext context, String text, VoidCallback onPressed) =>
      Expanded(
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: PaddingManager.p8,
            child: Text(text,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontSize: 16.sp)),
          ),
        ),
      );
}
