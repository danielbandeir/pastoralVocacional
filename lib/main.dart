import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'screens/login_screen.dart';
=======
import 'package:pastoravocacional/blocs/login_bloc.dart';
import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:pastoravocacional/repositories/impl/auth_repository_impl.dart';
>>>>>>> 00a6ad3b96ac2cc87356eba513b26671d8986c84

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        home: Container(),
      ),
<<<<<<< HEAD
      home: LoginScreen(),
=======
>>>>>>> 00a6ad3b96ac2cc87356eba513b26671d8986c84
    );
  }
}
