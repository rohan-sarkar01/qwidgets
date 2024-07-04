import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qwidgets/src/helper/q_widget_util.dart';



class HoverBuilder extends StatefulWidget {
  const HoverBuilder({
    required this.builder,
    required this.getChild,
    this.needHover,
    super.key,
  });

  final Widget getChild;
  final bool? needHover;
  final Widget Function(bool isHovered) builder;

  @override
  _HoverBuilderState createState() => _HoverBuilderState();
}

class _HoverBuilderState extends State<HoverBuilder> {
  ValueNotifier<bool> isHover = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
   return ValueListenableBuilder(
       valueListenable: isHover,
       builder:(context,value,child){
         return  widget.needHover ?? false ? 
          MouseRegion(
            onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
            onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
            child: Container(
              padding: EdgeInsets.all(isHover.value?10:0),
              decoration: isHover.value?getDecoration(borderWidth: 1,borderColor: Colors.blue):null,
              child: widget.builder(isHover.value),
            ),
          )
          : widget.builder(false);
       }

   );
  }

  void _onHoverChanged({required bool enabled}) {
    isHover.value=enabled;
  }
}