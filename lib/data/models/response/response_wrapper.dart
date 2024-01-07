// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'response_wrapper.freezed.dart';
part 'response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseWrapper<T> with _$ResponseWrapper<T>{
  const factory ResponseWrapper ({
    final String? status,
    final int? totalResults,
    final String? nextPage,
    final T? results,
  }) = _ResponseWrapper;

  factory ResponseWrapper.fromJson(Map<String, dynamic> json,
      T Function(Object? json) fromJsonT)
    => _$ResponseWrapperFromJson<T>(json, fromJsonT);
}