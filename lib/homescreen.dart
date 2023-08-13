// ignore_for_file: must_be_immutable

import 'package:basketball_counter/comp/button.dart';
import 'package:basketball_counter/comp/counter.dart';
import 'package:basketball_counter/comp/text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a = 0;

  int b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your ScoreBoard",
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  NameTeam(nameTeam: 'Team A', fontSize: 40),
                  Counter(counter: a),
                  const SizedBox(
                    height: 50,
                  ),
                  YourButton(
                      NameBTN: "Add 1 Point",
                      onPressed: () {
                        setState(() {
                          a++;
                        });
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  YourButton(
                      NameBTN: "Add 2 Point",
                      onPressed: () {
                        setState(() {
                          a = a + 2;
                        });
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  YourButton(
                      NameBTN: "Add 3 Point",
                      onPressed: () {
                        setState(() {
                          a = a + 3;
                        });
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
                  Counter(counter: b),
                  const SizedBox(
                    height: 50,
                  ),
                  YourButton(
                      NameBTN: "Add 1 Point",
                      onPressed: () {
                        setState(() {
                          b++;
                        });
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  YourButton(
                      NameBTN: "Add 2 Point",
                      onPressed: () {
                        setState(() {
                          b = b + 2;
                        });
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  YourButton(
                      NameBTN: "Add 3 Point",
                      onPressed: () {
                        setState(() {
                          b = b + 3;
                        });
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
                setState(() {
                  a = 0;
                  b = 0;
                });
              }),
        )
      ]),
    );
  }
}
