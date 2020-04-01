import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_ty_mobile/features/screen/test_screen.dart';

import '../screen/feature_screen.dart';
import '../screen/web_game_screen.dart';

@MaterialAutoRouter()
class $ScreenRouter {
  @MaterialRoute(initial: true, maintainState: true)
  FeatureScreen featureScreen;

  @MaterialRoute()
  WebGameScreen webGameScreen;

  @MaterialRoute()
  TestScreen testScreen;
}
