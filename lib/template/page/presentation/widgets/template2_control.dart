import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/template/page/presentation/bloc/template2_bloc.dart';
import 'package:flutter_ty_mobile/template/page/presentation/bloc/template2_event.dart';

///
/// @author H.C.CHIANG
/// @version 2020/02/18
class Template2Control extends StatefulWidget {
  Template2Control({Key key}) : super(key: key);

  @override
  _Template2ControlState createState() => _Template2ControlState();
}

class _Template2ControlState extends State<Template2Control> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<Template2Bloc>(context).add(GetDescEvent());
//    BlocProvider.of<Template2Bloc>(context).add(GetDescEvent2(data:'test'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.0,
      height: 0.0,
    );
  }
}
