import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'q_editor_event.dart';
part 'q_editor_state.dart';

class QEditorBloc extends Bloc<QEditorEvent, List<Widget>> {
  QEditorBloc() : super([]) {
    on<RefreshWidget>((event,emit){
      emit([...state]);
    });
  }
}
