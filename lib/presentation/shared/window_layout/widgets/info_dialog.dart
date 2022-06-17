import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../resources/asstes_manager.dart';
import '../../../resources/string_manager.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 350,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(context),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringManger.description,
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringManger.version,
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringManger.copyRights,
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 10,
          ),
          bottomBar(context)
        ],
      ),
    );
  }

  Widget appBar(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
          ),
          Row(
            children: [
              Image.asset(
                AssetsManager.logo,
                width: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 10),
              Text(
                StringManger.appName,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 18),
              ),
            ],
          ),
          MaterialButton(
            minWidth: 0,
            splashColor: Colors.red,
            onPressed: () => Navigator.of(context).pop(),
            shape: const CircleBorder(
                side: BorderSide(color: Colors.red, width: 2)),
            child: const Icon(
              Icons.close_rounded,
              color: Colors.red,
              size: 20,
            ),
          ),
        ],
      );
  Widget bottomBar(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringManger.poweredBy,
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse('https://oreca.tech/');
              if (!await launchUrl(url)) throw 'Could not launch $url';
            },
            child: Image.asset(
              AssetsManager.oreca,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
        ],
      );
}
