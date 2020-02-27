part of 'feature_screen_view.dart';

///@author H.C.CHIANG
///@version 2020/2/26
class ScreenDrawer extends StatelessWidget {
  const ScreenDrawer();

  static final List<Widget> _menuIcons = [
    Icon(
      IconData(0xf015, fontFamily: 'FontAwesome'),
      color: Themes.iconColor,
    ),
  ];

  static final List<RouterPageInfo> _menuRoute = [
    RouterPageInfo.home,
  ];

  @override
  Widget build(BuildContext context) {
    final viewState = FeatureScreenInheritedWidget.of(context);
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          /* Drawer Header */
          DrawerHeader(
            decoration: BoxDecoration(color: Themes.defaultBackgroundColor),
            child: (viewState.store.hasUser)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'assets/images/vip/user_vip_${viewState.store.user.vip}.png',
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                          localeStr
                              .messageWelcomeUser(viewState.store.user.account),
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(localeStr.messageWelcome,
                          style: TextStyle(color: Colors.white)),
                      SizedBox(height: 8),
                      ButtonTheme(
                        child: RaisedButton(
                          color: HexColor.fromHex('#f4daa3'),
                          textColor: Themes.defaultTextColorBlack,
                          child: Text(localeStr.pageTitleLogin2),
                          onPressed: () {
                            if (viewState.scaffoldKey.currentState.isDrawerOpen)
                              Navigator.pop(context);
                            RouterNavigate.navigateToPage(RouterPageInfo.login);
                          },
                        ),
                      ),
                    ],
                  ),
          ),
          /* Drawer options list */
          Container(
            height: double.maxFinite,
            child: ListView.builder(
              itemCount: _menuRoute.length,
              itemBuilder: (context, index) {
                /* Generate Drawer List Items */
                return ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 4.0, left: 8.0),
                    child: Transform.scale(
                      scale: 1.05,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Themes.iconColor)),
                        child: Transform.scale(
                            scale: 0.75, child: _menuIcons[index]),
                      ),
                    ),
                  ),
                  title: Text(
                    _menuRoute[index].pageTitle,
                    style: TextStyle(fontSize: FontSize.MESSAGE.value),
                  ),
                  onTap: () {
                    if (RouterNavigate.current == _menuRoute[index].page)
                      return;
                    if (viewState.scaffoldKey.currentState.isDrawerOpen)
                      Navigator.pop(context); // close the drawer
                    RouterNavigate.navigateToPage(_menuRoute[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
