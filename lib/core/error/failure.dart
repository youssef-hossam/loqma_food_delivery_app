sealed class Failure {
  final String message;
  const Failure(this.message);
}

/// السيرفر رد بـ error (4xx / 5xx)
class ServerFailure extends Failure {
  final String code; // INVALID_CREDENTIALS, EMAIL_TAKEN ...
  final int? statusCode;
  final Map<String, String> fieldErrors; // عشان تعرض الخطأ تحت كل TextField

  const ServerFailure({
    required String message,
    required this.code,
    this.statusCode,
    this.fieldErrors = const {},
  }) : super(message);
}

/// مفيش نت / السيرفر مش واصل / timeout
class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

/// أي حاجة تانية (parsing error مثلاً)
class UnknownFailure extends Failure {
  const UnknownFailure(super.message);
}
