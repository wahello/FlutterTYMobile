import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';

///
///@author H.C.CHIANG
///@version 2020/1/20
class TextInputWidget extends StatelessWidget {
  final TextEditingController editingController;
  final InputDecoration inputDecoration;
  final IconData iconData;
  final String hintText;
  final bool hideText;
  final FormFieldValidator<String> fieldValidator;
  final FormFieldSetter<String> fieldSave;

  TextInputWidget({
    Key key,
    @required this.editingController,
    this.inputDecoration,
    this.iconData,
    this.hintText = '',
    this.hideText = false,
    this.fieldValidator,
    this.fieldSave,
  }) : super(key: key);

  TextInputWidget.validCheck({
    Key key,
    @required this.fieldValidator,
    @required this.fieldSave,
    this.inputDecoration,
    this.iconData,
    this.hintText = '',
    this.hideText = false,
    this.editingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (inputDecoration != null && fieldValidator != null && fieldSave != null)
      return _createCustomValidateTextField();
    else if (fieldValidator != null && fieldSave != null)
      return _createValidateTextField();
    else if (inputDecoration != null && iconData != null)
      return _createCustomTextField();
    else if (iconData != null)
      return _createBaseTextFieldWithIcon();
    else
      return _createTextField();
  }

  Widget _createCustomValidateTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SizedBox(
                height: Themes.fieldHeight,
                child: Container(
                  color: Themes.defaultWidgetBgColor,
                  child: Icon(
                    iconData,
                    size: Themes.fieldIconSize,
                    color: Themes.iconColorDark,
                  ),
                ),
              ),
            ),
            new Expanded(
              flex: 5,
              child: TextFormField(
                decoration: inputDecoration,
                validator: fieldValidator,
                onSaved: fieldSave,
                obscureText: hideText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createValidateTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SizedBox(
                height: Themes.fieldHeight,
                child: Container(
                  color: Themes.defaultWidgetBgColor,
                  child: Icon(
                    iconData,
                    size: Themes.fieldIconSize,
                    color: Themes.iconColorDark,
                  ),
                ),
              ),
            ),
            new Expanded(
              flex: 5,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: hintText,
//                  labelStyle: TextStyle(fontSize: FontSize.NORMAL.value),
//                  border: InputBorder.none,
//                  filled: true,
//                  fillColor: Themes.fieldInputBgColor,
//                  isDense: true,
                ),
                validator: fieldValidator,
                onSaved: fieldSave,
                obscureText: hideText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createCustomTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: Container(
                color: Themes.defaultWidgetBgColor,
                child: Icon(
                  iconData,
                  size: Themes.fieldIconSize,
                  color: Themes.iconColorDark,
                ),
              ),
            ),
            new Expanded(
              flex: 5,
              child: TextFormField(
                decoration: inputDecoration,
                controller: editingController,
                obscureText: hideText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createBaseTextFieldWithIcon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: Container(
                color: Themes.defaultWidgetBgColor,
                child: Icon(
                  iconData,
                  size: Themes.fieldIconSize,
                  color: Themes.iconColorDark,
                ),
              ),
            ),
            new Expanded(
              flex: 5,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: hintText,
                ),
                controller: editingController,
                obscureText: hideText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: hintText,
                ),
                controller: editingController,
                obscureText: hideText,
              ),
            ),
          ],
        ),
      ),
    );
  }

//  inputDecoration: InputDecoration(
//  labelText: localeStr.hintAccountPassword,
//  border: OutlineInputBorder(
//    borderRadius: BorderRadius.horizontal(right: Radius.circular(4.0))),
//  ),
}
