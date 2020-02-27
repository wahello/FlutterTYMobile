part of 'router_navigate.dart';

RouterWidgetStreams get getRouterStreams => sl.get<RouterWidgetStreams>();

class RouterWidgetStreams {
  final StreamController<UserData> _userControl =
      StreamController<UserData>.broadcast();

  final StreamController<bool> _recheckControl =
      StreamController<bool>.broadcast();

  Stream<UserData> get userStream => _userControl.stream;

  Stream<bool> get recheckUserStream => _recheckControl.stream;

  updateUser(UserEntity user) {
    _userControl.sink.add(UserData(
      isLoggedIn: user != null,
      user: user,
    ));
  }

  setCheck(bool recheck) {
    _recheckControl.sink.add(recheck);
  }

  dispose() {
    MyLogger.warn(msg: 'disposing router stream!!', tag: 'RouterWidgetStreams');
    _userControl.close();
    _recheckControl.close();
  }
}
