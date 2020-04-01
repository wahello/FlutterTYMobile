import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/marquee/bloc_marquee_bloc.dart';

/// Get marquee data through [HomeMarqueeBloc]
/// @author H.C.CHIANG
/// @version 2020/01/10
class MarqueeControl extends StatefulWidget {
  MarqueeControl({Key key}) : super(key: key);

  @override
  _MarqueeControlState createState() => _MarqueeControlState();
}

class _MarqueeControlState extends State<MarqueeControl> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeMarqueeBloc>(context).add(GetMarqueeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
