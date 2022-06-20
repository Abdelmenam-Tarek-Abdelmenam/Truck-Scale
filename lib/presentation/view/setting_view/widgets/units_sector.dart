import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../../bloc/contsants_bloc/constants_bloc.dart';
import '../../../resources/styles_manager.dart';
import '../../../shared/widget/form_field.dart';

class UnitsSector extends StatelessWidget {
  const UnitsSector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConstantsBloc bloc = context.read<ConstantsBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManger.unitsSector,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(children: [
                  Dividers.w10,
                  Text(
                    StringManger.weight,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Expanded(
                    child: Padding(
                      padding: PaddingManager.p8,
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(
                              text: bloc.state.weightUnit),
                          onChanged: (text) =>
                              bloc.add(ChangeWeightUnitEvent(text)),
                          title: StringManger.weightUnit,
                          prefix: Icons.scale),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 50.h + 16,
                child: Dividers.verticalLine,
              ),
              Expanded(
                child: Row(children: [
                  Dividers.w10,
                  Text(
                    StringManger.money,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Expanded(
                    child: Padding(
                      padding: PaddingManager.p8,
                      child: DefaultFormField(
                          isTransparent: true,
                          controller:
                              TextEditingController(text: bloc.state.moneyUnit),
                          onChanged: (text) =>
                              bloc.add(ChangeMoneyUnitEvent(text)),
                          title: StringManger.moneyUnit,
                          prefix: Icons.money_off),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
