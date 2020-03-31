import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_input_type_freezed.freezed.dart';

@freezed
abstract class TextInputTypeFreezed with _$TextInputTypeFreezed {
  const factory TextInputTypeFreezed({
    Key key,
    @required TextEditingController editingController,
    @required ValueChanged<String> editingFunction,
    IconData titleIcon,
    String titleText,
    String hintText,
    @Default(false) bool hideText,
  }) = TextInputTypeNormal;

  const factory TextInputTypeFreezed.custom({
    Key key,
    @required TextEditingController editingController,
    @required ValueChanged<String> editingFunction,
    InputDecoration inputDecoration,
    IconData titleIcon,
    String titleText,
    String hintText,
    @Default(false) bool hideText,
  }) = TextInputTypeCustomNormal;

  const factory TextInputTypeFreezed.valid({
    Key key,
    @required FormFieldValidator<String> fieldValidator,
    @required FormFieldSetter<String> fieldSave,
    IconData titleIcon,
    String titleText,
    String hintText,
    @Default(false) bool hideText,
    String initText,
  }) = TextInputTypeValid;

  const factory TextInputTypeFreezed.cValid({
    Key key,
    @required FormFieldValidator<String> fieldValidator,
    @required FormFieldSetter<String> fieldSave,
    InputDecoration inputDecoration,
    IconData titleIcon,
    String titleText,
    String hintText,
    @Default(false) bool hideText,
    String initText,
  }) = TextInputTypeCustomValid;
}
