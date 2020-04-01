import 'dart:async' show StreamController, Stream;

import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart'
    show LoginStatus;
import 'package:flutter_ty_mobile/mylogger.dart';

import '../../injection_container.dart' show sl;

RouteUserStreams get getRouteUserStreams => sl.get<RouteUserStreams>();

///
/// Stream user [LoginStatus] through out the app to control UI state
///
class RouteUserStreams {
  final StreamController<LoginStatus> _userControl =
      StreamController<LoginStatus>.broadcast();

  final StreamController<bool> _recheckControl =
      StreamController<bool>.broadcast();

  Stream<LoginStatus> get userStream => _userControl.stream;

  Stream<bool> get recheckUserStream => _recheckControl.stream;

  LoginStatus _user = LoginStatus(loggedIn: false);

  LoginStatus get lastUser => _user;

  bool get hasUser => _user.loggedIn;

  RouteUserStreams() {
    _userControl.stream.listen((event) {
      print('update stream user: $event');
      _user = event;
    });
  }

  updateUser(LoginStatus user) {
    _userControl.sink.add(user);
  }

  setCheck(bool recheck) {
    _recheckControl.sink.add(recheck);
  }

  dispose() {
    MyLogger.warn(msg: 'disposing route streams!!', tag: 'RouteUserStreams');
    _userControl.close();
    _recheckControl.close();
  }
}
