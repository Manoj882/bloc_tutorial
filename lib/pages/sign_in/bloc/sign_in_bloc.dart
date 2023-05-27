import 'package:bloc_tutorial/pages/sign_in/bloc/sign_in_events.dart';
import 'package:bloc_tutorial/pages/sign_in/bloc/sign_in_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SiginInEvent, SignInState>{
  SignInBloc() : super(const SignInState()){
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);

  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit){
    print('My email is ${event.email}');
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit){
    print('My password is ${event.password}');
    emit(state.copyWith(password: event.password));
  }


}