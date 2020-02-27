import 'package:flutter_ty_mobile/core/internal/global.dart';

final _loginAPI = 'api/login';
final _gameAutoAPI = 'api/openUrl';
final _gameAPI = 'api/open';

final _serviceRegexString =
    (Global.IS_TEST_VER) ? Global.TEST_BASE_URL : _tyRegString;
final _tyRegString = 'https://www.vip66[6-7][0-9][0-9].com';

final _routeRegex = RegExp("^(?:$_serviceRegexString/?)");
final _gameAutoRegex = RegExp("^(?:$_serviceRegexString$_gameAutoAPI/.*)");
final _gameRegex = RegExp("^(?:$_serviceRegexString$_gameAPI/.*)");
final _imageRegex = RegExp("^(?:${_serviceRegexString}images/.*(jpg|png))");
final _loginRegex = RegExp("^(?:$_serviceRegexString$_loginAPI)");
final _ptLoginRegex = RegExp("^(?:https://login.greenjade88.com/.*\$)");
final _webResRegex = RegExp("^(?=.*(js|lib|gif|png|html)).*\$");

final _routeTestRegex = RegExp("^(?:$_tyRegString/?)");

extension RegexExtension on String {
  bool get testTyRouteUrl => _routeTestRegex.hasMatch(this);
  bool get isRouteUrl => _routeRegex.hasMatch(this);
  bool get isLoginUrl => _loginRegex.hasMatch(this);
  bool get isGameAutoUrl => _gameAutoRegex.hasMatch(this);
  bool get isGameUrl => _gameRegex.hasMatch(this);
  bool get isImageUrl => _imageRegex.hasMatch(this);
  bool get isPtLoginUrl => _ptLoginRegex.hasMatch(this);
  bool get isWebResource => _webResRegex.hasMatch(this);
}
