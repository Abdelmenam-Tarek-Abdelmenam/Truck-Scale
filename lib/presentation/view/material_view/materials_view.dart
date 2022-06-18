import 'package:flutter/material.dart';

import '../../resources/string_manager.dart';
import '../../resources/styles_manager.dart';
import '../../shared/widget/dividers.dart';
import '../../shared/widget/search_bar.dart';

class MaterialsView extends StatelessWidget {
  const MaterialsView({Key? key}) : super(key: key);

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
                        title: StringManger.material)),
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
