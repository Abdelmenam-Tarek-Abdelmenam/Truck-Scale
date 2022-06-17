import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/view/home_view/widgets/part_text.dart';
import 'package:truck_scale/presentation/view/home_view/widgets/weight_box.dart';

import '../../shared/widget/form_field.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        children: [
          Container(
            decoration: decoration(context).copyWith(
                boxShadow: shadow, color: Theme.of(context).backgroundColor),
            child: Column(
              children: [
                WeightBox(),
                SizedBox(height: 10.h),
                truckBox(context),
                SizedBox(height: 10.h),
                vehicleBox(context),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          inputBox(context),
          SizedBox(height: 20.h),
          lowerBox(context),
        ],
      ),
    );
  }

  Widget truckBox(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                decoration: decoration(context),
                height: 80.h,
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Truck",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: "Plate Number",
                          prefix: Icons.fire_truck_outlined),
                    ),
                  ],
                )),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Container(
                height: 80.h,
                decoration: decoration(context),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Material",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: "Material name or code",
                          prefix: Icons.search),
                    ),
                  ],
                )),
          ),
        ],
      );

  Widget vehicleBox(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                decoration: decoration(context),
                height: 80.h,
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Material price per Kg",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: "Material Price",
                          prefix: Icons.money),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "EGP",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 14),
                    ),
                  ],
                )),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Container(
                height: 80.h,
                decoration: decoration(context),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Previous Ticket Number",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: "Ticket Number",
                          prefix: Icons.airplane_ticket_sharp),
                    ),
                  ],
                )),
          ),
        ],
      );

  Widget inputBox(BuildContext context) => Column(children: [
        Row(
          children: [
            SizedBox(
              width: 150,
              child: Text(
                "Driver Information",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: "Name",
                  prefix: Icons.person_outline),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: "Phone",
                  prefix: Icons.phone),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 150,
              child: Text(
                "Client Information",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: "Name",
                  prefix: Icons.person_outline),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: "Phone",
                  prefix: Icons.phone),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              width: 150,
              child: Text(
                "Notes",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: "Notes",
                  prefix: Icons.notes),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ]);

  Widget lowerBox(BuildContext context) => Row(children: [
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bigIcon("Print", Icons.print_outlined, () {}),
            bigIcon("Save", Icons.save_outlined, () {}),
            bigIcon("Add new", Icons.add_box_outlined, () {}),
          ],
        )),
        Expanded(
          flex: 1,
          child: Container(
              decoration: decoration(context).copyWith(boxShadow: shadow),
              height: 160.h,
              child:
                  const PartText("Total Material Price", "1000", ".00", "EGP")),
        ),
      ]);

  Widget bigIcon(String text, IconData icon, VoidCallback onPressed) =>
      IconButton(
          tooltip: text,
          iconSize: 80.r,
          onPressed: onPressed,
          icon: Icon(
            icon,
          ));

  BoxDecoration decoration(BuildContext context) => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.onBackground,
      );

  final List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.8),
      spreadRadius: 2,
      blurRadius: 2,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];
}
