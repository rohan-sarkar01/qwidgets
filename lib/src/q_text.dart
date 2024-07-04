import 'dart:js_interop';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qwidgets/src/bloc/q_editor_bloc.dart';
import 'package:qwidgets/src/bloc/widget_property_bloc.dart';
import 'package:qwidgets/src/helper/hoverbuilder.dart';
import 'package:qwidgets/src/helper/q_widget_util.dart';
import 'package:qwidgets/src/helper/util.dart';
import 'package:qwidgets/src/helper/widget_node.dart';


class QText extends StatefulWidget {
  String text;
  TextStyle? style;
  Color? color;
  Color? bgColor;
  int? maxLines;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  double? fontSize;
  final FontWeight? fontWeight;
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
  double? height;
  double? width;
  Alignment? alignment;
  WidgetNode? widgetNode;
  bool isHover;
  bool isDraggable;
  bool isSelected;

  QText({super.key, required this.text,   this.style ,  this.maxLines, this.textDirection, this.textAlign, this.overflow,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.bgColor,
    this.padding,
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.paddingTop,
    this.margin,
    this.marginLeft,
    this.marginBottom,
    this.marginRight,
    this.marginTop,
    this.height,
    this.width,
    this.alignment,
    this.widgetNode,
    this.isHover=false,
    this.isDraggable=false,
    this.isSelected=false
  });

  @override
  _QTextState createState() => _QTextState();
}

class _QTextState extends State<QText> {
  @override
  Widget build(BuildContext context) {
    setProperty(widget);
    return widget.isDraggable?Draggable(
      data: widget.widgetNode ,
      feedback: buildText(),
      childWhenDragging: Container(),
      child: buildText()
    ):buildText();
  }

  Widget buildText() {
    if(widget.widgetNode!=null) {
      if (widget.widgetNode!.selected == true) {
        context.watch<WidgetPropertyBloc>().add(GetWidget(getWidget: widget));
      }
    }

    return HoverBuilder(
      needHover:widget.isHover,
      getChild: widget,
      builder: (onHover) {
        final qEditorBloc=BlocProvider.of<QEditorBloc>(context);
        return getWidgetSelected(
          onTap:widget.isSelected?(){
            _onSelected(qEditorBloc);
          }:null,
          widgetNode: widget.widgetNode,
          context: context,
             child:Container(
               alignment: widget.alignment,
               height: widget.height,
               width: widget.width,
               color: widget.bgColor,
               margin:getMargin(margins:widget.margin ,marginBottom: widget.marginBottom,marginLeft: widget.marginLeft,marginRight:widget.marginRight,marginTop: widget.marginTop,),
               padding: getPadding(paddings:widget.padding ,paddingBottom: widget.paddingBottom,paddingLeft: widget.paddingLeft,paddingRight:widget.paddingRight,paddingTop: widget.paddingTop,),
               child: Text(
                 widget.text,
                 style: getFontStyle(widget.fontSize,widget.fontWeight,widget.color,widget.style),
                 key:widget.key ,
                 maxLines:widget.maxLines,
                 textDirection:widget.textDirection,
                 textAlign:widget.textAlign,
                 overflow:widget.overflow,
               ),
             ),
        );
      }
    );
  }

  void _onSelected(Bloc qEditorBloc){
    setState(() {
      if(widget.widgetNode?.selected==true){
        widget.widgetNode?.selected=false;
        qEditorBloc.add(RefreshWidget());
      }else{
        findWidgetAndSelected(qEditorBloc.state);
        widget.widgetNode?.selected=true;
        qEditorBloc.add(RefreshWidget());
      }
    });
  }
}



