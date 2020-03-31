import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/features/home/presentation/bloc/bloc_home_export.dart';
import 'package:flutter_ty_mobile/features/home/presentation/widgets/home_widgets_export.dart';

import '../../resource_export.dart' show FontSize, Themes;
import '../../route_page_export.dart';

/// Main View of [Router.homeRoute]
///@author H.C.CHIANG
///@version 2020/2/12
class HomeRoute extends StatefulWidget {
  HomeRoute({Key key}) : super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final GlobalKey<MemberWidgetState> _memberWidgetKey =
      GlobalKey<MemberWidgetState>();
  Widget _homeWidget;
  MemberWidget _memberWidget;

  Key _key = UniqueKey();

  void restartHome() {
    setState(() {
      _key = new UniqueKey();
    });
  }

  @override
  void initState() {
    print('home init');
    super.initState();
  }

  @override
  void didUpdateWidget(HomeRoute oldWidget) {
    print('home update');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('home changed');
    super.didChangeDependencies();
    if (_memberWidget != null) restartHome();
  }

  @override
  Widget build(BuildContext context) {
    _homeWidget ??= KeyedSubtree(
      key: _key,
      child: Scaffold(
        backgroundColor: Themes.defaultBackgroundColor,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: _buildBannerBody(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        _buildMarqueeDecorLeft(),
                        _buildMarqueeBody(),
                        _buildMarqueeDecorRight(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: StreamBuilder<bool>(
                      stream: RouterNavigate.routerStreams.recheckUserStream,
                      initialData: false,
                      builder: (context, snapshot) {
//                      print('checking member widget: ${getUserData.toString()}');
                        if (_memberWidget == null) {
                          _memberWidget = MemberWidget(key: _memberWidgetKey);
                        } else if (snapshot.data) {
                          _memberWidgetKey.currentState.updateUser();
                          RouterNavigate.resetCheckUser();
                        }
                        return _memberWidget;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _buildGameContainer(),
            ),
          ],
        ),
      ),
    );
    return _homeWidget;
  }

  BlocProvider<HomeBannerBloc> _buildBannerBody() {
    return BlocProvider(
      create: (_) => sl<HomeBannerBloc>(),
      child: ClipRect(
        child: BlocBuilder<HomeBannerBloc, HomeBannerState>(
          builder: (context, state) {
            return state.when(
              bInitial: (_) => BannerControl(),
              bLoading: (_) => LoadingWidget(),
              bCaching: (_) => BannerCached(banners: state.props.first),
              bLoaded: (_) => BannerDisplay(
                images: state.props[0],
                promoIds: state.props[1],
              ),
              bError: (_) =>
                  Icon(Icons.broken_image, color: Themes.defaultTextColor),
            );
          },
        ),
      ),
    );
  }

  Expanded _buildMarqueeDecorLeft() {
    return Expanded(
      child: new Padding(
        padding: EdgeInsets.only(left: 6.0),
        child: Icon(IconData(0xf027, fontFamily: 'FontAwesome'),
            color: Themes.accentLightColor),
      ),
    );
  }

  Expanded _buildMarqueeDecorRight() {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
        child: ButtonTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: RaisedButton(
            color: Themes.defaultAccentColor,
            child: Text(
              localeStr.pageTitleMarquee,
              style: TextStyle(
                  fontSize: FontSize.NORMAL.value,
                  color: Themes.defaultTextColorBlack),
            ),
            visualDensity: VisualDensity(horizontal: -4.0, vertical: -3.0),
            onPressed: () => {},
          ),
        ),
      ),
    );
  }

  BlocProvider<HomeMarqueeBloc> _buildMarqueeBody() {
    return BlocProvider(
      create: (_) => sl<HomeMarqueeBloc>(),
      child: Expanded(
        flex: 12,
        child: BlocBuilder<HomeMarqueeBloc, HomeMarqueeState>(
          builder: (context, state) {
            return state.when(
              mInitial: (_) => MarqueeControl(),
              mLoading: (_) => SizedBox.shrink(),
              mLoaded: (_) => MarqueeDisplay(marquees: state.props.first),
              mError: (_) => Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 16.0),
                child: MessageDisplay(
                  message: state.props.first,
                  smallText: Global.device.width <= 360,
                  highlight: true,
                  widthFactor: 2,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  BlocProvider<HomeGameTabsBloc> _buildGameContainer() {
    return BlocProvider(
      create: (_) => sl<HomeGameTabsBloc>(),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: Global.device.width,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 0.0, 2.0, 4.0),
          child: BlocBuilder<HomeGameTabsBloc, HomeGameTabsState>(
            builder: (context, state) {
              return state.when(
                tInitial: (_) => GameControl(),
                tLoading: (_) => LoadingWidget(),
                tLoaded: (_) => GameDisplayTab(tabsData: state.props.first),
                tError: (_) => MessageDisplay(
                  message: state.props.first,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
