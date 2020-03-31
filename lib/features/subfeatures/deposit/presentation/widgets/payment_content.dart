import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/entity/payment_enum.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_freezed.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/model/payment_promo.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/presentation/widgets/payment_content_local.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/presentation/widgets/payment_content_notice.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/presentation/widgets/payment_content_online.dart';

/// Content View
///@author H.C.CHIANG
///@version 2020/3/26
class PaymentContent extends StatefulWidget {
  final Function depositCall;

  PaymentContent({key, this.depositCall}) : super(key: key);

  @override
  PaymentContentState createState() => PaymentContentState();
}

class PaymentContentState extends State<PaymentContent> {
  PaymentEnum paymentType;
  Widget typeContent;
  Widget noticeContent;

  void update({
    PaymentEnum type,
    List<PaymentFreezed> data,
    List<PaymentPromoData> promos,
  }) {
    if (paymentType != type) {
      setState(() {
        typeContent = (type == PaymentEnum.bank)
            ? PaymentContentLocal(
                dataList: data,
                promoList: promos,
                depositFuncCall: widget.depositCall,
              )
            : PaymentContentOnline(
                dataList: data,
                depositFuncCall: widget.depositCall,
                tutorial: type.tutorial,
              );
        noticeContent = PaymentContentNotice(type.typeKey);
      });
      paymentType = type;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (paymentType == null)
      return Center(
        child: CircularProgressIndicator(),
      );
    else
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
          child: Column(
            children: <Widget>[
              typeContent,
              SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  Text(
                    '${localeStr.depositHintTextTitle}：',
                    style: TextStyle(
                      color: Themes.defaultTextColorWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              noticeContent,
            ],
          ),
        ),
      );
  }
}
