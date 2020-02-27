import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/presentation/bloc/bloc_user.dart';
import 'package:meta/meta.dart' show required;

///
/// @author H.C.CHIANG
/// @version 2020/01/20
class UserControl extends StatefulWidget {
  final UserLoginForm form;

  UserControl({Key key, @required this.form}) : super(key: key);

  @override
  _UserControlState createState() => _UserControlState();
}

class _UserControlState extends State<UserControl> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserLoginBloc>(context)
        .add(GetUserEvent(form: widget.form));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
