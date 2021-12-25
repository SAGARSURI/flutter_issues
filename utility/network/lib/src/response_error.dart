class ResponseError {
  ResponseError({
    required this.statusCode,
    required this.exception,
  });

  final int statusCode;

  final Exception exception;
}
