import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';

import '../../resources/styles_manager.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({required this.controller, required this.title, Key? key})
      : super(key: key);

  final TextEditingController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: StyleManager.border,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      child: TextFormField(
        controller: controller,
        style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
        decoration: InputDecoration(
          contentPadding: PaddingManager.p8,
          errorStyle: const TextStyle(fontSize: 12),
          errorBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {
              controller.clear();
            },
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
          labelText: "${StringManger.search} $title",
          labelStyle: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
