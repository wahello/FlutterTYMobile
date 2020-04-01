import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';

class TestInputWidget extends StatefulWidget {
  @override
  State createState() => new _TestInputWidgetState();
}

class _TestInputWidgetState extends State<TestInputWidget> {
  static final _formKey = new GlobalKey<FormState>();

  /// just  define _formkey with static final

  Key _k1 = new GlobalKey();
  Key _k2 = new GlobalKey();
  String _email, _password;

  void validate() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      FLToast.showText(
          text: ('email: $_email\npassword: $_password'),
          showDuration: ToastDuration.DEFAULT.value,
          position: FLToastPosition.top);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("building login");
    double _screenHeight = MediaQuery.of(context).size.height;
    return new Padding(
      padding: new EdgeInsets.all(50.0),
      child: new Form(
        key: _formKey,
        child: new ListView(
          children: <Widget>[
            new TextFormField(
              key: _k1,
              decoration: new InputDecoration(labelText: 'E-Mail'),
              onSaved: (val) => _email = val.trim(),
            ),
            new TextFormField(
              key: _k2,
              decoration: new InputDecoration(labelText: 'Password'),
              onSaved: (val) => _password = val.trim(),
              obscureText: true,
            ),
            new Padding(
              padding: new EdgeInsets.only(top: _screenHeight * 0.04),
              child: new RaisedButton(
                onPressed: validate,
                child: new Text('Login'),
              ),
            ),
          ],
          physics: new ClampingScrollPhysics(),
        ),
      ),
    );
  }
}
