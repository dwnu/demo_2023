import 'dart:async';

import 'package:dawid_wnukowski_2023/domain/exception_handler/app_error.dart';
import 'package:dawid_wnukowski_2023/util/logger.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final exceptionHandlerProvider = Provider<ExceptionHandler>(ExceptionHandler.new);

// TODO(dwnu): localize error messages
class ExceptionHandler {
  ExceptionHandler(this.ref);

  final Ref ref;

  Future<Either<AppError, T>> wrapRepositoryFunction<T>(
    FutureOr<T> Function() function,
  ) async {
    try {
      return Right(await function());
    } on DioException catch (_) {
      // TODO(dwnu): Here we can map error response from the server
      return const Left(
        ErrorWithMessage('There was a problem connecting to the server. Please try again later.'),
      );
    } on Exception catch (error) {
      Logger.error(error);
      return const Left(AppError());
      // ignore: avoid_catching_errors
    } on Error catch (error) {
      // Linter is against catching "Error" type because in theory those errors can be avoided with
      // proper implementation. But we want to be defensive and make sure to show error message even
      // if Error occurred especially that this function is called only from repositories.
      Logger.error(error);
      return const Left(ErrorWithMessage('Unexpected error occurred'));
    }
  }
}
