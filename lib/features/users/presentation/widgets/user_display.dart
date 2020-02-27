import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/internal/hex_color.dart';
import 'package:flutter_ty_mobile/features/general/data/holds/user_data.dart';
import 'package:flutter_ty_mobile/features/router/router_navigate.dart'
    show getRouterStreams;
import 'package:flutter_ty_mobile/features/users/domain/entity/user_entity.dart';

///@author H.C.CHIANG
///@version 2020/1/15
class UserDisplay extends StatelessWidget {
  final UserEntity user;
  final Color bgColor = HexColor.fromHex('#e8e8e8');

  UserDisplay({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getRouterStreams.updateUser(user);
    getUserData.login(user);
//    print('test user data: ${getUserData.toString()}');
    return Container(
      color: bgColor,
      constraints: BoxConstraints.tightFor(width: Global.device.width - 16),
      child: Text(user.toString(), style: TextStyle(color: Colors.black87)),
    );
  }
}
