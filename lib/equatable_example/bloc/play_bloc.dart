import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'play_event.dart';
part 'play_state.dart';

class PlayBloc extends Bloc<PlayEvent, PlayState> {
  PlayBloc() : super(PlayState('')) {
    // on<PlayAction>((event, emit) {
    //   // TODO: implement event handler
    // });
    on<PlayAction>(_playAction);
  }

  FutureOr<void> _playAction(PlayAction event, Emitter<PlayState> emit){
    final value = event.value;
    emit(PlayState(value));

  }
}
