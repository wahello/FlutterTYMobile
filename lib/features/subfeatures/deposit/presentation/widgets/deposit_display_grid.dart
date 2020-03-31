import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/entity/payment_enum.dart';

/// Grid View for [PaymentEnum]
///@author H.C.CHIANG
///@version 2020/3/26
class DepositDisplayGrid extends StatefulWidget {
  final List<PaymentEnum> types;
  final Function pressedCallback;

  DepositDisplayGrid({key, this.types, this.pressedCallback}) : super(key: key);

  @override
  _DepositDisplayGridState createState() => _DepositDisplayGridState();
}

class _DepositDisplayGridState extends State<DepositDisplayGrid> {
  int _clicked = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        childAspectRatio: 3.5,
      ),
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.types.length,
      itemBuilder: (context, index) {
        PaymentEnum type = widget.types[index];
        return ConstrainedBox(
          constraints: const BoxConstraints.tightFor(height: 24),
          child: RaisedButton(
            visualDensity: VisualDensity.compact,
            color: (_clicked == index)
                ? Themes.defaultAccentColor
                : Themes.defaultDisabledColor,
            child: Text(
              type.title,
              style: TextStyle(
                  color: (_clicked == index)
                      ? Themes.defaultTextColorBlack
                      : Themes.defaultTextColor),
            ),
            onPressed: () {
              if (_clicked == index) return;
              setState(() {
                _clicked = index;
              });
              widget.pressedCallback(type);
            },
          ),
        );
      },
    );
  }
}
