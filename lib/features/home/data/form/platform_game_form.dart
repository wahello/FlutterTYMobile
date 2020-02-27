import 'package:equatable/equatable.dart';
import 'package:to_string/to_string.dart';

part 'platform_game_form.g.dart';

@ToString()
class PlatformGameForm extends Equatable {
  final String category;
  final String platform;

  PlatformGameForm({this.category, this.platform});

  @override
  List<Object> get props => [category, platform];

  factory PlatformGameForm.fromJson(Map<String, dynamic> json) {
    return PlatformGameForm(
      category: json['category'],
      platform: json['platform'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['platform'] = this.platform;
    return data;
  }

  @override
  String toString() {
    return _$PlatformGameFormToString(this);
  }
}
