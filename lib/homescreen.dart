// ignore_for_file: must_be_immutable

import 'package:basketball_counter/comp/button.dart';
import 'package:basketball_counter/comp/counter.dart';
import 'package:basketball_counter/comp/text.dart';
import 'package:basketball_counter/cubit/cubit/counter_cubit.dart';
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
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          NameTeam(nameTeam: 'Team A', fontSize: 40),
                          Counter(
                              counter: BlocProvider.of<CounterCubit>(context)
                                  .teamACounter),
                          const SizedBox(
                            height: 50,
                          ),
                          YourButton(
                              NameBTN: "Add 1 Point",
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(addPoint: 1, nameTeam: "A");
                              }),
                          const SizedBox(
                            height: 50,
                          ),
                          YourButton(
                              NameBTN: "Add 2 Point",
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(addPoint: 2, nameTeam: "A");
                              }),
                          const SizedBox(
                            height: 50,
                          ),
                          YourButton(
                              NameBTN: "Add 3 Point",
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(addPoint: 3, nameTeam: "A");
                              }),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 3 / 4,
                      child: const VerticalDivider(
                        indent: 5,
                        endIndent: 10,
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          NameTeam(nameTeam: 'Team B', fontSize: 40),
                          Counter(
                              counter: BlocProvider.of<CounterCubit>(context)
                                  .teamBCounter),
                          const SizedBox(
                            height: 50,
                          ),
                          YourButton(
                              NameBTN: "Add 1 Point",
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(addPoint: 1, nameTeam: "B");
                              }),
                          const SizedBox(
                            height: 50,
                          ),
                          YourButton(
                              NameBTN: "Add 2 Point",
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(addPoint: 2, nameTeam: "B");
                              }),
                          const SizedBox(
                            height: 50,
                          ),
                          YourButton(
                              NameBTN: "Add 3 Point",
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(addPoint: 3, nameTeam: "B");
                              }),
                        ],
                      ),
                    ),
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
