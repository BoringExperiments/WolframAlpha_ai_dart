
/* 
  Thrown when the server rejects the API key 
  Commonly caused by expired/invalid/non-existent API key
*/
final class InvalidAppId implements Exception {
  final String message;
  InvalidAppId(this.message);
}

// Input cannot be interpreted by the API
final class UnknownPrompt implements Exception {
  final String message;
  UnknownPrompt(this.message);
} 

// API did not find the required input parameter.
final class MissingRequiredParameter implements Exception {
  final String message;
  MissingRequiredParameter(this.message);
}
