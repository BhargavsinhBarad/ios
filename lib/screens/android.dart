import 'package:flutter/material.dart';
import 'package:ios/provider/platform.dart';
import 'package:provider/provider.dart';

class android extends StatefulWidget {
  const android({Key? key}) : super(key: key);

  @override
  State<android> createState() => _androidState();
}

class _androidState extends State<android> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("android app"),
        actions: [
          Switch(
              value: Provider.of<platfrom>(context, listen: false).isios,
              onChanged: (val) {
                Provider.of<platfrom>(context, listen: false)
                    .changeolatfrom(val);
              })
        ],
      ),
    );
  }
}
