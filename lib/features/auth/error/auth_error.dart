sealed class AuthError {
  String? get message;
}
class ConnectionError extends AuthError{
  @override
  String? get message => "Check Internet Connection";

}
