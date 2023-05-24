import 'package:bloc_tutorial/equatable_example/bloc/play_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Your Input',
              ),
              onFieldSubmitted: (value) {
                print('Event triggered');
                final event = PlayAction(value);
                context.read<PlayBloc>().add(event);
              },
            ),
            BlocBuilder<PlayBloc, PlayState>(
              builder: (context, state) {
                print('State triggered');
                return Text(
                  state.value,
                  style: Theme.of(context).textTheme.displayMedium,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
