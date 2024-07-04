part of 'q_editor_bloc.dart';

sealed class QEditorState extends Equatable {
  const QEditorState();
  
  @override
  List<Object> get props => [];
}

final class QEditorInitial extends QEditorState {}
