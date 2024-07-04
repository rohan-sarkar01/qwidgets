part of 'widget_property_bloc.dart';

@immutable
sealed class WidgetPropertyEvent {}

// ignore: must_be_immutable
class GetWidget extends WidgetPropertyEvent{
  Widget getWidget;
  GetWidget({required this.getWidget});
}
class RefreshWidgetProperty extends WidgetPropertyEvent{}
