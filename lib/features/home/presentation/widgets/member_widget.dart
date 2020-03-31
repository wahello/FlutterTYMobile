import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:flutter_ty_mobile/features/users/data/models/user_freezed.dart'
    show LoginStatus;

import '../../../resource_export.dart';
import '../../../route_page_export.dart';

/// Creates a widget to show member info under Marquee
///@author H.C.CHIANG
///@version 2020/2/13
class MemberWidget extends StatefulWidget {
  MemberWidget({Key key}) : super(key: key);

  @override
  MemberWidgetState createState() => MemberWidgetState();
}

class MemberWidgetState extends State<MemberWidget> {
  double _areaHeight;
  LoginStatus _userData;

  void updateUser() {
    print('updating member area data...');
    print('streamed user: ${getRouteUserStreams.userStream.toList()}');
    setState(() {
      _userData = getRouteUserStreams.lastUser;
      print('member area user: $_userData');
    });
  }

  @override
  void initState() {
    _areaHeight = Global.device.height / 10.5;
    _userData = getRouteUserStreams.lastUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        /* Outside border */
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Themes.defaultAccentColor,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          color: Themes.defaultAppbarColor,
        ),
        /* Area frame */
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Themes.defaultAccentColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(4.0),
                  ),
                ),
                /* Area title message */
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 12.0, 6.0),
                      child: Text(
                        (_userData.loggedIn)
                            ? localeStr.homeHintWelcome
                            : localeStr.homeHintWelcomeLogin,
                        style: TextStyle(
                            color: Themes.defaultTextColorBlack,
                            fontSize: (Global.device.height > 700)
                                ? FontSize.NORMAL.value + 1
                                : FontSize.NORMAL.value),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              /* Area Content */
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(6.0),
                  ),
                ),
                child: _buildMemberArea(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberArea() {
    return Row(
      children: <Widget>[
        _buildLeftContent(),
        VerticalDivider(
          thickness: 2.0,
          color: Themes.defaultAccentColor,
        ),
        _buildRightContent(),
      ],
    );
  }

  Widget _buildLeftContent() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 4.0),
      child: (_userData.loggedIn)
          ? Padding(
              /// if logged in, show member info
              padding: EdgeInsets.only(left: 4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: _areaHeight * 0.9,
                          maxWidth: _areaHeight * 1.5,
                        ),
                        child: Text(
                          _userData.currentUser.account,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: FontSize.NORMAL.value,
                            color: Themes.defaultAccentColor,
                          ),
                        ),
                      ),
                      Text(localeStr.homeHintWelcome,
                          style: TextStyle(fontSize: FontSize.NORMAL.value)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        localeStr.homeHintMemberCreditLeft,
                        style: TextStyle(fontSize: FontSize.NORMAL.value),
                      ),
                      Text(
                        _userData.currentUser.credit
                            .trimValue(floorIfInt: true, creditSign: true),
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: FontSize.NORMAL.value,
                          color: Themes.defaultAccentColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : RaisedButton(
              /// if not logged in, show a login button
              child: Text(
                localeStr.pageTitleLogin2,
                style: TextStyle(
                  color: Themes.defaultAccentColor,
                  fontSize: FontSize.NORMAL.value,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Themes.defaultAccentColor),
                borderRadius: BorderRadius.circular(4.0),
              ),
              color: Themes.defaultAppbarColor,
              onPressed: () => RouterNavigate.navigateToPage(RoutePage.login),
            ),
    );
  }

  Widget _buildRightContent() {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 6.0, bottom: 2.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _createIconButton(
                Res.homeMemberAreaIconDeposit,
                localeStr.pageTitleDeposit,
                () {
                  (_userData.loggedIn)
                      ? RouterNavigate.navigateToPage(RoutePage.deposit)
                      : RouterNavigate.navigateToPage(RoutePage.login);
                },
              ),
              _createIconButton(
                Res.homeMemberAreaIconWithdraw,
                localeStr.pageTitleMemberWithdraw,
                () => FLToast.showInfo(text: localeStr.workInProgress),
              ),
              _createIconButton(
                Res.homeMemberAreaIconTransfer,
                localeStr.pageTitleMemberTransfer,
                () => FLToast.showInfo(text: localeStr.workInProgress),
              ),
              _createIconButton(
                Res.homeMemberAreaIconVip,
                'VIP',
                () => FLToast.showInfo(text: localeStr.workInProgress),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createIconButton(String urlIconName, String label, Function func) {
    return GestureDetector(
      onTap: func,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
            constraints:
                BoxConstraints.tightFor(height: (_areaHeight > 70) ? 30 : 24),
            child: networkImageBuilder(urlIconName),
          ),
          Text(
            label,
            style: TextStyle(
                color: Themes.defaultTextColor,
                fontSize: FontSize.NORMAL.value),
          ),
        ],
      ),
    );
  }
}
