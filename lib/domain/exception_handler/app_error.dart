import 'package:flutter/foundation.dart';

@immutable
class AppError implements Exception {
  const AppError();

  String message() => '';
}

@immutable
class ErrorWithMessage extends AppError {
  const ErrorWithMessage([this.errorMessage = '']);

  final String errorMessage;

  @override
  String message() {
    return errorMessage;
  }
}
