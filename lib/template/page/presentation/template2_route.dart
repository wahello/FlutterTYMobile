import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/presentation/widgets/home_widgets_export.dart';
import 'package:flutter_ty_mobile/template/page/presentation/bloc/template2_bloc.dart';
import 'package:flutter_ty_mobile/template/page/presentation/bloc/template2_event.dart';
import 'package:flutter_ty_mobile/template/page/presentation/widgets/template2_control.dart';
import 'package:flutter_ty_mobile/template/page/presentation/widgets/template2_display.dart';

import '../../../injection_container.dart';
import 'bloc/template2_state.dart';

class Template2Route extends StatefulWidget {
  @override
  _Template2RouteState createState() => _Template2RouteState();
}

class _Template2RouteState extends State<Template2Route> {
  Template2Bloc _bloc;

  @override
  void initState() {
    _bloc = sl<Template2Bloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              _bloc.add(GetDescEvent());
            },
            child: Text('event1'),
          ),
          RaisedButton(
            onPressed: () {
              _bloc.add(GetDescEvent2(data: 'test'));
            },
            child: Text('event2'),
          ),
          Expanded(
            child: BlocProvider(
              create: (_) => _bloc,
              child: BlocBuilder<Template2Bloc, Template2State>(
                builder: (context, state) {
                  return state.when(
                    tp2Initial: (_) => Template2Control(),
                    tp2Loading: (_) => LoadingWidget(),
                    tp2Loaded: (_) => Template2Display(desc: state.props.first),
                    tp2Error: (_) => ToastDisplay(message: state.props.first),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
