import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:flutter_ty_mobile/features/home/data/game_page_data_export.dart';
import 'package:flutter_ty_mobile/features/resource_export.dart'
    show FontSize, networkImageWidget;

import '../../../../route_page_export.dart'
    show MyLogger, getRouteUserStreams, localeStr, sl;
import '../../bloc/game/bloc_game_export.dart';
import 'game_control_grid.dart';
import 'game_web_control.dart';

/// Create Platforms and Games [GridView]
///@author H.C.CHIANG
///@version 2020/2/10
class GameDisplayPage extends StatefulWidget {
  final List<GamePlatformEntity> platforms;

  GameDisplayPage({
    Key key,
    @required this.platforms,
  }) : super(key: key);

  @override
  _GameDisplayPageState createState() => _GameDisplayPageState();
}

class _GameDisplayPageState extends State<GameDisplayPage>
    with AutomaticKeepAliveClientMixin {
  final String tag = 'GameDisplayPage';
  Widget _content;
  Widget _gamesWidget;
  bool _isGameGrid = false;

  GamePlatformEntity _currentPlatform;
  List<GameEntity> games;

  void _setContent(Widget widget) {
    setState(() {
      _content = widget;
    });
  }

  /// Pass in a [itemData] on grid item tap or back button pressed.
  /// [itemData] should be [GamePlatformEntity] or [GameEntity]
  /// else throw [UnknownConditionException].
  String _onItemTap(dynamic itemData) {
    if (itemData is GamePlatformEntity) {
      if (_isGameGrid) {
//        print('clicked back');
        _setContent(_createPlatformGrid());
      } else if (itemData.isGameHall == false) {
//        print('clicked platform: ${itemData.className}, data: $itemData');
        _setContent(_createGamesView(itemData));
      } else {
        print('clicked game: ${itemData.gameUrl}');
        return itemData.gameUrl;
      }
    } else if (itemData is GameEntity) {
      print('clicked game: ${itemData.gameUrl}');
      return itemData.gameUrl;
    } else {
      MyLogger.warn(msg: 'tapped item unknown, data: $itemData', tag: tag);
      throw UnknownConditionException();
    }
    return '';
  }

  void openGame(String url, BuildContext context) {
    if (getRouteUserStreams.hasUser == false)
      FLToast.showInfo(
          text: localeStr.messageErrorNotLogin,
          position: FLToastPosition.center,
          showDuration: ToastDuration.DEFAULT.value);
    else
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => new GameWebControl(url),
      );
  }

  PlatformGameForm _createForm(GamePlatformEntity platform) {
    _currentPlatform = platform;
    return PlatformGameForm(
      category: platform.category,
      platform: platform.site,
    );
  }

  @override
  void didUpdateWidget(GameDisplayPage oldWidget) {
    print("update game-page=${widget.platforms.first.category}");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_content == null) _content = _createPlatformGrid();
    return _content;
  }

  @override
  bool get wantKeepAlive => true;

  Widget _createPlatformGrid() {
    _isGameGrid = false;
    return GridView.count(
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 4.0,
      childAspectRatio: 0.95,
      shrinkWrap: true,
      children:
          widget.platforms.map((entity) => _createGridItem(entity)).toList(),
    );
  }

  Widget _createGamesView(GamePlatformEntity platform) {
    _isGameGrid = true;
    if (platform != _currentPlatform)
      _gamesWidget = _createGamesGridBloc(platform);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                visualDensity: VisualDensity.compact,
                icon: Icon(Icons.arrow_back_ios, size: 20),
                onPressed: () {
                  String url = _onItemTap(platform);
                  if (url.isNotEmpty) openGame(url, context);
                },
              ),
              FutureBuilder(
                  future: _imageWidget(platform.iconUrl, isIconSize: true),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        !snapshot.hasError) {
                      return snapshot.data;
                    } else {
                      if (snapshot.hasError)
                        MyLogger.warn(
                            msg: 'snapshot error: ${snapshot.error}', tag: tag);
                      return Icon(Icons.broken_image);
                    }
                  }),
              SizedBox(width: 12.0),
              Text(
                platform.label,
                style: TextStyle(fontSize: FontSize.SUBTITLE.value),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          _gamesWidget,
        ],
      ),
    );
  }

  Widget _createGamesGridBloc(GamePlatformEntity platform) {
    return BlocProvider(
      create: (_) => sl<HomeGameBloc>(),
      child: BlocBuilder<HomeGameBloc, HomeGameState>(
        builder: (context, state) {
          return state.when(
            gInitial: (_) => GameControlGrid(form: _createForm(platform)),
            gLoading: (_) => LoadingWidget(heightFactor: 3),
            gLoaded: (_) => _createGamesGrid(state.props.first),
            gError: (_) => MessageDisplay(
              message: state.props.first,
            ),
          );
        },
      ),
    );
  }

  Widget _createGamesGrid(List<GameEntity> list) {
    games = List.from(list);
    return new GridView.count(
      physics: ClampingScrollPhysics(),
      crossAxisCount: 3,
      childAspectRatio: 0.7,
      shrinkWrap: true,
      children: games.map((entity) => _createGridItem(entity)).toList(),
    );
  }

  /// Create grid item for data [entity]
  /// Returns a [Stack] widget with image and name
  Widget _createGridItem(dynamic entity) {
    String label;
    String imgUrl;
    double textMargin;

    if (entity is GameEntity) {
      label = entity.cname;
      imgUrl = entity.imageUrl;
    } else if (entity is GamePlatformEntity) {
      label = entity.label;
      imgUrl = entity.imageUrl;
    } else
      throw UnknownConditionException();

    if (!_isGameGrid)
      textMargin = 4;
    else
      textMargin = 0;

    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: GestureDetector(
        onTap: () {
          String url = _onItemTap(entity);
          if (url.isNotEmpty) openGame(url, context);
        },
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            FutureBuilder(
              future: _imageWidget(imgUrl, isGame: (entity is GameEntity)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    !snapshot.hasError) {
                  return snapshot.data;
                } else if (snapshot.hasError) {
                  MyLogger.warn(
                      msg: 'snapshot error: ${snapshot.error}', tag: tag);
                  return Center(child: Icon(Icons.broken_image));
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
            Positioned(
              // stack align at bottom
              bottom: textMargin,
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: (!_isGameGrid)
                      ? FontSize.SUBTITLE.value * 6
                      : FontSize.NORMAL.value * 5,
                  height: (!_isGameGrid)
                      ? FontSize.SUBTITLE.value * 1.5
                      : FontSize.NORMAL.value * 3, // preserved height for text
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    maxLines: (!_isGameGrid) ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: (_isGameGrid)
                          ? FontSize.NORMAL.value
                          : FontSize.SUBTITLE.value,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Provide image's [url] to create network image
  /// set [isIconSize] to true to return preferred size image
  /// set [isGame] to true to scale down the image to 0.9
  Future<Widget> _imageWidget(String url,
      {bool isIconSize = false, bool isGame = false}) async {
    final image = await networkImageWidget(url, fillContainer: !isIconSize);
    if (!isIconSize) {
      if (!isGame) {
        // platform image
        return AspectRatio(
          aspectRatio: 16 / 15,
          child: Transform.scale(scale: 0.9, child: image),
        );
      } else {
        // game image (scale value needs to consider grid's childAspectRatio)
        return Transform.scale(scale: 0.8, child: image);
      }
    } else {
      // game platform icon
      return ConstrainedBox(
        constraints:
            BoxConstraints.tightFor(height: FontSize.SUBTITLE.value * 1.5),
        child: image,
      );
    }
  }
}
