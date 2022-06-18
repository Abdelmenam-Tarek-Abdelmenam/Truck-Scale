import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/shared/widget/search_bar.dart';
import 'package:truck_scale/presentation/view/vehicles_view/widgets/vehicle_design.dart';

import '../../../data/models/vehicle.dart';

List<Vehicle> vehicles = List.generate(
  100,
  (i) => Vehicle(
    plate: 'ABC-${i + 1}',
    weight: 10,
    driverName: 'Ahmed',
    driverPhone: '01201838240',
    model: 'Model ${i + 1}',
  ),
);

class VehiclesView extends StatelessWidget {
  const VehiclesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: PaddingManager.p10,
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: SearchBar(
                        controller: TextEditingController(),
                        title: StringManger.vehicle)),
                Dividers.w10,
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(StringManger.add),
                ),
              ],
            ),
            Dividers.h10,
            vehicles.isEmpty
                ? noVehicles(context)
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: VehicleDesign(vehicles[index])),
                    itemCount: vehicles.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 500,
                        mainAxisSpacing: 10,
                        childAspectRatio: 4.h,
                        crossAxisSpacing: 10),
                  ),
          ],
        ),
      ),
    );
  }

  Widget noVehicles(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.car_crash,
          color: Theme.of(context).colorScheme.onSurface,
          size: 150.r,
        ),
        Dividers.h10,
        Text(StringManger.noVehicle,
            style: Theme.of(context).textTheme.headline1!),
      ],
    );
  }
}
