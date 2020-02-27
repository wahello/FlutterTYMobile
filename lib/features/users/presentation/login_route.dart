import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart'
    show LoadingWidget, ToastDisplay, TextInputWidget;
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/presentation/bloc/bloc_user.dart';
import 'package:flutter_ty_mobile/features/users/presentation/widgets/user_display.dart';
import 'package:flutter_ty_mobile/temp/blank_widget.dart';
import 'package:flutter_ty_mobile/utils/value_range.dart';

import '../../widget_res_export.dart' show Themes, localeStr, sl;

/// Main View of [Router.loginRoute]
///@author H.C.CHIANG
///@version 2020/1/17
class LoginRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  UserLoginBloc _bloc;
  final TextEditingController _usernameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";
  bool _hidePassword = true;
  Icon _hidePasswordIcon;
  bool _autoValidate = false;

  _LoginRouteState() {
    _usernameController.addListener(_usernameListener);
    _passwordController.addListener(_passwordListener);
  }

  void _usernameListener() => _username = _usernameController.text;

  void _passwordListener() => _password = _passwordController.text;

  void setIcon() {
    if (_hidePassword)
      _hidePasswordIcon = Icon(Icons.visibility, size: Themes.fieldIconSize);
    else
      _hidePasswordIcon =
          Icon(Icons.visibility_off, size: Themes.fieldIconSize);
  }

  @override
  void initState() {
    setIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // wrap with scrollview to prevent overflow when keyboard pops up.
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    localeStr.hintTitleLogin,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Themes.defaultHintColor),
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              _buildTextFields(),
              _buildButtons(),
              _testLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFields() {
    return new Form(
      key: _formKey,
      autovalidate: _autoValidate,
      child: new Column(
        children: <Widget>[
          TextInputWidget.validCheck(
            hintText: localeStr.hintAccount,
            iconData: const IconData(0xf2bd, fontFamily: 'FontAwesome'),
            fieldValidator: (val) => rangeCheck(val.length, 6, max: 12)
                ? null
                : localeStr.messageInvalidAccount,
            fieldSave: (val) => _username = val.trim(),
          ),
          TextInputWidget.validCheck(
            inputDecoration: InputDecoration(
              labelText: localeStr.hintAccountPassword,
              suffixIcon: GestureDetector(
                child: _hidePasswordIcon,
                onTap: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                    setIcon();
                  });
                },
              ),
            ),
            iconData: const IconData(0xf13e, fontFamily: 'FontAwesome'),
            fieldValidator: (val) =>
                val.length < 6 ? localeStr.messageInvalidPassword : null,
            fieldSave: (val) => _password = val.trim(),
            hideText: _hidePassword,
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text(localeStr.btnLogin),
                  color: Themes.defaultAccentColor,
                  textColor: Themes.defaultTextColorBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  onPressed: () => _loginPressed(context),
                ),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: RaisedButton(
                  child: Text(localeStr.btnResetPassword),
                  color: Themes.buttonDisabledColor,
                  textColor: Themes.buttonDisabledTextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  onPressed: _passwordReset,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _loginPressed(BuildContext context) {
    if (_formKey.currentState.validate()) {
      // hide keyboard
      try {
        FocusScope.of(context).unfocus();
      } catch (e) {
        MyLogger.warn(msg: 'hide keyboard exception:', error: e);
      }
      //   If all data are correct then call save() to trigger Form's onSave method
      _formKey.currentState.save();
//      print('The user wants to login with $_username and $_password');
      _bloc.add(GetUserEvent(
          form: UserLoginForm(account: _username, password: _password)));
    } else {
      //    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
//    if (message.isNotEmpty)
//      showFloatingFlushBar(Scaffold.of(context).context, message);
  }

  void _passwordReset() {
    print("User $_username wants to reset password");
  }

  BlocProvider<UserLoginBloc> _testLogin(BuildContext context) {
    if (_bloc == null) _bloc = sl<UserLoginBloc>();
    return BlocProvider(
      create: (_) => _bloc,
      child: Container(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: BlocBuilder<UserLoginBloc, UserLoginState>(
                builder: (context, state) {
                  return state.when(
                    uInitial: (_) => BlankWidget(),
                    uLoading: (_) => LoadingWidget(),
                    uLoaded: (_) => UserDisplay(user: state.props.first),
                    uError: (_) => ToastDisplay(message: state.props.first),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
