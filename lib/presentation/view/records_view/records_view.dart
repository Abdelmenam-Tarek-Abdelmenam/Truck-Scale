import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/view/records_view/widgets/record_design.dart';

import '../../../data/modules/records.dart';

class RecordsView extends StatelessWidget {
  RecordsView({Key? key}) : super(key: key);

  final List<Record> records = List.generate(
    100,
    (i) => Record(
      id: '${i + 1}',
      weight: i.toDouble(),
      carPlate: 'ABC-${i + 1}',
      materialName: 'Material ${i + 1}',
      type: i % 2 == 0 ? TruckType.full : TruckType.empty,
      date: '13-6-2022 3:40 AM',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: PaddingManager.p10,
        child: Scrollbar(
          child: ListView.separated(
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: RecordDesign(records[index])),
              separatorBuilder: (_, __) => Dividers.h10,
              itemCount: records.length),
        ),
      ),
    );
  }
}
