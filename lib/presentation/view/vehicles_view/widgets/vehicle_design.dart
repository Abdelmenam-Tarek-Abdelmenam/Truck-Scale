import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../../data/models/vehicle.dart';
import '../../../resources/string_manager.dart';

class VehicleDesign extends StatelessWidget {
  const VehicleDesign(this.vehicle, {super.key});

  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Container(
      decoration: BoxDecoration(
          boxShadow: StyleManager.smallShadow,
          borderRadius: StyleManager.border,
          color: Theme.of(context).colorScheme.onBackground),
      padding: PaddingManager.p10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child:
                      text(context, vehicle.plate, StringManger.plateNumber)),
              Dividers.w5,
              Expanded(child: weightText(context)),
            ],
          ),
          Dividers.h10,
          Row(
            children: [
              Expanded(
                  child: text(context, vehicle.driverName,
                      StringManger.driverInformation,
                      thin: true)),
              Dividers.w5,
              Expanded(
                  child: text(context, vehicle.driverPhone,
                      StringManger.driverInformation,
                      thin: true)),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: text(context, vehicle.model, StringManger.truckModel,
                      thin: true)),
              Dividers.w5,
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myIcon(
                    message: StringManger.view,
                    context: context,
                    onPressed: () {},
                    icon: Icons.remove_red_eye_outlined,
                  ),
                  myIcon(
                      message: StringManger.edit,
                      context: context,
                      onPressed: () {},
                      icon: Icons.edit),
                  myIcon(
                      message: StringManger.delete,
                      context: context,
                      onPressed: () {},
                      icon: Icons.delete_outline_outlined),
                ],
              )),
            ],
          )
        ],
      ),
    );
  }

  Widget myIcon(
          {required BuildContext context,
          required VoidCallback onPressed,
          required String message,
          bool halfHeight = false,
          required IconData icon}) =>
      IconButton(
        iconSize: 30.r,
        tooltip: message,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
      );

  Widget text(BuildContext context, String text, String message,
          {bool thin = false}) =>
      Container(
        decoration: BoxDecoration(
            boxShadow: StyleManager.smallShadow,
            borderRadius: StyleManager.border,
            border: Border.all(color: Theme.of(context).primaryColor),
            color: Theme.of(context).primaryColor.withOpacity(0.5)),
        child: Tooltip(
          message: message,
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption!.copyWith(
                  fontWeight: thin ? FontWeight.w100 : FontWeight.w900,
                ),
          ),
        ),
      );

  Widget weightText(BuildContext context) => Container(
        decoration: BoxDecoration(
            boxShadow: StyleManager.smallShadow,
            borderRadius: StyleManager.border,
            border: Border.all(color: Theme.of(context).primaryColor),
            color: Theme.of(context).primaryColor.withOpacity(0.5)),
        child: Tooltip(
          message: StringManger.truckWeight,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: vehicle.weight.toInt().toString(),
              style: Theme.of(context).textTheme.caption,
              children: <TextSpan>[
                TextSpan(
                    text: ".00  ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16.sp)),
                TextSpan(
                    text: "Kg",
                    style: TextStyle(
                        fontWeight: FontWeight.w100, fontSize: 16.sp)),
              ],
            ),
          ),
        ),
      );
}
