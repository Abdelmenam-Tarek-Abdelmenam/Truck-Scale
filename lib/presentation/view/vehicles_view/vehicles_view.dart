import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/shared/widget/search_bar.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
