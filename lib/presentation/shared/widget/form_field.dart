import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/styles_manager.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField(
      {required this.controller,
      this.fillHint,
      required this.title,
      required this.prefix,
      this.isPass = false,
      this.validator,
      this.keyboardType,
      this.suffix,
      this.border = true,
      this.isTransparent = false,
      this.onChanged,
      Key? key})
      : super(key: key);

  final bool border;
  final bool isTransparent;

  final TextEditingController controller;
  final String? fillHint;
  final String title;
  final IconData prefix;
  final bool isPass;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: StyleManager.border,
        color: isTransparent
            ? Theme.of(context).primaryColor.withOpacity(0.5)
            : Theme.of(context).colorScheme.onBackground,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPass,
        onChanged: onChanged,
        autofillHints: fillHint == null ? null : [fillHint!],
        keyboardType: keyboardType,
        validator: validator,
        style: Theme.of(context).textTheme.button!.copyWith(
              color: isTransparent
                  ? Theme.of(context).colorScheme.onSecondary
                  : null,
            ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20.0),
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
          suffixIcon: suffix,
          prefixIcon: Icon(prefix,
              size: 20,
              color: isTransparent
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).primaryColor),
          labelText: title,
          labelStyle: TextStyle(
            fontSize: 16,
            color: isTransparent
                ? Theme.of(context).colorScheme.onSecondary
                : Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
