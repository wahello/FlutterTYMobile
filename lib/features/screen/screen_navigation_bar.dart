part of 'feature_screen_view.dart';

///@author H.C.CHIANG
///@version 2020/2/26
class ScreenNavigationBar extends StatefulWidget {
  const ScreenNavigationBar();

  @override
  _ScreenNavigationBarState createState() => _ScreenNavigationBarState();
}

class _ScreenNavigationBarState extends State<ScreenNavigationBar> {
  static final List<String> _tabTitle = [
    RoutePage.home.pageTitle,
    RoutePage.deposit.pageTitle,
    RoutePage.promo.pageTitle,
    RoutePage.service.pageTitle,
    RoutePage.member.pageTitle,
    '更多'
  ];

  static final List<IconData> _tabIcon = [
    IconData(0xf015, fontFamily: 'FontAwesome'),
    IconData(0xf1c0, fontFamily: 'FontAwesome'),
    IconData(0xf06b, fontFamily: 'FontAwesome'),
    IconData(0xf27a, fontFamily: 'FontAwesome'),
    IconData(0xf2bd, fontFamily: 'FontAwesome'),
    Icons.more_horiz
  ];

  final List<RoutePage> _tabRoute = [
    RoutePage.home,
    RoutePage.deposit,
    RoutePage.promo,
    RoutePage.service,
    RoutePage.member,
    RoutePage.template2,
  ];

  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    final viewState = FeatureScreenInheritedWidget.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Themes.defaultAccentColor),
        ),
      ),
      child: Observer(builder: (_) {
        // observe nav index to change icon icon color (setState does not work).
        final index = viewState.store.navIndex;
        if (index >= 0) _navIndex = index;
        return BottomNavigationBar(
          onTap: (index) {
            print('tapped index: $index');
            print('store state user: ${viewState.store.userStatus}');
            print('store state user: ${viewState.store.hasUser}');
//            RouterNavigate.testNavigate(_tabRoute[index]);
//              RouterNavigate.switchScreen(web: true);
            if ((index == 1 || index == 4) && viewState.store.hasUser == false)
              RouterNavigate.navigateToPage(RoutePage.login);
            else if (index == 3)
              RouterNavigate.navigateToPage(
                _tabRoute[index],
                arg: Global.TY_SERVICE_URL,
              );
            else
              RouterNavigate.navigateToPage(_tabRoute[index]);
          },
          currentIndex: _navIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: FontSize.NORMAL.value,
          unselectedFontSize: FontSize.NORMAL.value,
          unselectedItemColor: Themes.defaultTextColor,
          fixedColor: Themes.defaultAccentColor,
          backgroundColor: Themes.defaultAppbarColor,
          items: List.generate(
            _tabTitle.length,
            (index) => BottomNavigationBarItem(
              icon: Icon(_tabIcon[index]),
              title: Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Text(_tabTitle[index]),
              ),
            ),
          ),
        );
      }),
    );
  }
}
