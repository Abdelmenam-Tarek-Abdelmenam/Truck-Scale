import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';
import 'package:truck_scale/presentation/view/reports_veiw/widgets/line_graph.dart';
import 'package:truck_scale/presentation/view/reports_veiw/widgets/prints_sector.dart';

import '../../resources/string_manager.dart';
import '../../resources/styles_manager.dart';

class ReportView extends StatelessWidget {
  const ReportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.p10,
      child: Column(
        children: [
          Row(
            children: [
              graph(context, List.generate(10, (i) => i), StringManger.graph1),
              Dividers.w10,
              graph(context, List.generate(10, (i) => i), StringManger.graph2),
            ],
          ),
          Dividers.h15,
          const PrintsSector(),
        ],
      ),
    );
  }

  Widget graph(BuildContext context, List<int> data, String title) => Expanded(
      child: Container(
          decoration: BoxDecoration(
            boxShadow: StyleManager.smallShadow,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: StyleManager.border,
          ),
          child: Column(
            children: [
              Dividers.h5,
              Text(
                title,
                style: Theme.of(context).textTheme.headline2,
              ),
              Dividers.h10,
              LineGraph(data)
            ],
          )));
}
