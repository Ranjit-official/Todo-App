import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:to_dos/features/home/models/todo.dart';

class TodoRespository {
  List<Todo> _todo = [];
  List<Todo> get todos => _todo;

  final dio = Dio();

  Future<Either<String?, List<Todo>>> fetchTodos() async {
    try {
      final response =
          await dio.get("https://jsonplaceholder.typicode.com/todos/");
      final convertedList = List.from(response.data);
      final data = convertedList
          .map((e) => Todo(
              id: e["id"],
              userId: e["userId"],
              title: e["title"],
              isCompleted: e["completed"]))
          .toList();
      _todo.clear();
      _todo.addAll(data);
      return Right(data);
    } on DioException catch (e) {
      return Left(e.message);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
