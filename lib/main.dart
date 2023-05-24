import 'package:bloc_tutorial/bloc_counter_example/app_blocs.dart';
import 'package:bloc_tutorial/bloc_counter_example/app_events.dart';
import 'package:bloc_tutorial/bloc_counter_example/app_states.dart';
import 'package:bloc_tutorial/blocs/welcome_bloc/welcome_bloc.dart';
import 'package:bloc_tutorial/equatable_example/bloc/play_bloc.dart';
import 'package:bloc_tutorial/equatable_example/screens/play_screen.dart';
import 'package:bloc_tutorial/pages/welcome_pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (context) => AppBlocs(),
      create: (context) => WelcomeBloc(),
      child: ScreenUtilInit(builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: const MyHomePage(),
          // home: const Welcomepage(),
          home: BlocProvider(
            create: (context) => PlayBloc(),
            child: PlayScreen(),
          ),
        );
      }),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter Example'),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppStates>(builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${BlocProvider.of<AppBlocs>(context).state.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () =>
                BlocProvider.of<AppBlocs>(context).add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () =>
                BlocProvider.of<AppBlocs>(context).add(Decrement()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
