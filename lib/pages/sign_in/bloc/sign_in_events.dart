abstract class SiginInEvent{
  const SiginInEvent();
}

class EmailEvent extends SiginInEvent{
  final String email;

  EmailEvent(this.email);
}

class PasswordEvent extends SiginInEvent{
  final String password;

  PasswordEvent(this.password);
}
