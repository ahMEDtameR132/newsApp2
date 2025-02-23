import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsappcubit/cubit/cubit.dart';
import 'package:newsappcubit/screen/home_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Appcubit()..getnews(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false
        ,home: HomeScreen()),
    );
  }
}
