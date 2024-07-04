import 'package:flutter/material.dart';

class WidgetNode {
  final String type;
  List<WidgetNode>? children;
  final String hint;
  String text;
  double? fontSize;
  Color? color;
  Color? bgColor;
  double? padding;
  double? paddingLeft;
  double? paddingTop;
  double? paddingRight;
  double? paddingBottom;
  double? margin;
  double? marginLeft;
  double? marginTop;
  double? marginRight;
  double? marginBottom;
  String id;
  bool selected;
  bool isSelected;
  bool isHover;
  bool isDraggable;

  WidgetNode({
    required this.type,
    this.children,
    this.hint = '',
    this.text = 'Text',
    this.fontSize,
    this.color,
    this.bgColor,
    this. padding,
    this. paddingLeft,
    this. paddingTop,
    this. paddingRight,
    this. paddingBottom,
    this. margin,
    this. marginLeft,
    this. marginTop,
    this. marginRight,
    this. marginBottom,
    this.id = '',
    this.selected=false,
    this.isSelected=false,
    this.isHover=false,
    this.isDraggable=false,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      "type": type,
      "children": children!.map((child) => child.toJson()).toList(),
      "hint": hint,
      "text": text,
      //"isDraggingFirstTime": isDraggingFirstTime,
    };
    return json;
  }
}