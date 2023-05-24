// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'play_bloc.dart';

// @immutable
// abstract class PlayState {}

// class PlayInitial extends PlayState {}


class PlayState extends Equatable{
  final String value;
  PlayState(this.value);
  
  @override
  List<Object?> get props => [value];

  
}
