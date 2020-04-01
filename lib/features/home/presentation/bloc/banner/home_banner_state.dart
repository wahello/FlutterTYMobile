import 'package:super_enum/super_enum.dart';

part 'home_banner_state.g.dart';

@superEnum
enum _HomeBannerState {
  @object
  BInitial,
  @object
  BLoading,
  @Data(fields: [
    DataField<List>('banners'),
  ])
  BCaching,
  @Data(fields: [
    DataField<List>('images'),
    DataField<List>('promoIds'),
  ])
  BLoaded,
  @Data(fields: [
    DataField<String>('message'),
  ])
  BError,
}

//@immutable
//abstract class HomeBannerState extends Equatable {
//  HomeBannerState();
//}
//
//class InitialHomeContentState extends HomeBannerState {
//  InitialHomeContentState();
//
//  @override
//  List<Object> get props => [];
//}
//
//class LoadingHomeContentState extends HomeBannerState {
//  LoadingHomeContentState();
//
//  @override
//  List<Object> get props => [];
//}
//
//class LoadedHomeContentState extends HomeBannerState {
//  final List<BannerEntity> banners;
//
//  LoadedHomeContentState({@required this.banners});
//
//  @override
//  List<Object> get props => [banners];
//}
//
//class ErrorHomeContentState extends HomeBannerState {
//  final String message;
//
//  ErrorHomeContentState({@required this.message});
//
//  @override
//  List<Object> get props => [message];
//}
