part of 'play_bloc.dart';

@immutable
abstract class PlayEvent {}

class PlayAction extends PlayEvent{
  final String value;
  PlayAction(this.value);
}
