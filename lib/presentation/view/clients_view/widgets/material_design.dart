import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/data/models/client.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../resources/string_manager.dart';

class ClientDesign extends StatelessWidget {
  const ClientDesign(this.client, {super.key});

  final Client client;

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: double.infinity,
              child: text(context, client.name, StringManger.name)),
          Row(
            children: [
              Expanded(
                child:
                    text(context, client.phone, StringManger.phone, thin: true),
              ),
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
}
