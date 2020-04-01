import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/temp/test_input_widget.dart';

class TestScreen extends StatefulWidget {
  TestScreen();

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        child: Container(
          child: TestInputWidget(),
        ),
        onWillPop: () async {
          MyLogger.debug(msg: 'pop test screen', tag: 'TestScreen');
          return Future(() => true);
        },
      ),
    );
  }
}
