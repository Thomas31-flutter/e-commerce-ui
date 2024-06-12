import 'package:e_commerce/models/myappcubit.dart';
import 'package:e_commerce/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyappCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginaPage(),
      ),
    );
  }
}
