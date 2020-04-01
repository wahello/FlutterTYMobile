part of 'feature_screen_view.dart';

///@author H.C.CHIANG
///@version 2020/2/26
class ScreenMenuBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _ScreenMenuBarState createState() => _ScreenMenuBarState();

  @override
  Size get preferredSize => Size(Global.device.width, Global.APP_BAR_HEIGHT);
}

class _ScreenMenuBarState extends State<ScreenMenuBar> {
  Widget _lastActionWidget;
  bool _usingUserAction = false;

  @override
  void initState() {
    _lastActionWidget = buttonGroup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewState = FeatureScreenInheritedWidget.of(context);
    return AppBar(
      /* App bar Icon */
      title: Image.asset(
        Res.iconBarLogoEg,
        scale: 4,
      ),
      titleSpacing: 0,
      centerTitle: false,
      /* Appbar Title */
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Observer(builder: (_) {
          final page = viewState.store.pageInfo ?? RoutePage.template.value;
          return Text(
            page.title,
            style: TextStyle(fontSize: FontSize.MESSAGE.value),
          );
        }),
        titlePadding: EdgeInsetsDirectional.only(
          start: Global.APP_BAR_HEIGHT / 3,
          bottom: (Global.APP_BAR_HEIGHT / 3) - 4,
        ),
      ),
      /* App bar Left Actions */
      leading: Observer(
        builder: (_) {
          final showMenu = viewState.store.pageInfo.isFeature ?? true;
          if (showMenu) {
            return IconButton(
              icon: Icon(Icons.menu, color: Themes.defaultAccentColor),
              tooltip: localeStr.btnMenu,
              onPressed: () {
                viewState.scaffoldKey.currentState.openDrawer();
              },
            );
          } else {
            return IconButton(
              icon: Icon(Icons.arrow_back, color: Themes.iconColor),
              tooltip: localeStr.btnBack,
              onPressed: () {
                RouterNavigate.navigateBack();
              },
            );
          }
        },
      ),
      /* App bar Right Actions */
      actions: <Widget>[
        Observer(builder: (_) {
          final hide = viewState.store.pageInfo.hideAppbarActions;
          if (hide) return SizedBox.shrink();
          final hasUser = viewState.store.hasUser ?? false;
          if (hasUser != _usingUserAction) {
            _lastActionWidget = (hasUser) ? userGroup() : buttonGroup();
            _usingUserAction = hasUser;
          }
          return _lastActionWidget;
        }),
      ],
    );
  }

  /// Right Action Widget when user logged in
  Widget userGroup() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Transform.scale(
        scale: 0.75,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(36.0),
          child: networkImageBuilder('/images/lang_chn.jpg', imgScale: 3.0),
        ),
      ),
    );
//    return Container(
//      child: Padding(
//        padding: const EdgeInsets.only(top: 2.0, right: 3.0),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.end,
//          children: <Widget>[
//            Row(
//              children: <Widget>[Text(user.account)],
//            ),
//            Row(
//              children: <Widget>[Text(user.credit.trimValue(creditSign: true))],
//            ),
//          ],
//        ),
//      ),
//    );
  }

  /// Right Action Widget when no user
  Widget buttonGroup() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: <Widget>[
            ButtonTheme(
              height: 30,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(4.0),
              ),
              child: RaisedButton(
                color: Themes.defaultAccentColor,
                child: new Text(
                  localeStr.pageTitleRegister2,
                  style: TextStyle(
                      fontSize: FontSize.NORMAL.value + 1,
                      color: Themes.defaultTextColorBlack),
                ),
                visualDensity: VisualDensity(horizontal: -3.0),
                onPressed: () =>
                    RouterNavigate.navigateToPage(RoutePage.template2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
