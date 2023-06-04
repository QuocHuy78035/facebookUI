import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/screens/home_screen/home_screen.dart';
import 'package:facebook/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FaceBookBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //
        //home: const ProfilLogin(userName: 'Quoc Huy',),
        home: const LoginScreen(),
      ),
    );
  }
}
