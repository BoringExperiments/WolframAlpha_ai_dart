import 'package:dio/dio.dart';
import 'error.dart';

final options = BaseOptions(
  baseUrl: 'https://api.wolframalpha.com',
  headers: {'User-Agent': 'WA-Dart-client/0.0.1'},
);

final dio = Dio(options);

// Return simplified information using image data.
dynamic simple({
  required String appId,
  required String input,
  // String? units,
  // int? width,
  // int? fontSize,
  // String? background,
  // String? foreground,
  // String? layout,
  int? timeout = 5,
}) async {
  Response response;
  response = await dio.request(
    '/v1/simple',
    queryParameters: {
      'appid': appId,
      'i': input,
      // 'units': units,
      // 'width': width,
      // 'fontSize': fontSize,
      // 'background': background,
      // 'foreground': fontSize,
      // 'layout': layout,
      'timeout': timeout,
    },
  );
  if (response.statusCode == 501) {
    return Exception(UnknownPrompt);
  }
  if (response.statusCode == 400) {
    return Exception(MissingRequiredParameter);
  }
  if (response.data == 'Error 1: Invalid appid') {
    return Exception(InvalidAppId);
  }
  return response.data;
}

dynamic shortAnswers({
  required String appId,
  required String input,
  // String? units,
  int? timeout = 5,
}) async {
  Response response;
  response = await dio.request('/v1/result', queryParameters: {
    'appid': appId,
    'i': input,
    // 'units': units,
    'timeout': timeout,
  });
  if (response.statusCode == 501) {
    return Exception(UnknownPrompt);
  }
  if (response.statusCode == 400) {
    return Exception(MissingRequiredParameter);
  }
  if (response.data == 'Error 1: Invalid appid') {
    return Exception(InvalidAppId);
  }
  return response.data;
}

dynamic spokenAnswers({
  required String appId,
  required String input,
  // String? units,
  int? timeout = 5,
}) async {
  Response response;
  response = await dio.request('/v1/spoken', queryParameters: {
    'appid': appId,
    'i': input,
    'timeout': timeout,
  });
  if (response.statusCode == 501) {
    return Exception(UnknownPrompt);
  }
  if (response.statusCode == 400) {
    return Exception(MissingRequiredParameter);
  }
  if (response.data == 'Error 1: Invalid appid') {
    return Exception(InvalidAppId);
  }
  return response.data;
}

dynamic fastQueryRecognizer({
  required String appId,
  required String input,
  String? mode,
  String? output,
}) async {
  Response response;
  response = await dio.request('/queryrecognizer/query.jsp', queryParameters: {
    'appid': appId,
    'i': input,
    // 'mode': mode,
    // 'output: output,
  });
  if (response.statusCode == 501) {
    return Exception(UnknownPrompt);
  }
  if (response.statusCode == 400) {
    return Exception(MissingRequiredParameter);
  }
  if (response.data == 'Error 1: Invalid appid') {
    return Exception(InvalidAppId);
  }
  return response.data;
}

dynamic fullResult({
  required String appId,
  required String input,
  String? format,
  String? output,
}) async {
  Response response;
  response = await dio.request('/v2/query', queryParameters: {
    'appid': appId,
    'input': input,
    // 'mode': mode,
    // 'output: output,
  });
  if (response.statusCode == 501) {
    return Exception(UnknownPrompt);
  }
  if (response.statusCode == 400) {
    return Exception(MissingRequiredParameter);
  }
  if (response.data == 'Error 1: Invalid appid') {
    return Exception(InvalidAppId);
  }
  return response.data;
}
