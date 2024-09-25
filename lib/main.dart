import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballCount());
}

class BasketballCount extends StatelessWidget {
  const BasketballCount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
