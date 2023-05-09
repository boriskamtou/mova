// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import '../../../url_builder.dart';

class MovieRemoteService {
  final Dio _dio;
  final UrlBuilder _urlBuilder;
  MovieRemoteService(
    this._dio,
    this._urlBuilder,
  );
}
