import 'package:flutter/material.dart';
import 'package:qwidgets/qwidgets.dart';
import 'package:qwidgets/src/helper/constant.dart';
import 'package:qwidgets/src/helper/q_widget_util.dart';
import 'package:qwidgets/src/helper/widget_node.dart';
import 'package:qwidgets/src/q_text.dart';
import 'package:qwidgets/src/qbutton.dart';

void setProperty(widget) {
  if(!checkEmpty(widget.widgetNode)){
    widget.isDraggable=widget.widgetNode!.isDraggable;
    widget.isHover=widget.widgetNode!.isHover;
    widget.isSelected=widget.widgetNode!.isSelected;
  }
}

bool checkEmpty(mixedVar) {
  if (mixedVar is List || mixedVar is Map) {
    if (mixedVar.isEmpty) {
      return true;
    }
  } else {
    var undef;
    var undefined;
    var i;
    var emptyValues = [
      undef,
      null,
      'null',
      'Null',
      'NULL',
      false,
      0,
      '',
      '0',
      '0.00',
      '0.0',
      'empty',
      undefined,
      'undefined'
    ];
    var len = emptyValues.length;
    if (mixedVar is String) {
      mixedVar = mixedVar.trim();
    }

    for (i = 0; i < len; i++) {
      if (mixedVar == emptyValues[i]) {
        return true;
      }
    }
  }
  return false;
}

GestureDetector getWidgetSelected({required Widget child,WidgetNode? widgetNode,context,void Function()? onTap}) {
  return GestureDetector(
    onTap:onTap,
    child: Container(
        padding: EdgeInsets.all(widgetNode!=null?widgetNode!.selected?5:0:0),
        decoration:widgetNode!=null?widgetNode!.selected?getDecoration(borderWidth: 1,borderColor: Colors.black):null:null,
        child:child
    ),
  );
}

buttonText(String text, {Color? color}) {
  {
    return QText(
      text:text,
      style: TextStyleTypography.typoMediumStyle14.copyWith(
        color: color ?? TextStyleTypography.MTypoColor,
      ),
    );
  }
}

findWidgetAndSelected(List<Widget> selectedList){
  for(Widget widg in selectedList){
    // if(widg is QRow){
    //  if(!checkEmpty(widg.children)) findWidgetAndSelected(widg.children);
    //  widg.widgetNode!.selected=false;
    // }
    // if(widg is QColumn){
    //   if(!checkEmpty(widg.children)) findWidgetAndSelected(widg.children);
    //   widg.widgetNode!.selected=false;
    // }
    if(widg is QText){
      widg.widgetNode!.selected=false;
    }
    if(widg is QButton){
      widg.widgetNode!.selected=false;
    }

    // if(widg is QHalfWidth){
    //   if(!checkEmpty(widg.children)) findWidgetAndSelected(widg.children);
    //   widg.widgetNode!.selected=false;
    // }
    // if(widg is QThreeColumn){
    //   if(!checkEmpty(widg.children)) findWidgetAndSelected(widg.children);
    //   widg.widgetNode!.selected=false;
    // }
    // if(widg is QFourColumn){
    //   if(!checkEmpty(widg.children)) findWidgetAndSelected(widg.children);
    //   widg.widgetNode!.selected=false;
    // }
    // if(widg is Expanded){
    //   var widChild=widg.child;
    //   if(widChild is QRow){
    //     findWidgetAndSelected(widChild.children);
    //   }
    //   if(widChild is QColumn){
    //     print("hhhhfhfhfhf");
    //     findWidgetAndSelected(widChild.children);
    //   }
  }
}
