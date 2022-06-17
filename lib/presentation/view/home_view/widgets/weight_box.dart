import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/view/home_view/widgets/part_text.dart';

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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                ),
                color: Theme.of(context).primaryColor,
              ),
              height: 330.h,
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Weight",
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
                              text: "Kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 30.sp)),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        weightSwitch(context),
                        Text("Truck Weight Only",
                            style: Theme.of(context).textTheme.headline4)
                      ],
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
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
              ),
              color: Theme.of(context).colorScheme.onBackground,
            ),
            child: Column(
              children: [
                const Expanded(
                    child: PartText("Truck weight", "140", ".00", "Kg")),
                Divider(
                  height: 2,
                  thickness: 2,
                  color: Theme.of(context).primaryColor,
                ),
                const Expanded(
                    child: PartText("Material  weight", "10", ".00", "Kg")),
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
