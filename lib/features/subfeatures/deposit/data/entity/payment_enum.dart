import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_enum/generic_enum.dart';

part 'payment_enum.freezed.dart';

enum TutorialItemType { Desc, Image, Button }

@freezed
abstract class PaymentTutorialItem with _$PaymentTutorialItem {
  const factory PaymentTutorialItem({
    @required int sortId,
    @required String value,
    @required TutorialItemType type,
  }) = _PaymentTutorialItem;
}

@freezed
abstract class PaymentEnumData with _$PaymentEnumData {
  const factory PaymentEnumData({
    @required String title,
    @required String jsonKey,
//    @required String jsonKey2,
    String tutorialTitle,
    List<PaymentTutorialItem> tutorialItem,
  }) = _PaymentEnumData;
}

class PaymentEnum extends GenericEnum<PaymentEnumData> {
  const PaymentEnum._(PaymentEnumData value) : super(value);

  static Map<int, PaymentEnum> get valueMap => {
        1: PaymentEnum.bank,
        2: PaymentEnum.online,
        3: PaymentEnum.wechat,
        4: PaymentEnum.quickPay,
        5: PaymentEnum.ali,
        7: PaymentEnum.union,
        8: PaymentEnum.cgp,
        9: PaymentEnum.atm,
      };

  static PaymentEnum bank = PaymentEnum._(PaymentEnumData(
//    title: 'bank',
    title: localeStr.depositPaymentTitleBank,
    jsonKey: '1',
//    jsonKey2: 'localbank',
  ));

  static PaymentEnum online = PaymentEnum._(PaymentEnumData(
//    title: 'online',
    title: localeStr.depositPaymentTitleOnline,
    jsonKey: '2',
//    jsonKey2: 'onlinepay',
  ));

  static PaymentEnum wechat = PaymentEnum._(PaymentEnumData(
//    title: 'wechat',
    title: localeStr.depositPaymentTitleWechat,
    jsonKey: '3',
//    jsonKey2: 'wechatpay',
    tutorialTitle: localeStr.depositNewbieWechat0,
    tutorialItem: [
      PaymentTutorialItem(
        sortId: 30,
        value: localeStr.depositNewbieWechat1,
        type: TutorialItemType.Desc,
      ),
      PaymentTutorialItem(
        sortId: 31,
        value: localeStr.depositNewbieWechat2,
        type: TutorialItemType.Desc,
      ),
      PaymentTutorialItem(
        sortId: 32,
        value: 'images/user/wch_teaching.gif',
        type: TutorialItemType.Image,
      ),
    ],
  ));

  static PaymentEnum quickPay = PaymentEnum._(PaymentEnumData(
//    title: 'quick',
    title: localeStr.depositPaymentTitleQuick,
    jsonKey: '4',
//    jsonKey2: 'quickpay',
    tutorialTitle: localeStr.depositNewbieQuick0,
    tutorialItem: List.generate(
      5,
      (index) => PaymentTutorialItem(
        sortId: 41 + index,
        value: 'images/newbie/KuaiJie_jjk_0${index + 1}.png',
        type: TutorialItemType.Image,
      ),
    ),
  ));

  static PaymentEnum ali = PaymentEnum._(
    PaymentEnumData(
//    title: 'ali',
      title: localeStr.depositPaymentTitleAli,
      jsonKey: '5',
//    jsonKey2: 'alipay',
      tutorialTitle: localeStr.depositNewbieAli0,
      tutorialItem: (List.generate(
            5,
            (index) => PaymentTutorialItem(
              sortId: 42 + index * 2,
              value: 'images/newbie/gfbehk_mo0${index + 1}.png',
              type: TutorialItemType.Image,
            ),
          ) +
          [
            PaymentTutorialItem(
              sortId: 41,
              value: localeStr.depositNewbieAli1,
              type: TutorialItemType.Desc,
            ),
            PaymentTutorialItem(
              sortId: 43,
              value: localeStr.depositNewbieAli2,
              type: TutorialItemType.Desc,
            ),
            PaymentTutorialItem(
              sortId: 45,
              value: localeStr.depositNewbieAli3,
              type: TutorialItemType.Desc,
            ),
            PaymentTutorialItem(
              sortId: 47,
              value: localeStr.depositNewbieAli4,
              type: TutorialItemType.Desc,
            ),
            PaymentTutorialItem(
              sortId: 49,
              value: localeStr.depositNewbieAli5,
              type: TutorialItemType.Desc,
            ),
          ])
        ..sort((a, b) => a.sortId.compareTo(b.sortId)),
    ),
  );

  static PaymentEnum jdcom = PaymentEnum._(PaymentEnumData(
//    title: 'union',
    title: localeStr.depositPaymentTitleJd,
    jsonKey: '7',
//    jsonKey2: 'unionpay',
    tutorialTitle: localeStr.depositNewbieJd0,
    tutorialItem: (List.generate(
          5,
          (index) => PaymentTutorialItem(
            sortId: 52 + index * 2,
            value: 'images/newbie/jdpay_0${index + 1}.jpg',
            type: TutorialItemType.Image,
          ),
        ) +
        [
          PaymentTutorialItem(
            sortId: 51,
            value: localeStr.depositNewbieJd1,
            type: TutorialItemType.Desc,
          ),
          PaymentTutorialItem(
            sortId: 53,
            value: localeStr.depositNewbieJd2,
            type: TutorialItemType.Desc,
          ),
          PaymentTutorialItem(
            sortId: 55,
            value: localeStr.depositNewbieJd3,
            type: TutorialItemType.Desc,
          ),
          PaymentTutorialItem(
            sortId: 57,
            value: localeStr.depositNewbieJd4,
            type: TutorialItemType.Desc,
          ),
        ])
      ..sort((a, b) => a.sortId.compareTo(b.sortId)),
  ));

  static PaymentEnum union = PaymentEnum._(PaymentEnumData(
//    title: 'union',
    title: localeStr.depositPaymentTitleUnion,
    jsonKey: '7',
//    jsonKey2: 'unionpay',
    tutorialTitle: localeStr.depositNewbieUnion0,
    tutorialItem: (List.generate(
          4,
          (index) => PaymentTutorialItem(
            sortId: 72 + index * 2,
            value: 'images/newbie/elpayth_0${index + 1}.png?v2',
            type: TutorialItemType.Image,
          ),
        ) +
        [
          PaymentTutorialItem(
            sortId: 71,
            value: localeStr.depositNewbieUnion1,
            type: TutorialItemType.Desc,
          ),
          PaymentTutorialItem(
            sortId: 73,
            value: localeStr.depositNewbieUnion2,
            type: TutorialItemType.Desc,
          ),
          PaymentTutorialItem(
            sortId: 75,
            value: localeStr.depositNewbieUnion3,
            type: TutorialItemType.Desc,
          ),
          PaymentTutorialItem(
            sortId: 77,
            value: localeStr.depositNewbieUnion4,
            type: TutorialItemType.Desc,
          ),
        ])
      ..sort((a, b) => a.sortId.compareTo(b.sortId)),
  ));

  static PaymentEnum cgp = PaymentEnum._(PaymentEnumData(
//    title: 'cgpay',
    title: localeStr.depositPaymentTitleCgp,
    jsonKey: '8',
//    jsonKey2: 'vc',
    tutorialTitle: localeStr.depositNewbieCgp0,
    tutorialItem: [
      PaymentTutorialItem(
        sortId: 81,
        value: localeStr.depositNewbieButtonCgp1,
        // https://www.gamewallet.asia/version.php?fn=gp_a&latest
        type: TutorialItemType.Button,
      ),
      PaymentTutorialItem(
        sortId: 82,
        value: localeStr.depositNewbieButtonCgp2,
        // https://www.vip66729.com/pdf/cpw.pdf
        type: TutorialItemType.Button,
      ),
    ],
  ));

  static PaymentEnum atm = PaymentEnum._(PaymentEnumData(
//    title: 'Web ATM',
    title: localeStr.depositPaymentTitleAtm,
    jsonKey: '9',
//    jsonKey2: 'atm',
  ));
}

extension PaymentEnumExtension on PaymentEnum {
  int get typeKey => int.parse(this.value.jsonKey);

  String get title => this.value.title;

  List get tutorial => (this.value.tutorialTitle != null)
      ? [this.value.tutorialTitle, this.value.tutorialItem]
      : null;
}
