import 'package:equatable/equatable.dart';

class SignInState  extends Equatable{
  final String email;
  final String password;

  const SignInState({
    this.email = '',
    this.password = '',
  });

  SignInState copyWith({
    String? email,
    String? password,

  }){
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.email,
    );

  }
  
  @override

  List<Object?> get props => [email, password];
}