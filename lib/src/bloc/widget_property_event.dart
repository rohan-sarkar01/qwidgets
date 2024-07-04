part of 'widget_property_bloc.dart';

@immutable
sealed class WidgetPropertyEvent {}

class GetWidget extends WidgetPropertyEvent{
  Widget getWidget;
  GetWidget({required this.getWidget});
}
class RefreshWidgetProperty extends WidgetPropertyEvent{}
