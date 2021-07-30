class ResponseError {
  final int statusCode;
  final Exception exception;

  ResponseError({
    required this.statusCode,
    required this.exception,
  });
}
