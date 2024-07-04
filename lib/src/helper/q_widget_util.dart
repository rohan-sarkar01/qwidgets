import 'package:flutter/material.dart';
import 'package:qwidgets/src/helper/constant.dart';



BoxDecoration getDecoration({Color? bgColor,double? borderWidth,Color? borderColor,double? borderRadius}) {
  BoxDecoration decoration=BoxDecoration(
    color: bgColor,
    border: borderWidth!=null?Border.all(width: borderWidth,
        color: borderColor ?? ColorConstants.black3):null,
    borderRadius: BorderRadius.circular(borderRadius??0),
  );

  if(bgColor!=null){
    decoration.copyWith(color: ColorConstants.black);
  }

  if(borderWidth!=null){
    Border border=Border.all(width: borderWidth,
      color: borderColor??ColorConstants.black3,
    );
    decoration.copyWith(border: border);
  }
  if(borderRadius!=null){
    decoration.copyWith(borderRadius: BorderRadius.circular(borderRadius));
  }
  return decoration;
}

EdgeInsets getMargin({double? margins,double? marginLeft,double? marginRight,double? marginTop,double? marginBottom}) {
  var margin=const EdgeInsets.all(0);
  if(margins!=null) {
    margin=EdgeInsets.all(margins);
  }

  if(marginLeft!=null||marginRight!=null||marginTop!=null||marginBottom!=null){
    margin=EdgeInsets.only(
        left: marginLeft??0,
        right: marginRight??0,
        top: marginTop??0,
        bottom: marginBottom??0
    );
  }
  return margin;
}

EdgeInsets getPadding({double? paddings,double? paddingLeft,double? paddingRight,double?paddingTop,double? paddingBottom}) {
  var padding=const EdgeInsets.all(0);
  if(paddings!=null) {
    padding=EdgeInsets.all(paddings);
  }
  if(paddingLeft!=null||paddingRight!=null||paddingTop!=null||paddingBottom!=null){
    padding=EdgeInsets.only(
        left: paddingLeft??0,
        right: paddingRight??0,
        top: paddingTop??0,
        bottom: paddingBottom??0
    );
  }
  return padding;
}
TextStyle getFontStyle(double? fontSize, FontWeight? fontWeight,Color? color,TextStyle? wStyle) {
  TextStyle style=TextStyle(
    fontFamily: TextStyleTypography.fontFamily,
    fontStyle: FontStyle.normal,
    fontWeight: fontWeight??FontWeight.w400,
    fontSize: fontSize??14,
    color: color??TextStyleTypography.NTypoColor,
  );
  if(wStyle!=null) {
    style= wStyle.copyWith(color:color,fontSize: fontSize,fontWeight:fontWeight, fontFamily: TextStyleTypography.fontFamily,);
  }
  return style;
}