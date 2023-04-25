// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_ms.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AuthApiMS implements AuthApiMS {
  _AuthApiMS(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthSignUpOTPResp?> signUp(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>?>(_setStreamType<AuthSignUpOTPResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/signup',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : AuthSignUpOTPResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthSignUpOTPResp?> resendSignUpOTP(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>?>(_setStreamType<AuthSignUpOTPResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/resend-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : AuthSignUpOTPResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyOTPResp?> verifyOTP(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>?>(_setStreamType<VerifyOTPResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/verify-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : VerifyOTPResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthLoginPasswordResp?> loginPassword(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<AuthLoginPasswordResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/signin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : AuthLoginPasswordResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ForgotPasswordResp?> forgotPasswordSendOTP(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<ForgotPasswordResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/forgot-password/send-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : ForgotPasswordResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ForgotPasswordVerifyOTPResp?> forgotPasswordVerifyOTP(req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<ForgotPasswordVerifyOTPResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/forgot-password/verify-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : ForgotPasswordVerifyOTPResp.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ForgotPasswordCreatePasswordResp?> forgotPasswordCreatePassword(
      req) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(req.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<ForgotPasswordCreatePasswordResp>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/mulstore/auth/forgot-password/create-password',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : ForgotPasswordCreatePasswordResp.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
