import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';

import '../../../resources/styles_manager.dart';
import '../../../shared/widget/dividers.dart';

class DataBaseSector extends StatelessWidget {
  const DataBaseSector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManger.dataBaseSector,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        Dividers.h5,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: StyleManager.smallShadow,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              clickableText(context, StringManger.importDatabase, () {}),
              Dividers.horizontalLine,
              clickableText(context, StringManger.exportDatabase, () {}),
              Dividers.horizontalLine,
              clickableText(context, StringManger.clearDatabase, () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget clickableText(
          BuildContext context, String text, VoidCallback onPressed) =>
      InkWell(
        onTap: onPressed,
        child: Padding(
          padding: PaddingManager.p8,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      );
}
