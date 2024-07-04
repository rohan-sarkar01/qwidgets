part of 'q_editor_bloc.dart';

sealed class QEditorEvent extends Equatable {
  const QEditorEvent();

  @override
  List<Object> get props => [];
}

class RefreshWidget extends QEditorEvent{}