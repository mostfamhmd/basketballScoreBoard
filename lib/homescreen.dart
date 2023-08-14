// ignore_for_file: must_be_immutable

import 'package:basketball_counter/comp/button.dart';
import 'package:basketball_counter/cubit/cubit/counter_cubit.dart';
import 'package:basketball_counter/model/column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int a = 0;

  int b = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // TODO: implement listener
        a = BlocProvider.of<CounterCubit>(context).teamACounter;
        b = BlocProvider.of<CounterCubit>(context).teamBCounter;
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Your ScoreBoard",
            ),
            centerTitle: true,
            backgroundColor: Colors.orange,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyColumn(
                        nameTeam: "Team A",
                        counter:
                            BlocProvider.of<CounterCubit>(context).teamACounter,
                        charTeam: "A"),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 3 / 4,
                      child: const VerticalDivider(
                        indent: 5,
                        endIndent: 10,
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                    MyColumn(
                        nameTeam: "Team B",
                        counter:
                            BlocProvider.of<CounterCubit>(context).teamBCounter,
                        charTeam: "B"),
                  ],
                ),
                const Divider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black,
                  thickness: 2,
                ),
                Center(
                  child: YourButton(
                      NameBTN: "Reset",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .TeamIncrement(addPoint: 0);
                      }),
                )
              ]),
        );
      },
    );
  }
}
