import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/data/models/material.dart';
import 'package:truck_scale/presentation/view/material_view/widgets/material_design.dart';

import '../../resources/string_manager.dart';
import '../../resources/styles_manager.dart';
import '../../shared/widget/directions.dart';
import '../../shared/widget/dividers.dart';
import '../../shared/widget/search_bar.dart';

List<MaterialModel> materials = List.generate(
    100,
    (i) => MaterialModel(
          id: i,
          name: "Material $i",
          price: i.toDouble(),
        ));

class MaterialsView extends StatelessWidget {
  const MaterialsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = getW(MediaQuery.of(context).size.width);
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
                  child: Text(StringManger.add),
                ),
              ],
            ),
            Dividers.h10,
            materials.isEmpty
                ? noMaterials(context)
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                        padding: PaddingDirection.direction(end: 20),
                        child: MaterialDesign(materials[index])),
                    itemCount: materials.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 500,
                        mainAxisSpacing: 10,
                        childAspectRatio: width,
                        crossAxisSpacing: 10),
                  ),
          ],
        ),
      ),
    );
  }

  double getW(double width) {
    print(width);
    if (width < 730) {
      return 7.h;
    }
    if (width < 780) {
      return 3.5.h;
    } else if (width < 850) {
      return 4.h;
    } else if (width < 950) {
      return 4.5.h;
    } else {
      return 5.5.h;
    }
  }

  Widget noMaterials(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.check_box_outline_blank,
          color: Theme.of(context).colorScheme.onSurface,
          size: 150.r,
        ),
        Dividers.h10,
        Text(StringManger.noMaterial,
            style: Theme.of(context).textTheme.headline1!),
      ],
    );
  }
}
