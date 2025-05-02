
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_dos/common/bloc/common_state.dart';
import 'package:to_dos/features/home/models/todo.dart';

class FetchTodoCubit extends Cubit<CommonState>{
  FetchTodoCubit():super(CommonInitialState());

fetchTodo ()async{
  emit(CommonLoadingState());
final dio = Dio();
try{
final response = await dio.get("https://jsonplaceholder.typicode.com/todos/");
final convertedList = List.from(response.data);
final data = convertedList.map((e) =>Todo(id: e["id"],userId: e["userId"],title: e["title"],isCompleted: e["completed"])).toList();
emit(CommonSuccessState(data: data));
}on DioException catch(e){
return e.message;
}catch(e){
return "Couldnot find the error";
}
}
}