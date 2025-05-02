import 'package:dio/dio.dart';
import 'package:to_dos/features/home/models/todo.dart';

abstract class CommonState {}

class CommonInitialState extends CommonState {}

class CommonLoadingState extends CommonState {
  final bool isLoading;

  CommonLoadingState({this.isLoading = false});
}

class CommonSuccessState extends CommonState {
  final List<Todo> data;

  CommonSuccessState({required this.data});
}

class CommonErrorState extends CommonState {
  final String? message;

  CommonErrorState({required this.message});
}
