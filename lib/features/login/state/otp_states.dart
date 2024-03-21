// ignore_for_file: public_member_api_docs, sort_constructors_first

sealed class OtpState {
  const OtpState();
}

class InitialOtpState implements OtpState {
  const InitialOtpState();
}

class SendingOtpState implements OtpState {
  const SendingOtpState();
}

class OtpSentState implements OtpState {
  const OtpSentState();
}

class OtpNotSentState implements OtpState {
  const OtpNotSentState();
}

class OtpErrorState implements OtpState {
  final String message;

  const OtpErrorState(this.message);

  @override
  bool operator ==(covariant OtpErrorState other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
