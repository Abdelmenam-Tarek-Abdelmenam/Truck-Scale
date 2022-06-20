import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/view/home_view/widgets/part_text.dart';
import 'package:truck_scale/presentation/view/home_view/widgets/weight_box.dart';
import '../../../bloc/contsants_bloc/constants_bloc.dart';
import '../../resources/string_manager.dart';
import '../../resources/styles_manager.dart';

import '../../shared/widget/form_field.dart';
import '../../shared/widget/numeric_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.p10,
      child: Column(
        children: [
          Container(
            decoration: decoration(context).copyWith(
                boxShadow: StyleManager.bigShadow,
                color: Theme.of(context).backgroundColor),
            child: Column(
              children: [
                WeightBox(),
                Dividers.h10,
                truckBox(context),
                Dividers.h10,
                vehicleBox(context),
              ],
            ),
          ),
          Dividers.h20,
          inputBox(context),
          Dividers.h20,
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
                padding: PaddingManager.p8,
                child: Row(
                  children: [
                    Text(
                      StringManger.truck,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Dividers.w10,
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: StringManger.plateNumber,
                          prefix: Icons.fire_truck_outlined),
                    ),
                  ],
                )),
          ),
          Dividers.w10,
          Expanded(
            flex: 3,
            child: Container(
                height: 80.h,
                decoration: decoration(context),
                padding: PaddingManager.p8,
                child: Row(
                  children: [
                    Text(
                      StringManger.material,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Dividers.w10,
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: StringManger.materialName,
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
                padding: PaddingManager.p8,
                child: Row(
                  children: [
                    Text(
                      StringManger.materialPrice,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Dividers.w10,
                    Expanded(
                      child: NumericField(
                        TextEditingController(text: '0'),
                        title: StringManger.materialPrice,
                      ),
                    ),
                    Dividers.w10,
                    Text(
                      context.watch<ConstantsBloc>().state.moneyUnit,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 14),
                    ),
                  ],
                )),
          ),
          Dividers.w10,
          Expanded(
            flex: 1,
            child: Container(
                height: 80.h,
                decoration: decoration(context),
                padding: PaddingManager.p8,
                child: Row(
                  children: [
                    Text(
                      StringManger.prevTicket,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Dividers.w10,
                    Expanded(
                      child: DefaultFormField(
                          isTransparent: true,
                          controller: TextEditingController(),
                          title: StringManger.ticketNumber,
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
                StringManger.driverInformation,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Dividers.w10,
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: StringManger.name,
                  prefix: Icons.person_outline),
            ),
            Dividers.w10,
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: StringManger.phone,
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
                StringManger.clientInformation,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Dividers.w10,
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: StringManger.name,
                  prefix: Icons.person_outline),
            ),
            Dividers.w10,
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: StringManger.phone,
                  prefix: Icons.phone),
            ),
          ],
        ),
        Dividers.h10,
        Row(
          children: [
            SizedBox(
              width: 150,
              child: Text(
                StringManger.notes,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Dividers.w10,
            Expanded(
              child: DefaultFormField(
                  controller: TextEditingController(),
                  title: StringManger.notes,
                  prefix: Icons.notes),
            ),
          ],
        ),
        Dividers.h10,
      ]);

  Widget lowerBox(BuildContext context) => Row(children: [
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bigIcon(StringManger.print, Icons.print_outlined, () {}),
            bigIcon(StringManger.save, Icons.save_outlined, () {}),
            bigIcon(StringManger.add, Icons.add_box_outlined, () {}),
          ],
        )),
        Expanded(
          flex: 1,
          child: Container(
              decoration: decoration(context)
                  .copyWith(boxShadow: StyleManager.bigShadow),
              height: 160.h,
              child: PartText(StringManger.totalPrice, "1000", ".00",
                  context.watch<ConstantsBloc>().state.moneyUnit)),
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
        borderRadius: StyleManager.border,
        color: Theme.of(context).colorScheme.onBackground,
      );
}
