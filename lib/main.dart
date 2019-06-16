import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/blocs/dashboard_bloc.dart';
import 'package:pastoravocacional/blocs/home_bloc.dart';
import 'package:pastoravocacional/blocs/login_bloc.dart';
import 'package:pastoravocacional/repositories/auth_respository.dart';
import 'package:pastoravocacional/repositories/impl/auth_repository_impl.dart';
import 'package:pastoravocacional/repositories/impl/getAll_repository_impl.dart';
import 'package:pastoravocacional/routes.dart';
import 'package:pastoravocacional/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      blocs: [
        Bloc((i) => LoginBloc(i.get<AuthRepository>())),
        Bloc((i) => HomeBloc()),
        Bloc((i) => DashboardBloc(i.get<GetAllRepositoryImpl>()))
      ],
      dependencies: [
        Dependency((i) => AuthRepositoryImpl()),
        Dependency((i) => GetAllRepositoryImpl()),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [Locale("pt")],
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: customStyles.mainColor,
          splashColor: customStyles.mainColor,
          accentColor: customStyles.mainColor
        ),
        routes: routes(),
        home: HomeScreen(),
      ),
    );
  }
}
