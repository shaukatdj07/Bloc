
import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/todo/todo_event.dart';
import 'package:bloc_app/bloc/todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState>{

  final List<String> todosList=[];

  TodoBloc(): super(TodoState()){
   on<AddEvent>(_addEvent);
   on<DeleteEvent>(_deleteEvent);
  }

  void _addEvent(AddEvent event,Emitter<TodoState> emit){

    todosList.add(event.task);
    emit(state.copyWith(todoList: List.from(todosList)));
  }
  void _deleteEvent(DeleteEvent event,Emitter<TodoState> emit){
    todosList.remove(event.task);
    emit(state.copyWith(todoList: List.from(todosList)));
  }

}