import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:basketball_points/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text(
              'Points Counter',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            shadowColor: const Color.fromARGB(255, 8, 46, 52),
            backgroundColor: const Color(0xFF3AA6B9),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A ',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                          style: TextStyle(
                              fontSize: 150,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w400),
                        ),
                        customButton(
                          text: 'Add 1 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamInrement(team: 'A', buttonNumber: 1);
                          },
                        ),
                        customButton(
                          text: 'Add 2 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamInrement(team: 'A', buttonNumber: 2);
                          },
                        ),
                        customButton(
                          text: 'Add 3 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamInrement(team: 'A', buttonNumber: 3);
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 20,
                      indent: 60,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBpoints} ',
                          style: TextStyle(
                              fontSize: 150,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w400),
                        ),
                        customButton(
                          text: 'Add 1 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamInrement(team: 'B', buttonNumber: 1);
                          },
                        ),
                        customButton(
                          text: 'Add 2 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamInrement(team: 'B', buttonNumber: 2);
                          },
                        ),
                        customButton(
                          text: 'Add 3 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamInrement(team: 'B', buttonNumber: 3);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3AA6B9),
                    minimumSize: const Size(170, 55)),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamReset();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
