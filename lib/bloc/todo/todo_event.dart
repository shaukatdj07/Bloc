import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class AddEvent extends TodoEvent {
  final String task;

  const AddEvent({required this.task});

  @override
  List<Object> get props => [task];
}

class DeleteEvent extends TodoEvent {

  final Object task;

  const DeleteEvent({required this.task});

  @override
  List<Object> get props => [task];
}
