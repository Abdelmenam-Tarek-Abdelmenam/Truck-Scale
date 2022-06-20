import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/client.dart';
import '../../resources/string_manager.dart';
import '../../resources/styles_manager.dart';
import '../../shared/widget/dividers.dart';
import '../../shared/widget/search_bar.dart';
import 'widgets/client_design.dart';

List<Client> clients = List.generate(
    100,
    (i) =>
        Client(id: i, name: "Ahmed", phone: "01201838240", carPlate: "car-$i"));

class ClientsView extends StatelessWidget {
  const ClientsView({Key? key}) : super(key: key);

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
                        title: StringManger.clients)),
                Dividers.w10,
                ElevatedButton(
                  onPressed: () {},
                  child: Text(StringManger.add),
                ),
              ],
            ),
            Dividers.h10,
            clients.isEmpty
                ? noClients(context)
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ClientDesign(clients[index])),
                    itemCount: clients.length,
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

  Widget noClients(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person_pin,
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
