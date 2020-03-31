import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_limit_model.freezed.dart';
part 'account_limit_model.g.dart';

@freezed
abstract class AccountLimitModel with _$AccountLimitModel {
  const factory AccountLimitModel({
    @JsonKey(name: 'accountcode', required: true) String account,
    @JsonKey(name: 'unlimit', required: true) String credit,
  }) = _AccountLimitModel;

  factory AccountLimitModel.fromJson(Map<String, dynamic> json) =>
      _$AccountLimitModelFromJson(json);

  static AccountLimitModel jsonToAccountLimitModel(
          Map<String, dynamic> jsonMap) =>
      AccountLimitModel.fromJson(jsonMap);
}
