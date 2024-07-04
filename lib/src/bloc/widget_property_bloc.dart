import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widget_property_event.dart';
part 'widget_property_state.dart';

class WidgetPropertyBloc extends Bloc<WidgetPropertyEvent, Widget> {
  WidgetPropertyBloc() : super(const SizedBox()) {
     on<GetWidget>((event, emit) {
      emit(event.getWidget);
    });
    on<RefreshWidgetProperty>((event, emit) {
      emit(state);
    });
  }
}
