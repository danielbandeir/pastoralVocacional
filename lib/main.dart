import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:pastoravocacional/blocs/login_bloc.dart';
import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:pastoravocacional/repositories/impl/auth_repository_impl.dart';
>>>>>>> e16ed9862d145caf611b9cb20e15b963186dc64b
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    return BlocProvider(
      blocs: [
        Bloc((i) => LoginBloc(i.get<AuthRepository>()))
      ],
      dependencies: [
        Dependency((i) => AuthRepositoryImpl()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
