import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/data/form/platform_game_form.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_game.dart';
import 'package:meta/meta.dart' show required;

/// Get games data through [HomeGameBloc], request info is wrapped in [PlatformGameForm]
/// @author H.C.CHIANG
/// @version 2020/01/15
class GameControlGrid extends StatefulWidget {
  final PlatformGameForm form;

  GameControlGrid({Key key, @required this.form}) : super(key: key);

  @override
  _GameControlGridState createState() => _GameControlGridState();
}

class _GameControlGridState extends State<GameControlGrid> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeGameBloc>(context)
        .add(GetGamesEvent(form: widget.form));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
