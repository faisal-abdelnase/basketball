import 'package:basketball/cubit/counter-cubit.dart';
import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointCounter());
}

class pointCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Point Counter"),
              backgroundColor: Colors.orange,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //First Column
                    Container(
                      height: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Team A",
                            style: TextStyle(
                              fontSize: 37,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPpint}',
                            style: TextStyle(
                              fontSize: 170,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttoneNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttoneNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttoneNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // second Column

                    Container(
                      height: 700,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 40,
                        endIndent: 40,
                      ),
                    ),

                    Container(
                      height: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Team B",
                            style: TextStyle(
                              fontSize: 37,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPpint}',
                            style: TextStyle(
                              fontSize: 170,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttoneNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttoneNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttoneNumber: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetPoints();
                    BlocProvider.of<CounterCubit>(context).resetPoints();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
