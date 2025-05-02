import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_dos/common/Assets.dart';
import 'package:to_dos/common/bloc/common_state.dart';
import 'package:to_dos/features/home/cubit/fetch_todo_cubit.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<FetchTodoCubit>().fetchTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        title: Text("Index"),
        actionsPadding: EdgeInsets.only(right: 20),
        actions: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                Assets.profile,
                width: 42,
                height: 42,
              )),
        ],
      ),
      body: BlocBuilder<FetchTodoCubit, CommonState>(builder: (context, state) {
        if (state is CommonLoadingState) {
          return Center(
            child: CupertinoActivityIndicator(),
          );
        } else if (state is CommonSuccessState) {
          final data = state.data;
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(
                state.data[index].title,
              ));
            },
            itemCount: data.length,
          );
        } else {
          return Text("i dont know");
        }
      }),
    );
  }
}
