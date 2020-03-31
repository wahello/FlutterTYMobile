import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show Color, IconData;
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/resource_export.dart';
import 'package:flutter_ty_mobile/features/router/router_navigate.dart'
    show RoutePage;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_enum/generic_enum.dart';

part 'member_grid_data.freezed.dart';

@freezed
abstract class MemberGridDataFreezed with _$MemberGridDataFreezed {
  const factory MemberGridDataFreezed({
    @required String title,
    @required IconData iconData,
    @required Color iconDecorColorStart,
    @required Color iconDecorColorEnd,
    RoutePage route,
  }) = MemberGridData;

  const factory MemberGridDataFreezed.v2({
    @required String title,
    @required String imageName,
    RoutePage route,
  }) = MemberGridDataV2;
}

class MemberGridItem extends GenericEnum<MemberGridData> {
  const MemberGridItem._(MemberGridData value) : super(value);

  static MemberGridItem deposit = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleDeposit,
    iconData: IconData(0xf1c0, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#ffb468'),
    iconDecorColorEnd: HexColor.fromHex('#f36500'),
    route: RoutePage.deposit,
  ));
  static MemberGridItem transfer = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleTransfer,
    iconData: IconData(0xf079, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#6ede52'),
    iconDecorColorEnd: HexColor.fromHex('#32a063'),
  ));
  static MemberGridItem bankcard = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleCard,
    iconData: IconData(0xf09d, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#7bdefb'),
    iconDecorColorEnd: HexColor.fromHex('#0082ce'),
  ));
  static MemberGridItem withdraw = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleWithdraw,
    iconData: IconData(0xf155, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#7294f5'),
    iconDecorColorEnd: HexColor.fromHex('#3054bb'),
  ));
  static MemberGridItem balance = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleBalance,
    iconData: IconData(0xf03a, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#ff88f0'),
    iconDecorColorEnd: HexColor.fromHex('#ad2087'),
  ));
  static MemberGridItem wallet = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleWallet,
    iconData: IconData(0xf155, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#3df3c0'),
    iconDecorColorEnd: HexColor.fromHex('#119c8f'),
  ));
  static MemberGridItem stationMessages = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleMessage,
    iconData: IconData(0xf0e0, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#d265ff'),
    iconDecorColorEnd: HexColor.fromHex('#7c2fad'),
  ));
  static MemberGridItem accountCenter = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleAccount,
    iconData: IconData(0xf2b9, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#e65757'),
    iconDecorColorEnd: HexColor.fromHex('#ce0909'),
  ));
  static MemberGridItem transferRecord = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleTransaction,
    iconData: IconData(0xf0ca, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#f1dd98'),
    iconDecorColorEnd: HexColor.fromHex('#9c7407'),
  ));
  static MemberGridItem betRecord = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleBet,
    iconData: IconData(0xf1cd, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#33c8ff'),
    iconDecorColorEnd: HexColor.fromHex('#185cc3'),
  ));
  static MemberGridItem dealRecord = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleDeal,
    iconData: IconData(0xf0cb, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#c8de59'),
    iconDecorColorEnd: HexColor.fromHex('#7c9c1f'),
  ));
  static MemberGridItem flowRecord = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleFlow,
    iconData: IconData(0xf06d, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#ed6b72'),
    iconDecorColorEnd: HexColor.fromHex('#b72541'),
  ));
  static MemberGridItem agent = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleAgent,
    iconData: IconData(0xf2ba, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#e68f63'),
    iconDecorColorEnd: HexColor.fromHex('#a75433'),
  ));
  static MemberGridItem logout = MemberGridItem._(MemberGridData(
    title: localeStr.memberGridTitleLogout,
    iconData: IconData(0xf08b, fontFamily: 'FontAwesome'),
    iconDecorColorStart: HexColor.fromHex('#cccccc'),
    iconDecorColorEnd: HexColor.fromHex('#929292'),
  ));
}

class MemberGridItemV2 extends GenericEnum<MemberGridDataV2> {
  const MemberGridItemV2._(MemberGridDataV2 value) : super(value);

  static MemberGridItemV2 deposit = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleDeposit,
    imageName: 'images/user/macico_dsp.png',
    route: RoutePage.deposit,
  ));
  static MemberGridItemV2 transfer = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleTransfer,
    imageName: 'images/user/macico_tsf.png',
  ));
  static MemberGridItemV2 bankcard = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleCard,
    imageName: 'images/user/macico_bkcard.png',
  ));
  static MemberGridItemV2 withdraw = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleWithdraw,
    imageName: 'images/user/macico_wdl.png',
  ));
  static MemberGridItemV2 balance = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleBalance,
    imageName: 'images/user/macico_plaf.png',
  ));
  static MemberGridItemV2 wallet = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleWallet,
    imageName: 'images/user/macico_tsfwa.png',
  ));
  static MemberGridItemV2 stationMessages = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleMessage,
    imageName: 'images/user/macico_msg.png',
  ));
  static MemberGridItemV2 accountCenter = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleAccount,
    imageName: 'images/user/macico_cent.png',
  ));
  static MemberGridItemV2 transferRecord = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleTransaction,
    imageName: 'images/user/macico_tsfre.png',
  ));
  static MemberGridItemV2 betRecord = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleBet,
    imageName: 'images/user/macico_bthis.png',
  ));
  static MemberGridItemV2 dealRecord = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleDeal,
    imageName: 'images/user/macico_trans.png',
  ));
  static MemberGridItemV2 flowRecord = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleFlow,
    imageName: 'images/user/macico_rolb.png',
  ));
  static MemberGridItemV2 agent = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleAgent,
    imageName: 'images/user/macico_agent.png',
  ));
  static MemberGridItemV2 logout = MemberGridItemV2._(MemberGridDataV2(
    title: localeStr.memberGridTitleLogout,
    imageName: 'images/user/macico_logout.png',
  ));
}
