import 'package:flutter/material.dart' show Color, IconData;
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/widget_res_export.dart';
import 'package:generic_enum/generic_enum.dart';

class MemberGridData {
  final String title;
  final IconData iconData;
  final Color iconDecorColorStart;
  final Color iconDecorColorEnd;
  final RouterPageInfo route;

  MemberGridData(this.title, this.iconData, this.iconDecorColorStart,
      this.iconDecorColorEnd,
      {this.route});
}

class MemberGridItem extends GenericEnum<MemberGridData> {
  const MemberGridItem._(MemberGridData value) : super(value);

  static MemberGridItem deposit = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleDeposit,
    IconData(0xf1c0, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#ffb468'),
    HexColor.fromHex('#f36500'),
  ));
  static MemberGridItem transfer = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleTransfer,
    IconData(0xf079, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#6ede52'),
    HexColor.fromHex('#32a063'),
  ));
  static MemberGridItem bankcard = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleCard,
    IconData(0xf09d, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#7bdefb'),
    HexColor.fromHex('#0082ce'),
  ));
  static MemberGridItem withdraw = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleWithdraw,
    IconData(0xf155, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#7294f5'),
    HexColor.fromHex('#3054bb'),
  ));
  static MemberGridItem balance = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleBalance,
    IconData(0xf03a, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#ff88f0'),
    HexColor.fromHex('#ad2087'),
  ));
  static MemberGridItem wallet = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleWallet,
    IconData(0xf155, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#3df3c0'),
    HexColor.fromHex('#119c8f'),
  ));
  static MemberGridItem stationMessages = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleMessage,
    IconData(0xf0e0, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#d265ff'),
    HexColor.fromHex('#7c2fad'),
  ));
  static MemberGridItem accountCenter = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleAccount,
    IconData(0xf2b9, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#e65757'),
    HexColor.fromHex('#ce0909'),
  ));
  static MemberGridItem transferRecord = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleTransaction,
    IconData(0xf0ca, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#f1dd98'),
    HexColor.fromHex('#9c7407'),
  ));
  static MemberGridItem betRecord = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleBet,
    IconData(0xf1cd, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#33c8ff'),
    HexColor.fromHex('#185cc3'),
  ));
  static MemberGridItem dealRecord = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleDeal,
    IconData(0xf0cb, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#c8de59'),
    HexColor.fromHex('#7c9c1f'),
  ));
  static MemberGridItem flowRecord = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleFlow,
    IconData(0xf06d, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#ed6b72'),
    HexColor.fromHex('#b72541'),
  ));
  static MemberGridItem agent = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleAgent,
    IconData(0xf2ba, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#e68f63'),
    HexColor.fromHex('#a75433'),
  ));
  static MemberGridItem logout = MemberGridItem._(MemberGridData(
    localeStr.memberGridTitleLogout,
    IconData(0xf08b, fontFamily: 'FontAwesome'),
    HexColor.fromHex('#cccccc'),
    HexColor.fromHex('#929292'),
  ));
}
