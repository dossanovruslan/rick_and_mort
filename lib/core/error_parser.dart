import 'package:dio/dio.dart';

class ErrorParser {
  static String errorParse(e, {StackTrace? stack}) {
    String errorMessage;

    if (e is DioException) {
      if (e.response?.statusCode == 404) {
        errorMessage = 'Ресурс не найден. Проверьте правильность запроса.';
      } else if (e.response?.statusCode == 500) {
        errorMessage = 'Ошибка сервера. Попробуйте позже.';
      } else {
        errorMessage =
            'Произошла ошибка с кодом ${e.response?.statusCode}: ${e.response?.statusMessage}';
      }
    } else {
      errorMessage = 'Произошла непредвиденная ошибка: ${e.toString()}';
    }
    return errorMessage;
  }
}
