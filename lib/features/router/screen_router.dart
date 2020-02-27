import 'package:auto_route/auto_route_annotations.dart';

import '../screen/feature_screen.dart';
import '../screen/web_game_screen.dart';

@MaterialAutoRouter()
class $ScreenRouter {
  @initial
  FeatureScreen featureScreen;

  WebGameScreen webGameScreen;
}
