import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios/provider/platform.dart';
import 'package:ios/screens/android.dart';
import 'package:ios/screens/ios.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<platfrom>(
        create: (context) => platfrom(),
      )
    ],
    builder: (context, _) =>
        (Provider.of<platfrom>(context, listen: true).isios == false)
            ? MaterialApp(
                debugShowCheckedModeBanner: false,
                home: android(),
              )
            : CupertinoApp(
                debugShowCheckedModeBanner: false,
                home: ios(),
              ),
  ));
}
