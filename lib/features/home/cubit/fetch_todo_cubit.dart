import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_dos/common/bloc/common_state.dart';
import 'package:to_dos/features/home/models/todo.dart';
import 'package:to_dos/features/home/resources/todo_respository.dart';

class FetchTodoCubit extends Cubit<CommonState> {
  final TodoRespository repo;
  FetchTodoCubit({required this.repo}) : super(CommonInitialState());

  fetchTodo() async {
    emit(CommonLoadingState());
    final res = await repo.fetchTodos();
    res.fold((error) => {
      emit(CommonErrorState(message: error))
    }, (data) => {emit(CommonSuccessState(data: data))});
  }
}
