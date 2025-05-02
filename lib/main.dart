import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:to_dos/common/error_screen.dart';
import 'package:to_dos/common/routes.dart';
import 'package:to_dos/features/auth/ui/screens/login_page.dart';
import 'package:to_dos/features/auth/ui/screens/register_page.dart';
import 'package:to_dos/features/auth/ui/screens/starting_page.dart';
import 'package:to_dos/features/dashboard/ui/screens/dashboard_screen.dart';
import 'package:to_dos/features/focus/ui/screens/focus_screen.dart';
import 'package:to_dos/features/home/cubit/fetch_todo_cubit.dart';
import 'package:to_dos/features/home/resources/todo_respository.dart';
import 'package:to_dos/features/home/ui/widgets/home_page_widget.dart';
import 'package:to_dos/features/profile/ui/screen/profile_screen.dart';
import 'package:to_dos/features/home/ui/screens/home_page_screen.dart';
import 'package:to_dos/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:to_dos/features/settings/ui/screens/settings_screen.dart';
import 'package:to_dos/features/splash/ui/screen/splash_page.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TodoRespository(),
      child: BlocProvider(
        create: (context) =>
            FetchTodoCubit(repo: context.read<TodoRespository>()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: HomePageWidget(),
          onGenerateRoute: (settings) {
            if (settings.name == Routes.dashboard) {
              return PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: DashBoardScreen());
            } else if (settings.name == Routes.login) {
              return PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: LoginPageScreen());
            } else if (settings.name == Routes.register) {
              return PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: RegisterPageScreen());
            } else if (settings.name == Routes.focus) {
              return PageTransition(
                  type: PageTransitionType.leftToRight, child: FocusScreen());
            } else if (settings.name == Routes.home) {
              return PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: HomePageScreen());
            } else if (settings.name == Routes.onboarding) {
              return PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: OnBoadingScreen());
            } else if (settings.name == Routes.profile) {
              return PageTransition(
                  type: PageTransitionType.leftToRight, child: ProfilePage());
            } else if (settings.name == Routes.setting) {
              return PageTransition(
                  type: PageTransitionType.leftToRight, child: SettingScreen());
            } else if (settings.name == Routes.splash) {
              return PageTransition(
                  type: PageTransitionType.leftToRight, child: SplashScreen());
            } else {
              return PageTransition(
                  type: PageTransitionType.leftToRight, child: ErrorScreen());
            }
          },
        ),
      ),
    );
  }
}
