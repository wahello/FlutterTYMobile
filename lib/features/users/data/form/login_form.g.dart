// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_form.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserLoginHiveFormAdapter extends TypeAdapter<_$_UserLoginHiveForm> {
  @override
  final typeId = 109;

  @override
  _$_UserLoginHiveForm read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserLoginHiveForm(
      account: fields[0] as String,
      password: fields[1] as String,
      fastLogin: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserLoginHiveForm obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.account)
      ..writeByte(1)
      ..write(obj.password)
      ..writeByte(2)
      ..write(obj.fastLogin);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLoginForm _$_$_UserLoginFormFromJson(Map<String, dynamic> json) {
  return _$_UserLoginForm(
    account: json['accountcode'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_UserLoginFormToJson(_$_UserLoginForm instance) =>
    <String, dynamic>{
      'accountcode': instance.account,
      'password': instance.password,
    };
