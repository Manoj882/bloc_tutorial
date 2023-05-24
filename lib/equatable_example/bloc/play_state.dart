// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'play_bloc.dart';

// @immutable
// abstract class PlayState {}

// class PlayInitial extends PlayState {}


class PlayState {
  final String value;
  PlayState(this.value);

  @override
  bool operator ==(covariant PlayState other) {
    if (identical(this, other)) return true;
  
    return 
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
