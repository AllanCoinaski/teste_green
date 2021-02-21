import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_green/blocs/user_bloc.dart';
import 'package:teste_green/blocs/user_repository.dart';
import 'package:teste_green/screens/home_screen.dart';

void main() => runApp(MaterialApp(
      home: BlocProvider(
          create: (BuildContext context) => UserBloc(UserRepositoryImpl()),
          child: HomeScreen()),
      debugShowCheckedModeBanner: false,
    ));
