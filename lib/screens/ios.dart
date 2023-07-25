import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/platform.dart';

class ios extends StatefulWidget {
  const ios({Key? key}) : super(key: key);

  @override
  State<ios> createState() => _iosState();
}

class _iosState extends State<ios> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("ios app"),
          trailing: CupertinoSwitch(
            value: Provider.of<platfrom>(context, listen: false).isios,
            onChanged: (val) {
              Provider.of<platfrom>(context, listen: false).changeolatfrom(val);
            },
          ),
        ),
        child: Container());
  }
}
