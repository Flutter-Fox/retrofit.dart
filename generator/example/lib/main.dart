import 'dart:async';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'main.g.dart';

@RestApi(parser: Parser.FlutterCompute, baseUrl: 'https://api.example.com')
abstract class AppRemoteSource {
  factory AppRemoteSource(Dio dio) = _AppRemoteSource;

  @MultiPart()
  @POST('/')
  Future<String> get(
    @Body() FormData formData, {
    @DioOptions() RequestOptions? options,
  });
}
