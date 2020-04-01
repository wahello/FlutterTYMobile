import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/general/text_input_widget_export.dart';
import 'package:flutter_ty_mobile/features/general/widgets/dropdown_titled_widget.dart';
import 'package:flutter_ty_mobile/features/general/widgets/message_display.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/entity/payment_enum.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/form/deposit_form.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_freezed.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_promo.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/utils/string_util.dart'
    show ValueStringExtension;
import 'package:flutter_ty_mobile/utils/value_range.dart';
import 'package:intl/intl.dart' show NumberFormat;

/// Content View for [PaymentEnum.bank]
///@author H.C.CHIANG
///@version 2020/3/26
class PaymentContentLocal extends StatefulWidget {
  final List<PaymentFreezed> dataList;
  final List<PaymentPromoData> promoList;
  final Function depositFuncCall;

  PaymentContentLocal({this.dataList, this.promoList, this.depositFuncCall});

  @override
  _PaymentContentLocalState createState() => _PaymentContentLocalState();
}

class _PaymentContentLocalState extends State<PaymentContentLocal> {
  final String tag = 'PaymentContentLocal';
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  PaymentDataLocal _localData;
  bool _autoValidate = false;

  int _promoSelected = -1;
  int _bankSelectedIndex = -1;
  int _bankSelectedId = -1;
  int _methodSelected;
  String _accountOwner = '';
  String _depositAmount = '';

  void _confirmPressed() {
    print('confirm pressed');
    if (_formKey.currentState.validate()) {
      print('field validated');
      // hide keyboard
      try {
        FocusScope.of(context).unfocus();
      } catch (e) {
        MyLogger.warn(msg: 'hide keyboard exception:', error: e);
      }
      //   If all data are correct then call save() to trigger Form's onSave method
      _formKey.currentState.save();
      var form = DepositDataForm(
        bankIndex: _bankSelectedIndex,
        methodId: _methodSelected,
        name: _accountOwner,
        bankId: _bankSelectedId,
        amount: _depositAmount,
        promoId: _promoSelected,
      );
      print('deposit form: ${form.toJson()}');
      widget.depositFuncCall(form);
    } else {
      print('field not validate');
      //    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
//    if (message.isNotEmpty)
//      showFloatingFlushBar(Scaffold.of(context).context, message);
  }

  @override
  void initState() {
    _localData = widget.dataList[0];
    _methodSelected ??= 1;
    _bankSelectedId = _localData.bankAccountId;
    _bankSelectedIndex = _localData.bankIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.dataList == null || widget.dataList.isEmpty) {
      return Center(
        child: MessageDisplay(
          message: Failure.dataSource().message,
        ),
      );
    } else {
      List<String> methods = [
        localeStr.depositPaymentMethodLocal1,
        localeStr.depositPaymentMethodLocal2,
      ];
      List<PaymentPromoData> promos = [
        PaymentPromoData(
          promoId: -1,
          promoDesc: localeStr.depositPaymentNoPromo,
        ),
      ];
      promos.addAll(widget.promoList);
      return Container(
        child: Column(
          children: <Widget>[
//            Text(widget.dataList.toString()),
//            SizedBox(height: 8.0),
//            Text(widget.promoList.toString()),
            new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
                  /* Promo Option */
                  DropdownTitledWidget(
                    titleText: localeStr.depositPaymentSpinnerTitlePromo,
                    builder: (context) {
                      return promos.map<Widget>((PaymentPromoData item) {
                        return Text(
                          item.promoDesc,
                          style: TextStyle(color: Themes.defaultTextColorWhite),
                        );
                      }).toList();
                    },
                    menuItems: promos.map((PaymentPromoData item) {
                      return DropdownMenuItem(
                        value: item.promoId,
                        child: Text(item.promoDesc),
                      );
                    }).toList(),
                    changeNotify: (data) {
                      if (data is PaymentPromoData)
                        _promoSelected = data.promoId;
                    },
                    initValue: -1,
                    minusFieldHeight: 8,
                  ),
                  /* Bank Option */
                  DropdownTitledWidget(
                    titleText: localeStr.depositPaymentSpinnerTitleBank,
                    builder: (context) {
                      return widget.dataList.map<Widget>((item) {
                        return Text(
                          item.type,
                          style: TextStyle(color: Themes.defaultTextColorWhite),
                        );
                      }).toList();
                    },
                    menuItems: widget.dataList.map((item) {
                      return DropdownMenuItem(
                        value: item.bankAccountId,
                        child: Text(item.type),
                      );
                    }).toList(),
                    changeNotify: (data) {
                      if (data is PaymentDataLocal) {
                        if (_localData == data) return;
                        print('change bank: $data');
                        _bankSelectedId = data.bankAccountId;
                        _bankSelectedIndex = data.bankIndex;
                        setState(() {
                          _localData = data;
                        });
                      }
                    },
                    minusFieldHeight: 8,
                  ),
                  /* Account Hint */
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 6.0),
                        child: Text(
                          localeStr.depositHintTextAccount,
                          style: TextStyle(color: Themes.hintHighlight),
                        ),
                      ),
                    ],
                  ),
                  /* Method Option */
                  DropdownTitledWidget(
                    titleText: localeStr.depositPaymentSpinnerTitleMethod,
                    builder: (context) {
                      return methods.map<Widget>((String item) {
                        return Text(
                          item,
                          style: TextStyle(color: Themes.defaultTextColorWhite),
                        );
                      }).toList();
                    },
                    menuItems: methods.map((value) {
                      return DropdownMenuItem(
                        value: methods.indexOf(value),
                        child: Text(value),
                      );
                    }).toList(),
                    changeNotify: (data) {
                      _methodSelected = int.parse(data) + 1;
                    },
                    initValue: 0,
                    minusFieldHeight: 8,
                  ),
                  /* Name Input Field */
                  TextInputWidget(
                    type: TextInputTypeFreezed.valid(
                      titleText: localeStr.depositPaymentEditTitleName,
                      hintText: localeStr.depositPaymentEditTitleNameHint,
                      fieldValidator: (value) =>
                          rangeCheck(value: value.length, min: 2, max: 16)
                              ? null
                              : localeStr.messageInvalidDepositName,
                      fieldSave: (value) => _accountOwner = value.trim(),
                    ),
                    persistHint: false,
                    minusFieldHeight: 8,
                    fieldPadding: const EdgeInsets.all(11.25),
                    chineseOnly: true,
                  ),
                  /* Amount Input Field */
                  TextInputWidget(
                    type: TextInputTypeFreezed.valid(
                      titleText: localeStr.depositPaymentEditTitleAmount,
                      hintText:
                          localeStr.depositPaymentEditTitleAmountHintRange(
                              _localData.min?.valueToInt ?? 1,
                              _localData.max.valueToInt),
                      fieldValidator: (value) => value.contains('.') == false &&
                              rangeCheck(
                                value:
                                    (value.isNotEmpty) ? int.parse(value) : 0,
                                min: _localData.min?.valueToInt ?? 1,
                                max: _localData.max.valueToInt,
                              )
                          ? null
                          : localeStr.messageInvalidDepositAmount,
                      fieldSave: (value) => _depositAmount = value.trim(),
                    ),
                    persistHint: false,
                    minusFieldHeight: 8,
                    fieldPadding: const EdgeInsets.all(11.25),
                    numbersOnly: true,
                  ),
                  /* Amount Limit Hint */
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 6.0),
                        child: Text(
                          localeStr.depositHintTextAmount(
                              NumberFormat.simpleCurrency(decimalDigits: 0)
                                  .format(_localData.max.valueToInt)),
                          style: TextStyle(color: Themes.hintHighlight),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* Confirm Button */
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text(localeStr.btnConfirm),
                    color: Themes.defaultAccentColor,
                    textColor: Themes.defaultTextColorBlack,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    onPressed: () {
                      try {
                        _confirmPressed();
                      } catch (e) {
                        MyLogger.error(
                            msg: 'form error: $e', error: e, tag: tag);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
