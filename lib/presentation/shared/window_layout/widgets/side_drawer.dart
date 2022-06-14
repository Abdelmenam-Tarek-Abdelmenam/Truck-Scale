import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:truck_scale/bloc/layout_bloc/layout_bloc.dart';

import '../../../resources/asstes_manager.dart';
import '../../../resources/string_manager.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          header(context),
          const SizedBox(height: 10),
          Expanded(child: BlocBuilder<LayoutBloc, ActiveLayout>(
            builder: (context, state) {
              print(state);
              return Column(
                children: ActiveLayout.values
                    .map((e) => tileDesign(context, e, state))
                    .toList(),
              );
            },
          )),
          trailer(context)
        ],
      ),
    );
  }

  Widget tileDesign(BuildContext context, ActiveLayout e, ActiveLayout state) =>
      Material(
        color: Colors.transparent,
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            context.read<LayoutBloc>().add(ChangeActiveLayout(e));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: state == e
                  ? Theme.of(context).colorScheme.onBackground
                  : Colors.transparent,
            ),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                Icon(
                  e.getIcon,
                  size: 25,
                  color: state == e
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                ),
                const SizedBox(width: 10),
                Text(
                  e.getString,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: state == e
                          ? Theme.of(context).colorScheme.primary
                          : null,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      );

  Widget header(BuildContext context) => Row(
        children: [
          Image.asset(
            AssetsManager.logo,
            width: 50,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10),
          Text(
            StringManger.appName,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20),
          ),
        ],
      );

  Widget trailer(BuildContext context) => InkWell(
        onTap: () {
          // show Application info dialog
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.info_outline,
              size: 25,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            const SizedBox(width: 5),
            Text(
              StringManger.about,
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 16),
            ),
          ],
        ),
      );
}
