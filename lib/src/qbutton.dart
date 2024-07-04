import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qwidgets/src/bloc/q_editor_bloc.dart';
import 'package:qwidgets/src/bloc/widget_property_bloc.dart';
import 'package:qwidgets/src/helper/constant.dart';
import 'package:qwidgets/src/helper/hoverbuilder.dart';
import 'package:qwidgets/src/helper/q_widget_util.dart';
import 'package:qwidgets/src/helper/util.dart';
import 'package:qwidgets/src/helper/widget_node.dart';


class QButton extends StatefulWidget {
   QButton(
      {super.key,
      required this.text,
      this.isLoading = ButtonConstants.isLoading,
      this.height = ButtonConstants.height,
      this.iconLeft,
      this.iconRight,
      this.borderRadius = ButtonConstants.borderRadius,
      this.borderWidth = ButtonConstants.borderWidth,
      this.bgColor = ColorConstants.transparent,
      this.color = ButtonConstants.foregroundColor,
      this.pressedBackgroundColor,
      this.hoveredBackgroundColor,
      this.disabledBackgroundColor = ButtonConstants.disabledBackgroundColor,
      this.disabledForegroundColor = ButtonConstants.disabledForegroundColor,
      this.focusedBorderColor,
      this.shadowColor,
      this.elevation = ButtonConstants.elevation,
      this.hoveredElevation = ButtonConstants.hoveredElevation,
      required this.onPressed,
      this.onHover,
      this.onFocusChange,
      this.onLongPress,
      this.padding,
      this.outerpaddingLeft,
      this.outerpaddingTop,
      this.outerpaddingRight,
      this.outerpaddingBottom,
      this.innerpaddingLeft,
      this.innerpaddingTop,
      this.innerpaddingRight,
      this.innerpaddingBottom,
      this.margin,
      this.marginLeft,
      this.marginTop,
      this.marginRight,
      this.marginBottom,
      this.isExpanded = false,
      this.alignment = Alignment.centerLeft,
      this.widgetNode,
       this.isHover=false,
       this.isDraggable=false,
       this.isSelected=false,
      });

  final String text;

  final bool isLoading;
  final bool isExpanded;

  final double height;
  final double borderRadius;
  final double borderWidth;

  final IconData? iconLeft;
  final IconData? iconRight;

  final Color? bgColor;
  final Color? color;
  final Color? pressedBackgroundColor;
  final Color? hoveredBackgroundColor;
  final Color? disabledBackgroundColor;
  final Color? disabledForegroundColor;
  final Color? focusedBorderColor;
  final Color? shadowColor;

  final double? elevation;
  final double? hoveredElevation;
  final double? padding;
  final double? outerpaddingLeft;
  final double? outerpaddingTop;
  final double? outerpaddingRight;
  final double? outerpaddingBottom;
  final double? innerpaddingLeft;
  final double? innerpaddingTop;
  final double? innerpaddingRight;
  final double? innerpaddingBottom;
  final double? margin;
  final double? marginLeft;
  final double? marginTop;
  final double? marginRight;
  final double? marginBottom;
  final Alignment? alignment;
   bool isHover;
   bool isDraggable;
   bool isSelected;

  final void Function(bool value)? onHover;
  final void Function(bool value)? onFocusChange;
  final void Function()? onLongPress;
  final void Function()? onPressed;
  WidgetNode? widgetNode;

  @override
  State<QButton> createState() => _QButtonState();
}

class _QButtonState extends State<QButton> {
  @override
  Widget build(BuildContext context) {
    setProperty(widget);
    return  widget.isDraggable?Draggable(
      data: widget.widgetNode,
      feedback: buildQbutton(),
      childWhenDragging: Container(),
      child: buildQbutton(),
    ): buildQbutton();
  }
  Widget buildQbutton() {
    if(widget.widgetNode!=null) {
      if (widget.widgetNode!.selected == true) {
        context.watch<WidgetPropertyBloc>().add(GetWidget(getWidget: widget));
      }
    }
    return HoverBuilder(
        needHover:widget.isHover,
        getChild: widget,
      builder: (_) {
        final qEditorBloc=BlocProvider.of<QEditorBloc>(context);
        return getWidgetSelected(
          onTap:widget.isSelected?(){
          _onSelected(qEditorBloc);
        }:null,
          widgetNode: widget.widgetNode,
          context: context,
          child: Row(
            mainAxisAlignment: getAlignment(widget.alignment),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                ),
                margin: getMargin(margins: widget.margin, marginBottom: widget.marginBottom, marginLeft: widget.marginLeft, marginRight: widget.marginRight, marginTop: widget.marginTop),
                padding: getPadding(
                    paddings: widget.padding, paddingBottom: widget.outerpaddingBottom, paddingLeft: widget.outerpaddingLeft, paddingRight: widget.outerpaddingRight, paddingTop: widget.outerpaddingTop),
                child: IgnorePointer(
                  ignoring:widget.isHover ,
                  child: ElevatedButton(
                    onPressed: widget.onPressed,
                    onHover: widget.onHover,
                    onFocusChange: widget.onFocusChange,
                    onLongPress: widget.onLongPress,
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(widget.isExpanded ? double.infinity : 10, widget.height),
                        disabledBackgroundColor: widget.disabledBackgroundColor,
                        disabledForegroundColor: widget.disabledForegroundColor,
                        foregroundColor: widget.bgColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.borderRadius))
                      ).copyWith(backgroundColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return widget.pressedBackgroundColor ?? widget.bgColor;
                      }
                      if (states.contains(WidgetState.disabled)) {
                        return widget.disabledBackgroundColor;
                      }
                      if (states.contains(WidgetState.hovered)) {
                        return widget.hoveredBackgroundColor ?? widget.bgColor;
                      }
                      return widget.bgColor; // Defer to the widget's default.
                    }), side: WidgetStateProperty.resolveWith<BorderSide?>((Set<WidgetState> states) {
                      if (states.contains(WidgetState.pressed)) {
                        return BorderSide(color: widget.focusedBorderColor ?? widget.bgColor!, width: widget.borderWidth);
                      }
                      return null;
                    }), elevation: WidgetStateProperty.resolveWith<double?>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.hovered)) {
                          return widget.hoveredElevation;
                        }
                        return widget.elevation;
                      },
                    ), shadowColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                      if (states.contains(WidgetState.hovered)) {
                        return widget.shadowColor ?? widget.bgColor;
                      }
                      return null; // Defer to the widget's default.
                    })),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.isLoading) ...{
                          CupertinoActivityIndicator(
                            color: widget.color,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        },
                        if (widget.iconLeft != null) ...{
                          Icon(
                            widget.iconLeft,
                            color: widget.color,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        },
                        Padding(
                          padding: getPadding(
                              paddings: widget.padding,
                              paddingBottom: widget.innerpaddingBottom,
                              paddingLeft: widget.innerpaddingLeft,
                              paddingRight: widget.innerpaddingRight,
                              paddingTop: widget.innerpaddingTop),
                          child: buttonText(widget.text, color: widget.color),
                        ),
                        if (widget.iconRight != null) ...{
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            widget.iconRight,
                            color: widget.color,
                          ),
                        }
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );

  }

  void _onSelected(Bloc qEditorBloc){
    setState(() {
      if(widget.widgetNode?.selected==true){
        widget.widgetNode?.selected=false;
      }else{
        findWidgetAndSelected(qEditorBloc.state);
        widget.widgetNode?.selected=true;
        qEditorBloc.add(RefreshWidget());
      }});
  }

  MainAxisAlignment getAlignment(Alignment? alignment) {
    switch (alignment) {
      case null:
        return MainAxisAlignment.start;
      case Alignment.center:
        return MainAxisAlignment.center;
      case Alignment.centerLeft:
        return MainAxisAlignment.start;
      case Alignment.centerRight:
        return MainAxisAlignment.end;
    }
    return MainAxisAlignment.start;
  }
}
