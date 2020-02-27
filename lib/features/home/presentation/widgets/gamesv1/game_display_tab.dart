import 'dart:collection' show HashMap;

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/home/data/models/game_category_model.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/game_platform_entity.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/game_types_entity.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

import '../../../../widget_res_export.dart' show FontSize, Global, Themes;
import 'game_display_page.dart';
import 'game_display_tab_ctrl.dart';

/// Main view of the game area
/// Creates a [TabBar] widget to switch between each game category
/// Creates a [ConstrainedBox] to contain tab's page view
///@author H.C.CHIANG
///@version 2020/1/14
class GameDisplayTab extends StatefulWidget {
  final GameTypesEntity tabsData;

  GameDisplayTab({
    Key key,
    @required this.tabsData,
  }) : super(key: key);

  @override
  _GameDisplayTabState createState() => _GameDisplayTabState();
}

class _GameDisplayTabState extends State<GameDisplayTab>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  List<GameCategoryModel> _tabs;
  HashMap<String, List<GamePlatformEntity>> _platformMap;
  int _tabCnt;
  String _currentType;

  @override
  void initState() {
//    print('game tabs data: ${widget.tabsData}');
    _tabs = new List.from(widget.tabsData.categories);
    _tabCnt = _tabs.length;
    _currentType = _tabs[0].type;
    print('game tabs count = $_tabCnt');
    mapPlatforms();
    super.initState();

    _tabController = TabController(length: _tabCnt, vsync: this);
    _pageController = PageController();

    _tabController.addListener(_setActiveTabIndex);
  }

  @override
  void dispose() {
    try {
      if (_tabController != null) _tabController.dispose();
    } catch (e) {
      MyLogger.warn(msg: '${e.runtimeType}', tag: "GameDisplayTab", error: e);
    }
    super.dispose();
  }

  /// Map the platforms into separate list by game category
  void mapPlatforms() {
    final all = widget.tabsData.platforms;
    _platformMap = new HashMap();
    _tabs.forEach((category) {
      var list = List<GamePlatformEntity>.from(
          all.where((platform) => category.type == platform.category));
      _platformMap.putIfAbsent(category.type, () => list);
    });
//    _platformMap.keys.forEach((key) =>
//        MyLogger.print(msg: '$key: ${_platformMap[key]}', tag: 'PlatformMap'));
  }

  /// Set [_currentType] to change tab bar item color
  void _setActiveTabIndex() {
    // set state to change tab's image color
    setState(() {
      _currentType = _tabs[_tabController.index].type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /// category tab bar
        Padding(
          padding: const EdgeInsets.only(right: 10.0, top: 6.0),
          child: Material(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              /* Tab bar constraints */
              constraints: BoxConstraints(
                minHeight: Global.device.height / 3,
                maxHeight: Global.device.height / 1.75,
                minWidth: Global.device.width / 3 - 24,
                maxWidth: Global.device.width / 3 - 18,
              ),
              /* Rotate to vertical */
              child: RotatedBox(
                quarterTurns: 1,
                child: TabBar(
                  unselectedLabelColor: Themes.defaultTextColor,
                  labelColor: Themes.defaultAccentColor,
                  labelStyle: TextStyle(fontSize: FontSize.NORMAL.value + 1),
                  labelPadding: const EdgeInsets.only(top: 2.0),
                  indicatorColor: Colors.transparent, // hide indicator
                  controller: _tabController,
                  /* Generate Category Tabs */
                  tabs: _tabs.map((data) {
                    return RotatedBox(
                      quarterTurns: 3, // rotate back to normal display
                      child: Tab(
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 2.0, color: Themes.defaultAccentColor),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ExtendedImage.network(
                                '${Global.CURRENT_SERVICE}${data.getIconUrl()}',
                                scale: 3.0,
                                color: data.type == _currentType
                                    ? Themes.defaultAccentColor
                                    : Themes.defaultTextColor,
                                loadStateChanged: (ExtendedImageState state) {
                                  switch (state.extendedImageLoadState) {
                                    case LoadState.completed:
                                      return state.completedWidget;
                                    case LoadState.failed:
                                      return Icon(Icons.broken_image,
                                          color: Themes.iconColorDark);
                                    default:
                                      return null;
                                  }
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(data.getLabel()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onTap: (index) {
                    _pageController.jumpToPage(index);
                  },
                ),
              ),
            ),
          ),
        ),

        /// platform page control
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: Global.device.width * 0.6,
            maxWidth: Global.device.width / 3 * 2 - 6,
            minHeight: Global.device.height / 2.75,
            maxHeight: Global.device.height / 1.75,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: GameDisplayTabCtrl(
                  pageController: _pageController,
                  tabController: _tabController,
                  children: _tabs.map((data) {
                    return GameDisplayPage(
                      platforms: _platformMap[data.type],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
