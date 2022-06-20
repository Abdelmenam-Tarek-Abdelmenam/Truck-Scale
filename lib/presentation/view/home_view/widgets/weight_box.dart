import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/bloc/contsants_bloc/constants_bloc.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/view/home_view/widgets/part_text.dart';

import '../../../shared/widget/directions.dart';

// ignore: must_be_immutable
class WeightBox extends StatelessWidget {
  WeightBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderDirection.direction(
                  topStart: StyleManager.radius10,
                ),
                color: Theme.of(context).primaryColor,
              ),
              height: 330.h,
              padding: PaddingManager.p15,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      StringManger.weight,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: "150",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 100.sp),
                        children: <TextSpan>[
                          TextSpan(
                              text: ".00  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 40.sp)),
                          TextSpan(
                              text: context
                                  .watch<ConstantsBloc>()
                                  .state
                                  .weightUnit,
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 30.sp)),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          weightSwitch(context),
                          Text(StringManger.truckWeightOnly,
                              style: Theme.of(context).textTheme.headline4)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "15-7-2022 3:40 AM",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 330.h,
            decoration: BoxDecoration(
              borderRadius: BorderDirection.direction(
                topEnd: StyleManager.radius10,
              ),
              color: Theme.of(context).colorScheme.onBackground,
            ),
            child: Column(
              children: [
                Expanded(
                    child: PartText(StringManger.truckWeight, "140", ".00",
                        context.watch<ConstantsBloc>().state.weightUnit)),
                Dividers.horizontalLine,
                Expanded(
                    child: PartText(StringManger.materialWeight, "10", ".00",
                        context.watch<ConstantsBloc>().state.weightUnit)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  bool _isTruckWeightOnly = false;

  Widget weightSwitch(BuildContext context) =>
      StatefulBuilder(builder: (context, setState) {
        return Switch(
          value: _isTruckWeightOnly,
          onChanged: (value) {
            setState(() {
              _isTruckWeightOnly = !_isTruckWeightOnly;
            });
          },
          activeColor: Theme.of(context).colorScheme.onSurface,
          activeTrackColor: Theme.of(context).colorScheme.onSurface,
          inactiveThumbColor: Theme.of(context).colorScheme.onBackground,
        );
      });
}
