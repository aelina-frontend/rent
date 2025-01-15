import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent/cubit/rent_cubit.dart';
import 'package:rent/screens/rent_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => RentCubit()..loadingRent())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RentScreen(),
      ),
    );
  }
}

