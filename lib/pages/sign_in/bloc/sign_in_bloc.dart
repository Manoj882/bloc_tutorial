import 'package:bloc_tutorial/pages/sign_in/bloc/sign_in_events.dart';
import 'package:bloc_tutorial/pages/sign_in/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SiginInEvent, SignInState>{
  SignInBloc() : super(const SignInState()){

    //first way
    // on<EmailEvent>((event, emit) {
    //   emit(state.copyWith(email: event.email));

    // });

    //better way: separate the event handler
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);

    on<PasswordEvent>((event, emit) {
      emit(state.copyWith(password: event.password));

    });
  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(password: event.password));
  }


}