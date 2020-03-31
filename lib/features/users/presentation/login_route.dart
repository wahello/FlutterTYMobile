import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/core/base/usecase_export.dart';
import 'package:flutter_ty_mobile/core/data/hive_actions.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart'
    show LoadingWidget, ToastError;
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:flutter_ty_mobile/features/general/widgets/text_input_type_freezed.dart';
import 'package:flutter_ty_mobile/features/general/widgets/text_input_widget.dart';
import 'package:flutter_ty_mobile/features/route_page_export.dart'
    show localeStr, sl;
import 'package:flutter_ty_mobile/features/users/data/form/login_form.dart';
import 'package:flutter_ty_mobile/features/users/presentation/bloc/bloc_user_export.dart';
import 'package:flutter_ty_mobile/features/users/presentation/widgets/fast_login_widget.dart';
import 'package:flutter_ty_mobile/features/users/presentation/widgets/user_display.dart';
import 'package:flutter_ty_mobile/utils/value_range.dart';
import 'package:hive/hive.dart';

const String _CACHE_LOGIN_FORM = '_CACHE_LOGIN_FORM';

/// Main View of [Router.loginRoute]
///@author H.C.CHIANG
///@version 2020/1/17
class LoginRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  UserLoginBloc _bloc;
//  final TextEditingController _passwordController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";
  bool _hidePassword = true;
  Icon _hidePasswordIcon;
  bool _autoValidate = false;
  bool _loginFailed = false;

  bool _useBoxData = false;
  Box _userBox;
  UserLoginHiveForm _hiveForm;
  GlobalKey<FastLoginWidgetState> _fastKey;

  _LoginRouteState() {
//    _passwordController.addListener(_passwordListener);
  }

//  void _passwordListener() => _password = _passwordController.text;

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
    _fastKey = GlobalKey<FastLoginWidgetState>();
    super.initState();
  }

  @override
  void dispose() {
    closeHiveBox(_CACHE_LOGIN_FORM);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // wrap with scrollview to prevent overflow when keyboard pops up.
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getHiveBox(_CACHE_LOGIN_FORM),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError == false) {
                try {
                  _userBox = (snapshot.data) as Box;
                  if (_userBox.length > 0) {
                    print(_userBox.values.toList());
                    _hiveForm = _userBox.values?.last;
                    print('box login form: $_hiveForm');
//                    _passwordController.text = _hiveForm?.password ?? '';
                    _useBoxData = true;
                  }
                } catch (e) {}
              }
              return Container(
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
                    FastLoginWidget(
                      key: _fastKey,
                      initValue: _hiveForm?.fastLogin ?? false,
                    ),
                    SizedBox(height: 6.0),
                    _buildButtons(),
                    _blocMonitor(context),
                  ],
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
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
          TextInputWidget(
            type: TextInputTypeFreezed.valid(
              hintText: localeStr.hintAccount,
              titleIcon: const IconData(0xf2bd, fontFamily: 'FontAwesome'),
              fieldValidator: (val) =>
                  rangeCheck(value: val.length, min: 6, max: 12)
                      ? null
                      : localeStr.messageInvalidAccount,
              fieldSave: (val) => _username = val.trim(),
              initText: _hiveForm?.account ?? '',
            ),
          ),
          //TODO extract widget to new widget class to prevent screen flash
          TextInputWidget(
            type: TextInputTypeFreezed.cValid(
              inputDecoration: InputDecoration(
                labelText: localeStr.hintAccountPassword,
                suffixIcon: GestureDetector(
                  child: _hidePasswordIcon,
                  onTap: () {
                    if (_useBoxData) {
                      FLToast.showText(
                        text: localeStr.messageActionFailed,
                        position: FLToastPosition.top,
                        showDuration: ToastDuration.SHORT.value,
                      );
                    } else {
                      setState(() {
                        _hidePassword = !_hidePassword;
                        setIcon();
                      });
                    }
                  },
                ),
                contentPadding: const EdgeInsets.all(8.0),
              ),
              titleIcon: const IconData(0xf13e, fontFamily: 'FontAwesome'),
              fieldValidator: (value) =>
                  value.length < 6 ? localeStr.messageInvalidPassword : null,
              fieldSave: (value) {
                if (_useBoxData && value != _hiveForm.password)
                  _useBoxData = false;
                return _password = value.trim();
              },
              hideText: _hidePassword,
              initText: _hiveForm?.password ?? '',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
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
    // TODO not working after login failed once 20200324
    print('login pressed');
    if (_formKey.currentState.validate()) {
      print('field validated');
      // hide keyboard
      try {
        FocusScope.of(context).unfocus();
      } catch (e) {
        MyLogger.warn(msg: 'hide keyboard exception:', error: e);
      }
      //   If all data are correct then call save() to trigger Form's onSave method
      _formKey.currentState.save();
//      print('The user wants to login with $_username and $_password');
      _hiveForm = UserLoginHiveForm(
        account: _username,
        password: _password,
        fastLogin: _fastKey.currentState.fastLogin,
      );
      _bloc.add(GetUserEvent(form: _hiveForm.simple));
    } else if (_loginFailed) {
      // TODO need to test event after login failed
      print('retry login action...');
      _loginFailed = false;
      _bloc.add(GetUserEvent(form: _hiveForm.simple));
    } else {
      print('field not validate');
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

  BlocProvider<UserLoginBloc> _blocMonitor(BuildContext context) {
    if (_bloc == null) _bloc = sl.get<UserLoginBloc>();
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
                    uInitial: (_) => SizedBox.shrink(),
                    uLoading: (_) => LoadingWidget(heightFactor: 4),
                    uLoaded: (_) {
                      if (_fastKey.currentState.fastLogin) {
                        // stores only one data
                        if (_userBox.isNotEmpty) {
                          _userBox
                              .putAt(0, _hiveForm)
                              .whenComplete(
                                  () => print('form saved: $_hiveForm'))
                              .catchError((e) => print('form save error: $e'));
                        } else {
                          _userBox
                              .add(_hiveForm)
                              .whenComplete(
                                  () => print('form saved: $_hiveForm'))
                              .catchError((e) => print('form save error: $e'));
                        }
                      } else {
                        // clean hive box when turned off
                        if (_userBox.isNotEmpty) {
                          _userBox
                              .clear()
                              .whenComplete(() => print('hive cleared'))
                              .catchError((e) => print('hive clear error: $e'));
                        }
                      }
                      return UserDisplay(user: state.props.first);
                    },
                    uError: (_) {
                      _loginFailed = true;
                      return ToastError(message: state.props.first);
                    },
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
