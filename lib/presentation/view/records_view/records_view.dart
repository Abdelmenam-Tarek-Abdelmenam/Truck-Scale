import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/styles_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/view/records_view/widgets/record_design.dart';

import '../../../data/models/records.dart';

class RecordsView extends StatelessWidget {
  RecordsView({Key? key}) : super(key: key);

  final List<Record> records = List.generate(
    100,
    (i) => Record(
      id: '${2000 - i}',
      clientName: "Ahmed",
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
      child: records.isEmpty
          ? noRecords(context)
          : Padding(
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

  Widget noRecords(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.speaker_notes_off_outlined,
          color: Theme.of(context).colorScheme.onSurface,
          size: 150.r,
        ),
        Dividers.h10,
        Text('No Records', style: Theme.of(context).textTheme.headline1!),
      ],
    );
  }
}
