import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../box/DeferredBox.dart' deferred as box;

// ...

class SomeWidget extends StatefulWidget {
  @override
  _SomeWidgetState createState() => _SomeWidgetState();
}

class _SomeWidgetState extends State<SomeWidget> {

  @override
  void initState() {
    super.initState();
  }

  String value = "sdddd2";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        try{
          await box.loadLibrary();
        } catch (e, s) {
          setState(() {
            value = e.toString();
          });
        }
        final result = await Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => box.DeferredBox()),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          new Text(value)
        ],
      ),
    );
  }
}
// ...
