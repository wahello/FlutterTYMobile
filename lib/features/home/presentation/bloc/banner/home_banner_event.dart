import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart' show required;
import 'package:super_enum/super_enum.dart';

part 'home_banner_event.g.dart';

@superEnum
enum _HomeBannerEvent {
  @object
  GetBannerEvent,
  @object
  GetBannerImageEvent,
}

//@immutable
//abstract class HomeBannerEvent extends Equatable {
//  HomeBannerEvent();
//}
//
//class GetBannerForHomePage extends HomeBannerEvent {
//  GetBannerForHomePage();
//
//  @override
//  List<Object> get props => [];
//}
