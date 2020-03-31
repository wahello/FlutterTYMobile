import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/resource_export.dart';

class DropdownTitledWidget extends StatefulWidget {
  final List<DropdownMenuItem> menuItems;
  final DropdownButtonBuilder builder;
  final String titleText;
  final dynamic initValue;
  final bool expandWidget;
  final EdgeInsetsGeometry fieldPadding;
  final int minusFieldHeight;
  final ValueChanged changeNotify;

  DropdownTitledWidget({
    key,
    this.titleText,
    this.menuItems,
    this.builder,
    this.initValue,
    this.expandWidget = true,
    this.fieldPadding,
    this.minusFieldHeight = 0,
    this.changeNotify,
  }) : super(key: key);

  @override
  _DropdownTitledWidgetState createState() => _DropdownTitledWidgetState();
}

class _DropdownTitledWidgetState extends State<DropdownTitledWidget> {
  dynamic dropdownValue;

  void updateValue(value) {
    setState(() {
      dropdownValue = value;
    });
  }

  @override
  void initState() {
    dropdownValue = widget.initValue;
    if (widget.menuItems != null) dropdownValue ??= widget.menuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0, top: 2.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: Container(
                color: Themes.defaultWidgetBgColor,
                height: Themes.fieldHeight - widget.minusFieldHeight,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Text(widget.titleText),
                  ),
                ),
              ),
            ),
            new Expanded(
              flex: 5,
              child: Container(
                padding: widget.fieldPadding ??
                    EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 16.0 - widget.minusFieldHeight),
                color: Themes.fieldInputBgColor,
                child: DropdownButton(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 0,
                  isExpanded: widget.expandWidget,
                  isDense: true,
                  underline: SizedBox.shrink(),
                  style: TextStyle(
                    color: Themes.defaultTextColor,
                    fontSize: FontSize.SUBTITLE.value,
                  ),
                  onChanged: (data) {
                    widget.changeNotify(data);
                    setState(() {
                      dropdownValue = data;
                    });
                  },
                  selectedItemBuilder: widget.builder,
                  items: widget.menuItems,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
