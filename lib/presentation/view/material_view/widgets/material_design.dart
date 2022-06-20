import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/data/models/material.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../../bloc/contsants_bloc/constants_bloc.dart';
import '../../../resources/string_manager.dart';

class MaterialDesign extends StatelessWidget {
  const MaterialDesign(this.material, {super.key});

  final MaterialModel material;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: StyleManager.smallShadow,
          borderRadius: StyleManager.border,
          color: Theme.of(context).colorScheme.onBackground),
      padding: PaddingManager.p10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: double.infinity,
              child: text(context, material.name, StringManger.materialName)),
          Row(
            children: [
              Expanded(child: priceText(context)),
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
        padding: const EdgeInsets.symmetric(vertical: 4),
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

  Widget priceText(BuildContext context) => Container(
        decoration: BoxDecoration(
            boxShadow: StyleManager.smallShadow,
            borderRadius: StyleManager.border,
            border: Border.all(color: Theme.of(context).primaryColor),
            color: Theme.of(context).primaryColor.withOpacity(0.5)),
        child: Tooltip(
          message: StringManger.materialPrice,
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: material.price.toInt().toString(),
                    style: Theme.of(context).textTheme.caption,
                    children: <TextSpan>[
                      TextSpan(
                          text: ".00  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.sp)),
                      TextSpan(
                          text: context.watch<ConstantsBloc>().state.moneyUnit,
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 16.sp)),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 40.h,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Dividers.verticalLine),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  context.watch<ConstantsBloc>().state.weightUnit,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w100,
                      ),
                ),
              )
            ],
          ),
        ),
      );
}
