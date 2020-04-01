import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/general/text_input_widget_export.dart';
import 'package:flutter_ty_mobile/features/general/widgets/dropdown_titled_widget.dart';
import 'package:flutter_ty_mobile/features/general/widgets/message_display.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/form/deposit_form.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_freezed.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/presentation/widgets/payment_tutorial.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/utils/value_range.dart';
import 'package:intl/intl.dart' show NumberFormat;

/// Content View for all other types of Payment
///@author H.C.CHIANG
///@version 2020/3/26
class PaymentContentOnline extends StatefulWidget {
  final List<PaymentFreezed> dataList;
  final Function depositFuncCall;
  final List tutorial;

  PaymentContentOnline({
    this.dataList,
    this.depositFuncCall,
    this.tutorial,
  });

  @override
  _PaymentContentOnlineState createState() => _PaymentContentOnlineState();
}

class _PaymentContentOnlineState extends State<PaymentContentOnline> {
  final String tag = 'PaymentContentOnline';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  PaymentDataOther _otherData;
  bool _autoValidate = false;

  int _bankSelectedIndex = -1;
  int _bankSelectedId = -1;
  int _methodSelected;
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
        bankId: _bankSelectedId,
        amount: _depositAmount,
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
    _otherData = widget.dataList[0];
    _methodSelected = _otherData.amountType;
    _bankSelectedId = _otherData.bankAccountId;
    _bankSelectedIndex = _otherData.sb[0];
    _depositAmount =
        (_otherData.amountOption != null && _otherData.amountOption.isNotEmpty)
            ? _otherData.amountOption[0].toString()
            : '0';
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
      return Container(
        child: Column(
          children: <Widget>[
//            Text(widget.dataList.toString()),
//            SizedBox(height: 8.0),
            new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
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
                      if (data is PaymentDataOther) {
                        if (_otherData == data) return;
                        print('change method: $data');
                        _methodSelected = _otherData.amountType;
                        _bankSelectedId = _otherData.bankAccountId;
                        _bankSelectedIndex = _otherData.sb[0];
                        setState(() {
                          _otherData = data;
                        });
                      }
                    },
                    minusFieldHeight: 8,
                  ),
                  /* Amount Input Field */
                  (_otherData.amountOption != null &&
                          _otherData.amountOption.isNotEmpty)
                      ? DropdownTitledWidget(
                          titleText: localeStr.depositPaymentSpinnerTitleBank,
                          builder: (context) {
                            return _otherData.amountOption.map<Widget>((item) {
                              return Text(
                                item,
                                style: TextStyle(
                                    color: Themes.defaultTextColorWhite),
                              );
                            }).toList();
                          },
                          menuItems: _otherData.amountOption.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          changeNotify: (data) {
                            print('change amount: $data');
                            if (_depositAmount != data.toString())
                              setState(() {
                                _depositAmount = data.toString();
                              });
                          },
                          minusFieldHeight: 8,
                        )
                      : TextInputWidget(
                          type: TextInputTypeFreezed.valid(
                            titleText: localeStr.depositPaymentEditTitleAmount,
                            hintText: localeStr
                                .depositPaymentEditTitleAmountHintRange(
                                    _otherData.min ?? 1, _otherData.max),
                            fieldValidator: (value) =>
                                value.contains('.') == false &&
                                        rangeCheck(
                                          value: (value.isNotEmpty)
                                              ? int.parse(value)
                                              : 0,
                                          min: _otherData.min ?? 1,
                                          max: _otherData.max,
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
                                  .format(_otherData.max)),
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
            SizedBox(height: 12.0),
            /* Tutorial Button */
            (widget.tutorial != null)
                ? Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child:
                              Text(localeStr.depositPaymentButtonTitleTutorial),
                          color: Themes.buttonSubColor,
                          textColor: Themes.defaultTextColorBlack,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => new PaymentTutorial(
                                tutorialData: widget.tutorial,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                : SizedBox.shrink(),
          ],
        ),
      );
    }
  }
}
