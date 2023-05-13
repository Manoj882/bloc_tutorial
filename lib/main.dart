import 'package:bloc_tutorial/bloc/app_blocs.dart';
import 'package:bloc_tutorial/bloc/app_events.dart';
import 'package:bloc_tutorial/bloc/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBlocs(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
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
       
        child: BlocBuilder<AppBlocs, AppStates>(
          builder: (context, state) {
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
          }
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () => BlocProvider.of<AppBlocs>(context).add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => BlocProvider.of<AppBlocs>(context).add(Decrement()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), 
    );
  }
}
