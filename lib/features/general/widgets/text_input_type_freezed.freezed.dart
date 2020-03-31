// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'text_input_type_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TextInputTypeFreezedTearOff {
  const _$TextInputTypeFreezedTearOff();

  TextInputTypeNormal call(
      {Key key,
      @required TextEditingController editingController,
      @required void Function(String) editingFunction,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText = false}) {
    return TextInputTypeNormal(
      key: key,
      editingController: editingController,
      editingFunction: editingFunction,
      titleIcon: titleIcon,
      titleText: titleText,
      hintText: hintText,
      hideText: hideText,
    );
  }

  TextInputTypeCustomNormal custom(
      {Key key,
      @required TextEditingController editingController,
      @required void Function(String) editingFunction,
      InputDecoration inputDecoration,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText = false}) {
    return TextInputTypeCustomNormal(
      key: key,
      editingController: editingController,
      editingFunction: editingFunction,
      inputDecoration: inputDecoration,
      titleIcon: titleIcon,
      titleText: titleText,
      hintText: hintText,
      hideText: hideText,
    );
  }

  TextInputTypeValid valid(
      {Key key,
      @required String Function(String) fieldValidator,
      @required void Function(String) fieldSave,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText = false,
      String initText}) {
    return TextInputTypeValid(
      key: key,
      fieldValidator: fieldValidator,
      fieldSave: fieldSave,
      titleIcon: titleIcon,
      titleText: titleText,
      hintText: hintText,
      hideText: hideText,
      initText: initText,
    );
  }

  TextInputTypeCustomValid cValid(
      {Key key,
      @required String Function(String) fieldValidator,
      @required void Function(String) fieldSave,
      InputDecoration inputDecoration,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText = false,
      String initText}) {
    return TextInputTypeCustomValid(
      key: key,
      fieldValidator: fieldValidator,
      fieldSave: fieldSave,
      inputDecoration: inputDecoration,
      titleIcon: titleIcon,
      titleText: titleText,
      hintText: hintText,
      hideText: hideText,
      initText: initText,
    );
  }
}

// ignore: unused_element
const $TextInputTypeFreezed = _$TextInputTypeFreezedTearOff();

mixin _$TextInputTypeFreezed {
  Key get key;
  IconData get titleIcon;
  String get titleText;
  String get hintText;
  bool get hideText;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    @required
        Result custom(
            Key key,
            @required TextEditingController editingController,
            @required void Function(String) editingFunction,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText),
    @required
        Result valid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
    @required
        Result cValid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    Result custom(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText),
    Result valid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    Result cValid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    @required Result custom(TextInputTypeCustomNormal value),
    @required Result valid(TextInputTypeValid value),
    @required Result cValid(TextInputTypeCustomValid value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    Result custom(TextInputTypeCustomNormal value),
    Result valid(TextInputTypeValid value),
    Result cValid(TextInputTypeCustomValid value),
    @required Result orElse(),
  });

  $TextInputTypeFreezedCopyWith<TextInputTypeFreezed> get copyWith;
}

abstract class $TextInputTypeFreezedCopyWith<$Res> {
  factory $TextInputTypeFreezedCopyWith(TextInputTypeFreezed value,
          $Res Function(TextInputTypeFreezed) then) =
      _$TextInputTypeFreezedCopyWithImpl<$Res>;
  $Res call(
      {Key key,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText});
}

class _$TextInputTypeFreezedCopyWithImpl<$Res>
    implements $TextInputTypeFreezedCopyWith<$Res> {
  _$TextInputTypeFreezedCopyWithImpl(this._value, this._then);

  final TextInputTypeFreezed _value;
  // ignore: unused_field
  final $Res Function(TextInputTypeFreezed) _then;

  @override
  $Res call({
    Object key = freezed,
    Object titleIcon = freezed,
    Object titleText = freezed,
    Object hintText = freezed,
    Object hideText = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as Key,
      titleIcon:
          titleIcon == freezed ? _value.titleIcon : titleIcon as IconData,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      hideText: hideText == freezed ? _value.hideText : hideText as bool,
    ));
  }
}

abstract class $TextInputTypeNormalCopyWith<$Res>
    implements $TextInputTypeFreezedCopyWith<$Res> {
  factory $TextInputTypeNormalCopyWith(
          TextInputTypeNormal value, $Res Function(TextInputTypeNormal) then) =
      _$TextInputTypeNormalCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key key,
      TextEditingController editingController,
      void Function(String) editingFunction,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText});
}

class _$TextInputTypeNormalCopyWithImpl<$Res>
    extends _$TextInputTypeFreezedCopyWithImpl<$Res>
    implements $TextInputTypeNormalCopyWith<$Res> {
  _$TextInputTypeNormalCopyWithImpl(
      TextInputTypeNormal _value, $Res Function(TextInputTypeNormal) _then)
      : super(_value, (v) => _then(v as TextInputTypeNormal));

  @override
  TextInputTypeNormal get _value => super._value as TextInputTypeNormal;

  @override
  $Res call({
    Object key = freezed,
    Object editingController = freezed,
    Object editingFunction = freezed,
    Object titleIcon = freezed,
    Object titleText = freezed,
    Object hintText = freezed,
    Object hideText = freezed,
  }) {
    return _then(TextInputTypeNormal(
      key: key == freezed ? _value.key : key as Key,
      editingController: editingController == freezed
          ? _value.editingController
          : editingController as TextEditingController,
      editingFunction: editingFunction == freezed
          ? _value.editingFunction
          : editingFunction as void Function(String),
      titleIcon:
          titleIcon == freezed ? _value.titleIcon : titleIcon as IconData,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      hideText: hideText == freezed ? _value.hideText : hideText as bool,
    ));
  }
}

class _$TextInputTypeNormal
    with DiagnosticableTreeMixin
    implements TextInputTypeNormal {
  const _$TextInputTypeNormal(
      {this.key,
      @required this.editingController,
      @required this.editingFunction,
      this.titleIcon,
      this.titleText,
      this.hintText,
      this.hideText = false})
      : assert(editingController != null),
        assert(editingFunction != null),
        assert(hideText != null);

  @override
  final Key key;
  @override
  final TextEditingController editingController;
  @override
  final void Function(String) editingFunction;
  @override
  final IconData titleIcon;
  @override
  final String titleText;
  @override
  final String hintText;
  @JsonKey(defaultValue: false)
  @override
  final bool hideText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextInputTypeFreezed(key: $key, editingController: $editingController, editingFunction: $editingFunction, titleIcon: $titleIcon, titleText: $titleText, hintText: $hintText, hideText: $hideText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextInputTypeFreezed'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('editingController', editingController))
      ..add(DiagnosticsProperty('editingFunction', editingFunction))
      ..add(DiagnosticsProperty('titleIcon', titleIcon))
      ..add(DiagnosticsProperty('titleText', titleText))
      ..add(DiagnosticsProperty('hintText', hintText))
      ..add(DiagnosticsProperty('hideText', hideText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextInputTypeNormal &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.editingController, editingController) ||
                const DeepCollectionEquality()
                    .equals(other.editingController, editingController)) &&
            (identical(other.editingFunction, editingFunction) ||
                const DeepCollectionEquality()
                    .equals(other.editingFunction, editingFunction)) &&
            (identical(other.titleIcon, titleIcon) ||
                const DeepCollectionEquality()
                    .equals(other.titleIcon, titleIcon)) &&
            (identical(other.titleText, titleText) ||
                const DeepCollectionEquality()
                    .equals(other.titleText, titleText)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.hideText, hideText) ||
                const DeepCollectionEquality()
                    .equals(other.hideText, hideText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(editingController) ^
      const DeepCollectionEquality().hash(editingFunction) ^
      const DeepCollectionEquality().hash(titleIcon) ^
      const DeepCollectionEquality().hash(titleText) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(hideText);

  @override
  $TextInputTypeNormalCopyWith<TextInputTypeNormal> get copyWith =>
      _$TextInputTypeNormalCopyWithImpl<TextInputTypeNormal>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    @required
        Result custom(
            Key key,
            @required TextEditingController editingController,
            @required void Function(String) editingFunction,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText),
    @required
        Result valid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
    @required
        Result cValid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return $default(key, editingController, editingFunction, titleIcon,
        titleText, hintText, hideText);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    Result custom(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText),
    Result valid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    Result cValid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(key, editingController, editingFunction, titleIcon,
          titleText, hintText, hideText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    @required Result custom(TextInputTypeCustomNormal value),
    @required Result valid(TextInputTypeValid value),
    @required Result cValid(TextInputTypeCustomValid value),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    Result custom(TextInputTypeCustomNormal value),
    Result valid(TextInputTypeValid value),
    Result cValid(TextInputTypeCustomValid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TextInputTypeNormal implements TextInputTypeFreezed {
  const factory TextInputTypeNormal(
      {Key key,
      @required TextEditingController editingController,
      @required void Function(String) editingFunction,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText}) = _$TextInputTypeNormal;

  @override
  Key get key;
  TextEditingController get editingController;
  void Function(String) get editingFunction;
  @override
  IconData get titleIcon;
  @override
  String get titleText;
  @override
  String get hintText;
  @override
  bool get hideText;
  @override
  $TextInputTypeNormalCopyWith<TextInputTypeNormal> get copyWith;
}

abstract class $TextInputTypeCustomNormalCopyWith<$Res>
    implements $TextInputTypeFreezedCopyWith<$Res> {
  factory $TextInputTypeCustomNormalCopyWith(TextInputTypeCustomNormal value,
          $Res Function(TextInputTypeCustomNormal) then) =
      _$TextInputTypeCustomNormalCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key key,
      TextEditingController editingController,
      void Function(String) editingFunction,
      InputDecoration inputDecoration,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText});
}

class _$TextInputTypeCustomNormalCopyWithImpl<$Res>
    extends _$TextInputTypeFreezedCopyWithImpl<$Res>
    implements $TextInputTypeCustomNormalCopyWith<$Res> {
  _$TextInputTypeCustomNormalCopyWithImpl(TextInputTypeCustomNormal _value,
      $Res Function(TextInputTypeCustomNormal) _then)
      : super(_value, (v) => _then(v as TextInputTypeCustomNormal));

  @override
  TextInputTypeCustomNormal get _value =>
      super._value as TextInputTypeCustomNormal;

  @override
  $Res call({
    Object key = freezed,
    Object editingController = freezed,
    Object editingFunction = freezed,
    Object inputDecoration = freezed,
    Object titleIcon = freezed,
    Object titleText = freezed,
    Object hintText = freezed,
    Object hideText = freezed,
  }) {
    return _then(TextInputTypeCustomNormal(
      key: key == freezed ? _value.key : key as Key,
      editingController: editingController == freezed
          ? _value.editingController
          : editingController as TextEditingController,
      editingFunction: editingFunction == freezed
          ? _value.editingFunction
          : editingFunction as void Function(String),
      inputDecoration: inputDecoration == freezed
          ? _value.inputDecoration
          : inputDecoration as InputDecoration,
      titleIcon:
          titleIcon == freezed ? _value.titleIcon : titleIcon as IconData,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      hideText: hideText == freezed ? _value.hideText : hideText as bool,
    ));
  }
}

class _$TextInputTypeCustomNormal
    with DiagnosticableTreeMixin
    implements TextInputTypeCustomNormal {
  const _$TextInputTypeCustomNormal(
      {this.key,
      @required this.editingController,
      @required this.editingFunction,
      this.inputDecoration,
      this.titleIcon,
      this.titleText,
      this.hintText,
      this.hideText = false})
      : assert(editingController != null),
        assert(editingFunction != null),
        assert(hideText != null);

  @override
  final Key key;
  @override
  final TextEditingController editingController;
  @override
  final void Function(String) editingFunction;
  @override
  final InputDecoration inputDecoration;
  @override
  final IconData titleIcon;
  @override
  final String titleText;
  @override
  final String hintText;
  @JsonKey(defaultValue: false)
  @override
  final bool hideText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextInputTypeFreezed.custom(key: $key, editingController: $editingController, editingFunction: $editingFunction, inputDecoration: $inputDecoration, titleIcon: $titleIcon, titleText: $titleText, hintText: $hintText, hideText: $hideText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextInputTypeFreezed.custom'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('editingController', editingController))
      ..add(DiagnosticsProperty('editingFunction', editingFunction))
      ..add(DiagnosticsProperty('inputDecoration', inputDecoration))
      ..add(DiagnosticsProperty('titleIcon', titleIcon))
      ..add(DiagnosticsProperty('titleText', titleText))
      ..add(DiagnosticsProperty('hintText', hintText))
      ..add(DiagnosticsProperty('hideText', hideText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextInputTypeCustomNormal &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.editingController, editingController) ||
                const DeepCollectionEquality()
                    .equals(other.editingController, editingController)) &&
            (identical(other.editingFunction, editingFunction) ||
                const DeepCollectionEquality()
                    .equals(other.editingFunction, editingFunction)) &&
            (identical(other.inputDecoration, inputDecoration) ||
                const DeepCollectionEquality()
                    .equals(other.inputDecoration, inputDecoration)) &&
            (identical(other.titleIcon, titleIcon) ||
                const DeepCollectionEquality()
                    .equals(other.titleIcon, titleIcon)) &&
            (identical(other.titleText, titleText) ||
                const DeepCollectionEquality()
                    .equals(other.titleText, titleText)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.hideText, hideText) ||
                const DeepCollectionEquality()
                    .equals(other.hideText, hideText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(editingController) ^
      const DeepCollectionEquality().hash(editingFunction) ^
      const DeepCollectionEquality().hash(inputDecoration) ^
      const DeepCollectionEquality().hash(titleIcon) ^
      const DeepCollectionEquality().hash(titleText) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(hideText);

  @override
  $TextInputTypeCustomNormalCopyWith<TextInputTypeCustomNormal> get copyWith =>
      _$TextInputTypeCustomNormalCopyWithImpl<TextInputTypeCustomNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    @required
        Result custom(
            Key key,
            @required TextEditingController editingController,
            @required void Function(String) editingFunction,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText),
    @required
        Result valid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
    @required
        Result cValid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return custom(key, editingController, editingFunction, inputDecoration,
        titleIcon, titleText, hintText, hideText);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    Result custom(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText),
    Result valid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    Result cValid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (custom != null) {
      return custom(key, editingController, editingFunction, inputDecoration,
          titleIcon, titleText, hintText, hideText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    @required Result custom(TextInputTypeCustomNormal value),
    @required Result valid(TextInputTypeValid value),
    @required Result cValid(TextInputTypeCustomValid value),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return custom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    Result custom(TextInputTypeCustomNormal value),
    Result valid(TextInputTypeValid value),
    Result cValid(TextInputTypeCustomValid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class TextInputTypeCustomNormal implements TextInputTypeFreezed {
  const factory TextInputTypeCustomNormal(
      {Key key,
      @required TextEditingController editingController,
      @required void Function(String) editingFunction,
      InputDecoration inputDecoration,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText}) = _$TextInputTypeCustomNormal;

  @override
  Key get key;
  TextEditingController get editingController;
  void Function(String) get editingFunction;
  InputDecoration get inputDecoration;
  @override
  IconData get titleIcon;
  @override
  String get titleText;
  @override
  String get hintText;
  @override
  bool get hideText;
  @override
  $TextInputTypeCustomNormalCopyWith<TextInputTypeCustomNormal> get copyWith;
}

abstract class $TextInputTypeValidCopyWith<$Res>
    implements $TextInputTypeFreezedCopyWith<$Res> {
  factory $TextInputTypeValidCopyWith(
          TextInputTypeValid value, $Res Function(TextInputTypeValid) then) =
      _$TextInputTypeValidCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key key,
      String Function(String) fieldValidator,
      void Function(String) fieldSave,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText,
      String initText});
}

class _$TextInputTypeValidCopyWithImpl<$Res>
    extends _$TextInputTypeFreezedCopyWithImpl<$Res>
    implements $TextInputTypeValidCopyWith<$Res> {
  _$TextInputTypeValidCopyWithImpl(
      TextInputTypeValid _value, $Res Function(TextInputTypeValid) _then)
      : super(_value, (v) => _then(v as TextInputTypeValid));

  @override
  TextInputTypeValid get _value => super._value as TextInputTypeValid;

  @override
  $Res call({
    Object key = freezed,
    Object fieldValidator = freezed,
    Object fieldSave = freezed,
    Object titleIcon = freezed,
    Object titleText = freezed,
    Object hintText = freezed,
    Object hideText = freezed,
    Object initText = freezed,
  }) {
    return _then(TextInputTypeValid(
      key: key == freezed ? _value.key : key as Key,
      fieldValidator: fieldValidator == freezed
          ? _value.fieldValidator
          : fieldValidator as String Function(String),
      fieldSave: fieldSave == freezed
          ? _value.fieldSave
          : fieldSave as void Function(String),
      titleIcon:
          titleIcon == freezed ? _value.titleIcon : titleIcon as IconData,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      hideText: hideText == freezed ? _value.hideText : hideText as bool,
      initText: initText == freezed ? _value.initText : initText as String,
    ));
  }
}

class _$TextInputTypeValid
    with DiagnosticableTreeMixin
    implements TextInputTypeValid {
  const _$TextInputTypeValid(
      {this.key,
      @required this.fieldValidator,
      @required this.fieldSave,
      this.titleIcon,
      this.titleText,
      this.hintText,
      this.hideText = false,
      this.initText})
      : assert(fieldValidator != null),
        assert(fieldSave != null),
        assert(hideText != null);

  @override
  final Key key;
  @override
  final String Function(String) fieldValidator;
  @override
  final void Function(String) fieldSave;
  @override
  final IconData titleIcon;
  @override
  final String titleText;
  @override
  final String hintText;
  @JsonKey(defaultValue: false)
  @override
  final bool hideText;
  @override
  final String initText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextInputTypeFreezed.valid(key: $key, fieldValidator: $fieldValidator, fieldSave: $fieldSave, titleIcon: $titleIcon, titleText: $titleText, hintText: $hintText, hideText: $hideText, initText: $initText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextInputTypeFreezed.valid'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('fieldValidator', fieldValidator))
      ..add(DiagnosticsProperty('fieldSave', fieldSave))
      ..add(DiagnosticsProperty('titleIcon', titleIcon))
      ..add(DiagnosticsProperty('titleText', titleText))
      ..add(DiagnosticsProperty('hintText', hintText))
      ..add(DiagnosticsProperty('hideText', hideText))
      ..add(DiagnosticsProperty('initText', initText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextInputTypeValid &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.fieldValidator, fieldValidator) ||
                const DeepCollectionEquality()
                    .equals(other.fieldValidator, fieldValidator)) &&
            (identical(other.fieldSave, fieldSave) ||
                const DeepCollectionEquality()
                    .equals(other.fieldSave, fieldSave)) &&
            (identical(other.titleIcon, titleIcon) ||
                const DeepCollectionEquality()
                    .equals(other.titleIcon, titleIcon)) &&
            (identical(other.titleText, titleText) ||
                const DeepCollectionEquality()
                    .equals(other.titleText, titleText)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.hideText, hideText) ||
                const DeepCollectionEquality()
                    .equals(other.hideText, hideText)) &&
            (identical(other.initText, initText) ||
                const DeepCollectionEquality()
                    .equals(other.initText, initText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(fieldValidator) ^
      const DeepCollectionEquality().hash(fieldSave) ^
      const DeepCollectionEquality().hash(titleIcon) ^
      const DeepCollectionEquality().hash(titleText) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(hideText) ^
      const DeepCollectionEquality().hash(initText);

  @override
  $TextInputTypeValidCopyWith<TextInputTypeValid> get copyWith =>
      _$TextInputTypeValidCopyWithImpl<TextInputTypeValid>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    @required
        Result custom(
            Key key,
            @required TextEditingController editingController,
            @required void Function(String) editingFunction,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText),
    @required
        Result valid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
    @required
        Result cValid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return valid(key, fieldValidator, fieldSave, titleIcon, titleText, hintText,
        hideText, initText);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    Result custom(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText),
    Result valid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    Result cValid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (valid != null) {
      return valid(key, fieldValidator, fieldSave, titleIcon, titleText,
          hintText, hideText, initText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    @required Result custom(TextInputTypeCustomNormal value),
    @required Result valid(TextInputTypeValid value),
    @required Result cValid(TextInputTypeCustomValid value),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return valid(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    Result custom(TextInputTypeCustomNormal value),
    Result valid(TextInputTypeValid value),
    Result cValid(TextInputTypeCustomValid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class TextInputTypeValid implements TextInputTypeFreezed {
  const factory TextInputTypeValid(
      {Key key,
      @required String Function(String) fieldValidator,
      @required void Function(String) fieldSave,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText,
      String initText}) = _$TextInputTypeValid;

  @override
  Key get key;
  String Function(String) get fieldValidator;
  void Function(String) get fieldSave;
  @override
  IconData get titleIcon;
  @override
  String get titleText;
  @override
  String get hintText;
  @override
  bool get hideText;
  String get initText;
  @override
  $TextInputTypeValidCopyWith<TextInputTypeValid> get copyWith;
}

abstract class $TextInputTypeCustomValidCopyWith<$Res>
    implements $TextInputTypeFreezedCopyWith<$Res> {
  factory $TextInputTypeCustomValidCopyWith(TextInputTypeCustomValid value,
          $Res Function(TextInputTypeCustomValid) then) =
      _$TextInputTypeCustomValidCopyWithImpl<$Res>;
  @override
  $Res call(
      {Key key,
      String Function(String) fieldValidator,
      void Function(String) fieldSave,
      InputDecoration inputDecoration,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText,
      String initText});
}

class _$TextInputTypeCustomValidCopyWithImpl<$Res>
    extends _$TextInputTypeFreezedCopyWithImpl<$Res>
    implements $TextInputTypeCustomValidCopyWith<$Res> {
  _$TextInputTypeCustomValidCopyWithImpl(TextInputTypeCustomValid _value,
      $Res Function(TextInputTypeCustomValid) _then)
      : super(_value, (v) => _then(v as TextInputTypeCustomValid));

  @override
  TextInputTypeCustomValid get _value =>
      super._value as TextInputTypeCustomValid;

  @override
  $Res call({
    Object key = freezed,
    Object fieldValidator = freezed,
    Object fieldSave = freezed,
    Object inputDecoration = freezed,
    Object titleIcon = freezed,
    Object titleText = freezed,
    Object hintText = freezed,
    Object hideText = freezed,
    Object initText = freezed,
  }) {
    return _then(TextInputTypeCustomValid(
      key: key == freezed ? _value.key : key as Key,
      fieldValidator: fieldValidator == freezed
          ? _value.fieldValidator
          : fieldValidator as String Function(String),
      fieldSave: fieldSave == freezed
          ? _value.fieldSave
          : fieldSave as void Function(String),
      inputDecoration: inputDecoration == freezed
          ? _value.inputDecoration
          : inputDecoration as InputDecoration,
      titleIcon:
          titleIcon == freezed ? _value.titleIcon : titleIcon as IconData,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      hintText: hintText == freezed ? _value.hintText : hintText as String,
      hideText: hideText == freezed ? _value.hideText : hideText as bool,
      initText: initText == freezed ? _value.initText : initText as String,
    ));
  }
}

class _$TextInputTypeCustomValid
    with DiagnosticableTreeMixin
    implements TextInputTypeCustomValid {
  const _$TextInputTypeCustomValid(
      {this.key,
      @required this.fieldValidator,
      @required this.fieldSave,
      this.inputDecoration,
      this.titleIcon,
      this.titleText,
      this.hintText,
      this.hideText = false,
      this.initText})
      : assert(fieldValidator != null),
        assert(fieldSave != null),
        assert(hideText != null);

  @override
  final Key key;
  @override
  final String Function(String) fieldValidator;
  @override
  final void Function(String) fieldSave;
  @override
  final InputDecoration inputDecoration;
  @override
  final IconData titleIcon;
  @override
  final String titleText;
  @override
  final String hintText;
  @JsonKey(defaultValue: false)
  @override
  final bool hideText;
  @override
  final String initText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextInputTypeFreezed.cValid(key: $key, fieldValidator: $fieldValidator, fieldSave: $fieldSave, inputDecoration: $inputDecoration, titleIcon: $titleIcon, titleText: $titleText, hintText: $hintText, hideText: $hideText, initText: $initText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextInputTypeFreezed.cValid'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('fieldValidator', fieldValidator))
      ..add(DiagnosticsProperty('fieldSave', fieldSave))
      ..add(DiagnosticsProperty('inputDecoration', inputDecoration))
      ..add(DiagnosticsProperty('titleIcon', titleIcon))
      ..add(DiagnosticsProperty('titleText', titleText))
      ..add(DiagnosticsProperty('hintText', hintText))
      ..add(DiagnosticsProperty('hideText', hideText))
      ..add(DiagnosticsProperty('initText', initText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextInputTypeCustomValid &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.fieldValidator, fieldValidator) ||
                const DeepCollectionEquality()
                    .equals(other.fieldValidator, fieldValidator)) &&
            (identical(other.fieldSave, fieldSave) ||
                const DeepCollectionEquality()
                    .equals(other.fieldSave, fieldSave)) &&
            (identical(other.inputDecoration, inputDecoration) ||
                const DeepCollectionEquality()
                    .equals(other.inputDecoration, inputDecoration)) &&
            (identical(other.titleIcon, titleIcon) ||
                const DeepCollectionEquality()
                    .equals(other.titleIcon, titleIcon)) &&
            (identical(other.titleText, titleText) ||
                const DeepCollectionEquality()
                    .equals(other.titleText, titleText)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.hideText, hideText) ||
                const DeepCollectionEquality()
                    .equals(other.hideText, hideText)) &&
            (identical(other.initText, initText) ||
                const DeepCollectionEquality()
                    .equals(other.initText, initText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(fieldValidator) ^
      const DeepCollectionEquality().hash(fieldSave) ^
      const DeepCollectionEquality().hash(inputDecoration) ^
      const DeepCollectionEquality().hash(titleIcon) ^
      const DeepCollectionEquality().hash(titleText) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(hideText) ^
      const DeepCollectionEquality().hash(initText);

  @override
  $TextInputTypeCustomValidCopyWith<TextInputTypeCustomValid> get copyWith =>
      _$TextInputTypeCustomValidCopyWithImpl<TextInputTypeCustomValid>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    @required
        Result custom(
            Key key,
            @required TextEditingController editingController,
            @required void Function(String) editingFunction,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText),
    @required
        Result valid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
    @required
        Result cValid(
            Key key,
            @required String Function(String) fieldValidator,
            @required void Function(String) fieldSave,
            InputDecoration inputDecoration,
            IconData titleIcon,
            String titleText,
            String hintText,
            bool hideText,
            String initText),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return cValid(key, fieldValidator, fieldSave, inputDecoration, titleIcon,
        titleText, hintText, hideText, initText);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText), {
    Result custom(
        Key key,
        @required TextEditingController editingController,
        @required void Function(String) editingFunction,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText),
    Result valid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    Result cValid(
        Key key,
        @required String Function(String) fieldValidator,
        @required void Function(String) fieldSave,
        InputDecoration inputDecoration,
        IconData titleIcon,
        String titleText,
        String hintText,
        bool hideText,
        String initText),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cValid != null) {
      return cValid(key, fieldValidator, fieldSave, inputDecoration, titleIcon,
          titleText, hintText, hideText, initText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    @required Result custom(TextInputTypeCustomNormal value),
    @required Result valid(TextInputTypeValid value),
    @required Result cValid(TextInputTypeCustomValid value),
  }) {
    assert($default != null);
    assert(custom != null);
    assert(valid != null);
    assert(cValid != null);
    return cValid(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TextInputTypeNormal value), {
    Result custom(TextInputTypeCustomNormal value),
    Result valid(TextInputTypeValid value),
    Result cValid(TextInputTypeCustomValid value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cValid != null) {
      return cValid(this);
    }
    return orElse();
  }
}

abstract class TextInputTypeCustomValid implements TextInputTypeFreezed {
  const factory TextInputTypeCustomValid(
      {Key key,
      @required String Function(String) fieldValidator,
      @required void Function(String) fieldSave,
      InputDecoration inputDecoration,
      IconData titleIcon,
      String titleText,
      String hintText,
      bool hideText,
      String initText}) = _$TextInputTypeCustomValid;

  @override
  Key get key;
  String Function(String) get fieldValidator;
  void Function(String) get fieldSave;
  InputDecoration get inputDecoration;
  @override
  IconData get titleIcon;
  @override
  String get titleText;
  @override
  String get hintText;
  @override
  bool get hideText;
  String get initText;
  @override
  $TextInputTypeCustomValidCopyWith<TextInputTypeCustomValid> get copyWith;
}
