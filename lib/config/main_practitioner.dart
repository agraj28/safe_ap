import 'package:flutter/material.dart';
import 'package:safe_ap/config/common_config/config.dart';
import 'package:safe_ap/core_utils/config/flavor_config.dart';

Future<void> main() async {

  FlavorConfig(
    flavor: Flavor.practitioner,
    color: Colors.pink,
    values: FlavorValues(),
    subFlavor: SubFlavor.qa,
  );

  await commonAppSetup();
  await baseAppSetup();

}

Future<void> baseAppSetup() async {

   runApp(const Practioner());
}

class Practioner extends StatelessWidget {
  const Practioner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Directionality(
            textDirection: TextDirection.ltr,
            child: Text('Practioner')),
      ),
    );
  }
}
