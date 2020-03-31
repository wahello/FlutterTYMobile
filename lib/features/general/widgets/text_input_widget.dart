import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show
        LengthLimitingTextInputFormatter,
        TextInputFormatter,
        WhitelistingTextInputFormatter;
import 'package:flutter_ty_mobile/core/internal/themes.dart';

import 'text_input_type_freezed.dart';

class TextInputWidget extends StatefulWidget {
  final TextInputTypeFreezed type;
  final EdgeInsetsGeometry fieldPadding;
  final int minusFieldHeight;
  final bool persistHint;
  final bool chineseOnly;
  final bool numbersOnly;
  final bool typeEmail;
  final bool typeDate;
  final int maxLength;

  TextInputWidget({
    key,
    this.type,
    this.fieldPadding,
    this.minusFieldHeight = 0,
    this.persistHint = true,
    this.chineseOnly = false,
    this.numbersOnly = false,
    this.typeEmail = false,
    this.typeDate = false,
    this.maxLength = 16,
  }) : super(key: key);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    var field;
    if (widget.type is TextInputTypeCustomValid)
      field = _createCustomValidateTextField(widget.type);
    else if (widget.type is TextInputTypeValid)
      field = _createValidateTextField(widget.type);
    else if (widget.type is TextInputTypeCustomNormal)
      field = _createCustomTextField(widget.type);
    else if (widget.type is TextInputTypeNormal)
      field = _createTextField(widget.type);
    else
      return SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0, top: 2.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _createPrefix(widget.type.titleIcon, widget.type.titleText),
            field,
          ],
        ),
      ),
    );
  }

  Widget _createPrefix(IconData iconData, String titleText) {
    if (iconData != null && titleText != null) {
      return Expanded(
        flex: 2,
        child: Container(
          color: Themes.defaultWidgetBgColor,
          height: Themes.fieldHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                iconData,
                size: Themes.fieldIconSize,
                color: Themes.iconColorDark,
              ),
              Text(titleText),
            ],
          ),
        ),
      );
    } else if (iconData != null) {
      return Expanded(
        flex: 1,
        child: Container(
          height: Themes.fieldHeight,
          color: Themes.defaultWidgetBgColor,
          child: Icon(
            iconData,
            size: Themes.fieldIconSize,
            color: Themes.iconColorDark,
          ),
        ),
      );
    } else if (titleText != null) {
      return Expanded(
        flex: 2,
        child: Container(
          color: Themes.defaultWidgetBgColor,
          height: Themes.fieldHeight - widget.minusFieldHeight,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(titleText),
            ),
          ),
        ),
      );
    } else
      return SizedBox.shrink();
  }

  InputDecoration _inputDecor(String hint) {
    if (hint == null || hint.isEmpty) {
      return InputDecoration(
        contentPadding: widget.fieldPadding ?? EdgeInsets.all(8.0),
      );
    } else {
      return (widget.persistHint)
          ? InputDecoration(
              labelText: hint,
              contentPadding: widget.fieldPadding ?? EdgeInsets.all(8.0),
            )
          : InputDecoration(
              hintText: hint,
              contentPadding: widget.fieldPadding ?? EdgeInsets.all(8.0),
            );
    }
//  InputDecoration(
//  labelText: type.hintText,
//  labelStyle: TextStyle(fontSize: FontSize.NORMAL.value),
//  contentPadding: widget.fieldPadding ?? EdgeInsets.all(8.0),
//  border: OutlineInputBorder(
//  borderRadius: BorderRadius.horizontal(right: Radius.circular(4.0))),
//  ),
//  filled: true,
//  fillColor: Themes.fieldInputBgColor,
//  isDense: true,
//  );
  }

  TextInputType _keyboardType() {
    if (widget.numbersOnly)
      return TextInputType.number;
    else if (widget.typeEmail)
      return TextInputType.emailAddress;
    else if (widget.typeDate)
      return TextInputType.datetime;
    else
      return TextInputType.text;
  }

  List<TextInputFormatter> _formatterList() {
    if (widget.chineseOnly && widget.numbersOnly) {
      return [
        WhitelistingTextInputFormatter(RegExp("[\u4e00-\u9fa5]|[0-9]")),
        LengthLimitingTextInputFormatter(widget.maxLength ~/ 2),
      ];
    } else if (widget.chineseOnly) {
      return [
        WhitelistingTextInputFormatter(RegExp("[\u4e00-\u9fa5]")),
        LengthLimitingTextInputFormatter(widget.maxLength ~/ 2),
      ];
    } else if (widget.numbersOnly) {
      return [
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(widget.maxLength),
      ];
    } else {
      return [
        WhitelistingTextInputFormatter(
            RegExp("[a-zA-Z]|[\u4e00-\u9fa5]|[0-9]")),
        LengthLimitingTextInputFormatter(widget.maxLength),
      ];
    }
  }

  Widget _createCustomValidateTextField(TextInputTypeCustomValid type) {
    return Expanded(
      flex: 5,
      child: TextFormField(
        keyboardType: _keyboardType(),
        inputFormatters: _formatterList(),
        decoration: type.inputDecoration,
        validator: type.fieldValidator,
        onSaved: type.fieldSave,
        obscureText: type.hideText,
        initialValue: type.initText,
      ),
    );
  }

  Widget _createValidateTextField(TextInputTypeValid type) {
    return Expanded(
      flex: 5,
      child: TextFormField(
        keyboardType: _keyboardType(),
        inputFormatters: _formatterList(),
        decoration: _inputDecor(type.hintText),
        validator: type.fieldValidator,
        onSaved: type.fieldSave,
        obscureText: type.hideText,
        initialValue: type.initText,
      ),
    );
  }

  Widget _createCustomTextField(TextInputTypeCustomNormal type) {
    return Expanded(
      flex: 5,
      child: TextFormField(
        keyboardType: _keyboardType(),
        inputFormatters: _formatterList(),
        decoration: type.inputDecoration,
        obscureText: type.hideText,
        controller: type.editingController,
        onChanged: type.editingFunction,
      ),
    );
  }

  Widget _createTextField(TextInputTypeNormal type) {
    return Expanded(
      flex: 5,
      child: TextFormField(
        keyboardType: _keyboardType(),
        inputFormatters: _formatterList(),
        decoration: _inputDecor(type.hintText),
        obscureText: type.hideText,
        controller: type.editingController,
        onChanged: type.editingFunction,
      ),
    );
  }

//    /// 改字数限制，每输入一个中文字符，要减1。
//    /// 字符要求：10个汉字或20个英文
//    void _changeMaxLimit(String value) {
//      maxLength = 20;
//      for (int i = 0; i < value.length; i++) {
//        if (value.codeUnitAt(i) > 122) {
//          maxLength--;
//        }
//      }
//      setState(() {});
//    }
}
