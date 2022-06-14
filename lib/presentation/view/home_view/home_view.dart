import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        children: [
          upperBox(context),
        ],
      ),
    );
  }

  Widget upperBox(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Theme.of(context).primaryColor,
                ),
                height: 330.h,
                child: Container()),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 330.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Theme.of(context).colorScheme.onBackground,
              ),
              child: Column(
                children: [
                  Expanded(child: Container()),
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
        ],
      );
}
