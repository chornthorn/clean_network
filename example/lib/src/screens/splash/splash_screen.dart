import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:clean_network_sample/src/controller/post/post_bloc.dart';
import 'package:clean_network_sample/src/dependencies/dependency_injection.dart';
import 'package:clean_network_sample/src/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetIt.instance.allReady(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return BlocProvider(
            create: (context) => sl.get<PostBloc>()..add(GetPostList()),
            child: HomeScreen(),
          );
        } else if (snapshot.hasError) {
          return CrashApp();
        } else {
          return Loading();
        }
      },
    );
  }
}

class CrashApp extends StatelessWidget {
  const CrashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Something went wrong!")),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
