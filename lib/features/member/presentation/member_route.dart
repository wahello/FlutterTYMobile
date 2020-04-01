import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:mobx/mobx.dart' show ReactionDisposer, reaction;
import 'package:relative_layout/relative_layout.dart';

import '../../resource_export.dart'
    show FontSize, Themes, ValueStringExtension, networkImageBuilder;
import '../../route_page_export.dart';
import 'member_grid_data.dart';
import 'state/member_credit_store.dart';

/// Main View of [Router.memberRoute]
/// @author H.C.CHIANG
/// @version 2020/2/18
class MemberRoute extends StatefulWidget {
  MemberRoute({Key key}) : super(key: key);

  @override
  _MemberRouteState createState() => _MemberRouteState();
}

class _MemberRouteState extends State<MemberRoute> {
  final String tag = 'MemberRoute';
  MemberCreditStore _store;
  List<ReactionDisposer> _disposers;

  String _credit = '';

  static final List<MemberGridItemV2> gridItems = [
    MemberGridItemV2.deposit,
    MemberGridItemV2.transfer,
    MemberGridItemV2.bankcard,
    MemberGridItemV2.withdraw,
    MemberGridItemV2.balance,
    MemberGridItemV2.wallet,
    MemberGridItemV2.stationMessages,
    MemberGridItemV2.accountCenter,
    MemberGridItemV2.transferRecord,
    MemberGridItemV2.betRecord,
    MemberGridItemV2.dealRecord,
    MemberGridItemV2.flowRecord,
    MemberGridItemV2.agent,
    MemberGridItemV2.logout,
  ];

  @override
  void initState() {
    _store ??= sl.get<MemberCreditStore>();
    _credit = _store.user.credit.trimValue(floorIfInt: true, creditSign: true);
    super.initState();
  }

  @override
  void didUpdateWidget(MemberRoute oldWidget) {
    super.didUpdateWidget(oldWidget);
    _store.getUser();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _disposers ??= [
      reaction(
        // Tell the reaction which observable to observe
        (_) => _store.credit,
        // Run some logic with the content of the observed field
        (String credit) => updateCredit(credit),
      ),
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }

  void updateCredit(String credit) {
    setState(() {
      _credit = credit.trimValue(floorIfInt: true, creditSign: true);
    });
    MyLogger.print(msg: 'credit update to $_credit', tag: tag);
  }

  void refresh() {
    print('pressed refresh');
    setState(() {
      _store.getCredit();
    });
  }

  void itemTapped(MemberGridDataV2 data) {
    print('item tapped: ${data.title}');
    if (data.route != null) {
      RouterNavigate.navigateToPage(data.route);
    } else {
      FLToast.showInfo(text: localeStr.workInProgress);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.0, 0.5, 1.0],
                    colors: [
                      Themes.linearAccentColor1,
                      Themes.linearAccentColor2,
                      Themes.linearAccentColor3
                    ],
                    tileMode: TileMode.clamp,
                  ),
                ),
                /* Member Header*/
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        /// vip level image
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: Image.asset(
                              'assets/images/vip/user_vip_${_store.user.vip}.png',
                              scale: 1.1,
                            ),
                          ),
                        ),

                        /// account name
                        Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              _store.user.account,
                              style: TextStyle(
                                fontSize: FontSize.SUBTITLE.value,
                                color: Themes.defaultTextColorBlack,
                              ),
                            ),
                          ),
                        ),

                        /// show user credit and provide a refresh button
                        Flexible(
                          flex: 1,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: FontSize.LARGE.value * 1.5,
                              maxWidth: Global.device.width * 0.9,
                            ),
                            child: RelativeLayout(
                              children: <Widget>[
                                LayoutId(
                                  id: RelativeId('A'),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: FontSize.LARGE.value * 1,
                                      maxWidth: Global.device.width * 0.75,
                                    ),
                                    // show user credit
                                    child: Text(
                                      _credit,
                                      style: TextStyle(
                                        fontSize: FontSize.LARGE.value,
                                        fontWeight: FontWeight.w600,
                                        color: Themes.defaultTextColorBlack,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                LayoutId(
                                  id: RelativeId('B',
                                      toRightOf: 'A',
                                      alignment: Alignment.center),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 2.0, left: 6.0),
                                    child: Container(
                                      constraints: BoxConstraints(
                                        minWidth: FontSize.NORMAL.value * 2.5,
                                        maxWidth: FontSize.NORMAL.value * 5,
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Themes.defaultWidgetBgColor,
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        color: Themes.linearAccentColor3,
                                      ),
                                      child: GestureDetector(
                                        onTap: refresh,
                                        child: Text(
                                          localeStr.btnRefresh,
                                          style: TextStyle(
                                            fontSize: FontSize.NORMAL.value,
                                            color: Themes.defaultTextColorBlack,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /* Features Grid */
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 2.0),
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 4, //3,
                  crossAxisSpacing: 4,
                  childAspectRatio: 1.0, //1.4,
                  shrinkWrap: true,
                  children: gridItems
                      .map((itemData) => _createGridItemV2(itemData.value))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

//  Widget _createGridItem(MemberGridData data) {
//    return GestureDetector(
//      onTap: () => itemTapped(data),
//      child: Container(
//        decoration: BoxDecoration(
//          color: Colors.black45,
//          borderRadius: BorderRadius.all(Radius.circular(8.0)),
//        ),
//        margin: const EdgeInsets.all(2.0),
//        child: Column(
//          mainAxisSize: MainAxisSize.min,
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(top: 4.0),
//              child: Container(
//                padding: const EdgeInsets.all(10.0),
//                decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    begin: Alignment.topCenter,
//                    end: Alignment.bottomCenter,
//                    colors: [data.iconDecorColorStart, data.iconDecorColorEnd],
//                    tileMode: TileMode.clamp,
//                  ),
//                  shape: BoxShape.circle,
//                ),
//                child: Icon(data.iconData),
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(top: 6.0),
//              child: Text(
//                data.title,
//                style: TextStyle(fontSize: FontSize.SUBTITLE.value - 1),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }

  Widget _createGridItemV2(MemberGridDataV2 data) {
    return GestureDetector(
      onTap: () => itemTapped(data),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        margin: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 6.0),
                child: networkImageBuilder(data.imageName, imgScale: 2.0)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                data.title,
                style: TextStyle(
                  fontSize: FontSize.SUBTITLE.value - 1,
                  color: Themes.defaultAccentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
