import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/font_size.dart';

final appTheme = Themes();

class Themes {
  static final defaultBackgroundColor = Color(0xff313131);
  static final defaultAccentColor = Color(0xffe7c080);
  static final defaultAppbarColor = Color(0xff222222);
  static final defaultWidgetColor = Color(0xffb5b5b5);
  static final defaultWidgetBgColor = Color(0xff383838);
  static final defaultDisabledColor = Color(0xff575757);
  static final defaultErrorColor = Color(0xffe53935);

  static final accentLightColor = Color(0xffeace98);
  static final dialogBgColor = Color(0xff424242);

  static final defaultTextColor = Color(0xffb5b5b5);
  static final defaultSubtitleColor = Color(0xffeea942);
  static final defaultHintColor = Color(0xffdadada);
  static final defaultMessageColor = Color(0xffbcbcbc);
  static final defaultTextColorWhite = Color(0xffffffff);
  static final defaultTextColorBlack = Color(0xff000000);

  static final iconColor = Color(0xffffffff);
  static final iconColorDark = Color(0xffa4a4a4);
  static final iconBgColorTrans = Color(0x40a4a4a4);

  static final buttonDisabledColor = Color(0xffc9c9c9);
  static final buttonDisabledTextColor = Color(0xff575757);

  static final fieldHeight = 52.0;
  static final fieldIconSize = 24.0;
  static final fieldInputBgColor = Color(0xff4e4e4e);
  static final fieldInputHintColor = Color(0xffececec);

  static final linearAccentColor1 = Color(0xffbb904d);
  static final linearAccentColor2 = Color(0xffe3b977);
  static final linearAccentColor3 = Color(0xffca9a51);

  final defaultTheme = ThemeData.dark().copyWith(
    primaryColor: defaultAppbarColor,
    accentColor: defaultAccentColor,
    backgroundColor: defaultBackgroundColor,
    /* Widgets Theme */
    scaffoldBackgroundColor: defaultBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: iconColor,
      backgroundColor: iconBgColorTrans,
      elevation: 2.0,
    ),
    appBarTheme: AppBarTheme(color: defaultAppbarColor),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Themes.defaultTextColor,
      labelColor: Themes.defaultAccentColor,
      labelStyle: TextStyle(fontSize: FontSize.NORMAL.value),
      labelPadding: const EdgeInsets.only(top: 4.0),
    ),
    unselectedWidgetColor: defaultWidgetColor,
    hintColor: defaultHintColor,
    disabledColor: defaultDisabledColor,
    toggleableActiveColor: defaultAccentColor,
    indicatorColor: accentLightColor,
    dividerColor: accentLightColor,
    cursorColor: iconColor,
    textSelectionHandleColor: iconColorDark,
    cardColor: dialogBgColor,
    dialogBackgroundColor: dialogBgColor,
    /* Buttons Theme */
    buttonTheme: ButtonThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(4.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      textTheme: ButtonTextTheme.normal,
      buttonColor: defaultAccentColor,
      disabledColor: buttonDisabledColor,
    ),
    iconTheme: IconThemeData(color: iconColor),
    primaryIconTheme: IconThemeData(color: iconColorDark),
    accentIconTheme: IconThemeData(color: defaultAccentColor),
    /* Text Theme */
    textTheme: TextTheme(
      headline5:
          TextStyle(color: defaultTextColor, fontSize: FontSize.TITLE.value),
      headline6:
          TextStyle(color: defaultTextColor, fontSize: FontSize.TITLE.value),
      // input text color
      subtitle1: TextStyle(
          color: defaultTextColorWhite, fontSize: FontSize.MESSAGE.value),
      subtitle2:
          TextStyle(color: defaultHintColor, fontSize: FontSize.SUBTITLE.value),
      bodyText1:
          TextStyle(color: defaultTextColor, fontSize: FontSize.SUBTITLE.value),
      bodyText2: TextStyle(
          color: defaultTextColorWhite, fontSize: FontSize.NORMAL.value),
      button: TextStyle(
          color: defaultTextColorBlack, fontSize: FontSize.NORMAL.value),
      caption: TextStyle(
          color: defaultMessageColor, fontSize: FontSize.NORMAL.value - 1),
      overline: TextStyle(
          color: accentLightColor, fontSize: FontSize.NORMAL.value - 2),
    ),
    /* Input-Field Theme */
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      errorBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      filled: true, // filled the field with color
      fillColor: fieldInputBgColor,
      isDense: true, // used less vertical space
      labelStyle: TextStyle(
        color: defaultHintColor,
        fontSize: FontSize.NORMAL.value,
      ),
      helperStyle: TextStyle(
        color: defaultMessageColor,
        fontSize: FontSize.NORMAL.value,
      ),
      hintStyle: TextStyle(
        color: defaultHintColor,
        fontSize: FontSize.NORMAL.value,
      ),
      errorStyle: TextStyle(
        color: defaultErrorColor,
        fontSize: FontSize.NORMAL.value,
      ),
    ),
    /* Chip Theme */
    chipTheme: ChipThemeData(
      brightness: Brightness.dark,
      backgroundColor: Colors.transparent,
      deleteIconColor: iconColor,
      disabledColor: defaultDisabledColor,
      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
      labelStyle: TextStyle(
        color: defaultHintColor,
        fontSize: FontSize.NORMAL.value,
      ),
      padding: EdgeInsets.all(4.0),
      secondaryLabelStyle: TextStyle(
        color: defaultAccentColor,
        fontSize: FontSize.NORMAL.value - 2,
      ),
      selectedColor: defaultAccentColor,
      secondarySelectedColor: accentLightColor,
      shape: StadiumBorder(
        side: BorderSide(
          color: defaultAccentColor,
          width: 2.0,
          style: BorderStyle.solid,
        ),
      ),
    ),
    /* Slider Theme */
//    sliderTheme: SliderThemeData(
//      activeTrackColor: Color(0xffeace98),
//      inactiveTrackColor: Color(0x3d212121),
//      disabledActiveTrackColor: Color(0xff888888),
//      disabledInactiveTrackColor: Color(0x1f000000),
//      activeTickMarkColor: Color(0x8a9e9e9e),
//      inactiveTickMarkColor: Color(0x8a212121),
//      disabledActiveTickMarkColor: Color(0x1f9e9e9e),
//      disabledInactiveTickMarkColor: Color(0x1f000000),
//      thumbColor: Color(0xffe7c080),
//      disabledThumbColor: Color(0xff888888),
//      thumbShape: RoundSliderThumbShape(),
//      overlayColor: Color(0x29212121),
//      valueIndicatorColor: Color(0xff575757),
//      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
//      showValueIndicator: ShowValueIndicator.onlyForDiscrete,
//      valueIndicatorTextStyle: TextStyle(
//        color: Color(0xdd000000),
//        fontSize: 14.0,
//        fontWeight: FontWeight.w400,
//        fontStyle: FontStyle.normal,
//      ),
//    ),
  );
}

///Example of changing the replace app theme color
//new Theme(
//  data: Theme.of(context).copyWith(accentColor: Colors.yellow),
//  child: Text('copyWith method'),
//);

///Example of child widget uses theme color
//new Container(
//  color: Theme.of(context).accentColor,
//  child: new Text(
//    'Text with a background color',
//    style: Theme.of(context).textTheme.title,
//  ),
//);

///ThemeData color usage
/// Ref: https://juejin.im/post/5d751714f265da03ad14765c
//factory ThemeData({
//Brightness brightness, // 应用整体主题的亮度。用于按钮之类的小部件，以确定在不使用主色或强调色时选择什么颜色。
//MaterialColor primarySwatch,// 定义一个单一的颜色以及十个色度的色块。
//Color primaryColor, // 应用进程主要部分的背景颜色(toolbars、tab bars 等)
//Brightness primaryColorBrightness, // primaryColor的亮度。用于确定文本的颜色和放置在主颜色之上的图标(例如工具栏文本)。
//Color primaryColorLight, // primaryColor的浅色版
//Color primaryColorDark, // primaryColor的深色版
//Color accentColor, // 小部件的前景色(旋钮、文本、覆盖边缘效果等)。
//Brightness accentColorBrightness, // accentColor的亮度。
//Color canvasColor, //  MaterialType.canvas 的默认颜色
//Color scaffoldBackgroundColor, // Scaffold的默认颜色。典型Material应用进程或应用进程内页面的背景颜色。
//Color bottomAppBarColor, // BottomAppBar的默认颜色
//Color cardColor, // Card的颜色
//Color dividerColor, // Divider和PopupMenuDivider的颜色，也用于ListTile之间、DataTable的行之间等。
//Color highlightColor, // 选中在泼墨动画期间使用的突出显示颜色，或用于指示菜单中的项。
//Color splashColor,  // 墨水飞溅的颜色。InkWell
//InteractiveInkFeatureFactory splashFactory, // 定义由InkWell和InkResponse反应产生的墨溅的外观。
//Color selectedRowColor, // 用于突出显示选定行的颜色。
//Color unselectedWidgetColor, // 用于处于非活动(但已启用)状态的小部件的颜色。例如，未选中的复选框。通常与accentColor形成对比。也看到disabledColor。
//Color disabledColor, // 禁用状态下部件的颜色，无论其当前状态如何。例如，一个禁用的复选框(可以选中或未选中)。
//Color buttonColor, // RaisedButton按钮中使用的Material 的默认填充颜色。
//ButtonThemeData buttonTheme, // 定义按钮部件的默认配置，如RaisedButton和FlatButton。
//Color secondaryHeaderColor, // 选定行时PaginatedDataTable标题的颜色。
//Color textSelectionColor, // 文本框中文本选择的颜色，如TextField
//Color cursorColor, // 文本框中光标的颜色，如TextField
//Color textSelectionHandleColor,  // 用于调整当前选定的文本部分的句柄的颜色。
//Color backgroundColor, // 与主色形成对比的颜色，例如用作进度条的剩余部分。
//Color dialogBackgroundColor, // Dialog 元素的背景颜色
//Color indicatorColor, // 选项卡中选定的选项卡指示器的颜色。
//Color hintColor, // 用于提示文本或占位符文本的颜色，例如在TextField中。
//Color errorColor, // 用于输入验证错误的颜色，例如在TextField中
//Color toggleableActiveColor, // 用于突出显示Switch、Radio和Checkbox等可切换小部件的活动状态的颜色。
//String fontFamily, // 文本字体
//TextTheme textTheme, // 文本的颜色与卡片和画布的颜色形成对比。
//TextTheme primaryTextTheme, // 与primaryColor形成对比的文本主题
//TextTheme accentTextTheme, // 与accentColor形成对比的文本主题。
//InputDecorationTheme inputDecorationTheme, // 基于这个主题的 InputDecorator、TextField和TextFormField的默认InputDecoration值。
//IconThemeData iconTheme, // 与卡片和画布颜色形成对比的图标主题
//IconThemeData primaryIconTheme, // 与primaryColor形成对比的图标主题
//IconThemeData accentIconTheme, // 与accentColor形成对比的图标主题。
//SliderThemeData sliderTheme,  // 用于呈现Slider的颜色和形状
//TabBarTheme tabBarTheme, // 用于自定义选项卡栏指示器的大小、形状和颜色的主题。
//CardTheme cardTheme, // Card的颜色和样式
//ChipThemeData chipTheme, // Chip的颜色和样式
//TargetPlatform platform,
//MaterialTapTargetSize materialTapTargetSize, // 配置某些Material部件的命中测试大小
//PageTransitionsTheme pageTransitionsTheme,
//AppBarTheme appBarTheme, // 用于自定义Appbar的颜色、高度、亮度、iconTheme和textTheme的主题。
//BottomAppBarTheme bottomAppBarTheme, // 自定义BottomAppBar的形状、高度和颜色的主题。
//ColorScheme colorScheme, // 拥有13种颜色，可用于配置大多数组件的颜色。
//DialogTheme dialogTheme, // 自定义Dialog的主题形状
//Typography typography, // 用于配置TextTheme、primaryTextTheme和accentTextTheme的颜色和几何TextTheme值。
//CupertinoThemeData cupertinoOverrideTheme
//})
