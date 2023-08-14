import 'package:basketball_counter/comp/button.dart';
import 'package:basketball_counter/cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../comp/counter.dart';
import '../comp/text.dart';

class MyColumn extends StatelessWidget {
  const MyColumn(
      {super.key,
      required this.nameTeam,
      required this.counter,
      required this.charTeam});
  final String nameTeam;
  final int counter;
  final String charTeam;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NameTeam(nameTeam: nameTeam, fontSize: 40),
        Center(
          child: Counter(fontsize: 80, counter: counter),
        ),
        YourButton(
            NameBTN: "Add 1 Point",
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .TeamIncrement(addPoint: 1, nameTeam: charTeam);
            }),
        YourButton(
            NameBTN: "Add 2 Point",
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .TeamIncrement(addPoint: 2, nameTeam: charTeam);
            }),
        YourButton(
            NameBTN: "Add 3 Point",
            onPressed: () {
              BlocProvider.of<CounterCubit>(context)
                  .TeamIncrement(addPoint: 3, nameTeam: charTeam);
            }),
      ],
    );
  }
}
