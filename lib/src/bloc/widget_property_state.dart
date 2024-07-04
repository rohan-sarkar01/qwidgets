part of 'widget_property_bloc.dart';

sealed class WidgetPropertyState extends Equatable {
  const WidgetPropertyState();
  
  @override
  List<Object> get props => [];
}

final class WidgetPropertyInitial extends WidgetPropertyState {}
