import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';
import 'package:truck_scale/presentation/shared/widget/dividers.dart';

import '../../../../bloc/contsants_bloc/constants_bloc.dart';
import '../../../resources/styles_manager.dart';
import '../../../shared/widget/form_field.dart';

class InfoSector extends StatelessWidget {
  const InfoSector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConstantsBloc bloc = context.read<ConstantsBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManger.informationSector,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        Dividers.h5,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: StyleManager.smallShadow,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(children: [
                      Dividers.w10,
                      Text(
                        StringManger.name,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Expanded(
                        child: Padding(
                          padding: PaddingManager.p8,
                          child: DefaultFormField(
                              isTransparent: true,
                              controller: TextEditingController(
                                  text: bloc.state.placeName),
                              onChanged: (text) =>
                                  bloc.add(ChangeNameEvent(text)),
                              title: StringManger.scaleName,
                              prefix: Icons.factory),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 50.h + 16,
                    child: Dividers.verticalLine,
                  ),
                  Expanded(
                    child: Row(children: [
                      Dividers.w10,
                      Text(
                        StringManger.phone,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Expanded(
                        child: Padding(
                          padding: PaddingManager.p8,
                          child: DefaultFormField(
                              isTransparent: true,
                              controller: TextEditingController(
                                  text: bloc.state.placePhone),
                              onChanged: (text) =>
                                  bloc.add(ChangePhoneEvent(text)),
                              title: StringManger.scalePhone,
                              prefix: Icons.phone),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
              Dividers.horizontalLine,
              Row(children: [
                Dividers.w10,
                Text(
                  StringManger.address,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Expanded(
                  child: Padding(
                    padding: PaddingManager.p8,
                    child: DefaultFormField(
                        isTransparent: true,
                        controller: TextEditingController(
                            text: bloc.state.placeAddress),
                        onChanged: (text) => bloc.add(ChangeAddressEvent(text)),
                        title: StringManger.scaleAddress,
                        prefix: Icons.map_outlined),
                  ),
                )
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
