import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:truck_scale/bloc/style_bloc/style_bloc.dart';
import 'package:truck_scale/bloc/style_bloc/style_enums.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/view/setting_view/widgets/database_sector.dart';
import 'package:truck_scale/presentation/view/setting_view/widgets/info_sector.dart';
import 'package:truck_scale/presentation/view/setting_view/widgets/units_sector.dart';

import '../../resources/string_manager.dart';
import '../../shared/widget/directions.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.p10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DataBaseSector(),
          Dividers.h15,
          const UnitsSector(),
          Dividers.h15,
          const InfoSector(),
          Dividers.h15,
          styleSector(context),
        ],
      ),
    );
  }

  Widget styleSector(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManger.styleSector,
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
                Padding(
                  padding: PaddingManager.p8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringManger.language,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Row(
                        children: LanguageMode.values
                            .map((e) => Padding(
                                  padding: PaddingDirection.direction(end: 8.0),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor: getColor(
                                              context,
                                              context
                                                      .read<StyleBloc>()
                                                      .languageIndex ==
                                                  e.index)),
                                      onPressed: () {
                                        context
                                            .read<StyleBloc>()
                                            .add(ChangeLanguageEvent(e));
                                      },
                                      child: Text(e.text)),
                                ))
                            .toList(),
                      )
                    ],
                  ),
                ),
                Dividers.horizontalLine,
                Padding(
                  padding: PaddingManager.p8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringManger.theme,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Row(
                        children: ThemeMode.values
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor: getColor(
                                              context,
                                              context
                                                      .read<StyleBloc>()
                                                      .themeIndex ==
                                                  e.index)),
                                      onPressed: () {
                                        context
                                            .read<StyleBloc>()
                                            .add(ChangeThemeEvent(e));
                                      },
                                      child: Text(e.text)),
                                ))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  MaterialStateProperty<Color> getColor(BuildContext context, bool check) =>
      MaterialStateProperty.all(check
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).primaryColor.withOpacity(0.5));
}
