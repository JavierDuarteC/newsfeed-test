// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseWrapper<T> _$ResponseWrapperFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseWrapper<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseWrapper<T> {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  String? get nextPage => throw _privateConstructorUsedError;
  T? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWrapperCopyWith<T, ResponseWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWrapperCopyWith<T, $Res> {
  factory $ResponseWrapperCopyWith(
          ResponseWrapper<T> value, $Res Function(ResponseWrapper<T>) then) =
      _$ResponseWrapperCopyWithImpl<T, $Res, ResponseWrapper<T>>;
  @useResult
  $Res call({String? status, int? totalResults, String? nextPage, T? results});
}

/// @nodoc
class _$ResponseWrapperCopyWithImpl<T, $Res, $Val extends ResponseWrapper<T>>
    implements $ResponseWrapperCopyWith<T, $Res> {
  _$ResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseWrapperImplCopyWith<T, $Res>
    implements $ResponseWrapperCopyWith<T, $Res> {
  factory _$$ResponseWrapperImplCopyWith(_$ResponseWrapperImpl<T> value,
          $Res Function(_$ResponseWrapperImpl<T>) then) =
      __$$ResponseWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String? status, int? totalResults, String? nextPage, T? results});
}

/// @nodoc
class __$$ResponseWrapperImplCopyWithImpl<T, $Res>
    extends _$ResponseWrapperCopyWithImpl<T, $Res, _$ResponseWrapperImpl<T>>
    implements _$$ResponseWrapperImplCopyWith<T, $Res> {
  __$$ResponseWrapperImplCopyWithImpl(_$ResponseWrapperImpl<T> _value,
      $Res Function(_$ResponseWrapperImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
    Object? results = freezed,
  }) {
    return _then(_$ResponseWrapperImpl<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseWrapperImpl<T>
    with DiagnosticableTreeMixin
    implements _ResponseWrapper<T> {
  const _$ResponseWrapperImpl(
      {this.status, this.totalResults, this.nextPage, this.results});

  factory _$ResponseWrapperImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseWrapperImplFromJson(json, fromJsonT);

  @override
  final String? status;
  @override
  final int? totalResults;
  @override
  final String? nextPage;
  @override
  final T? results;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseWrapper<$T>(status: $status, totalResults: $totalResults, nextPage: $nextPage, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseWrapper<$T>'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('nextPage', nextPage))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseWrapperImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults, nextPage,
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseWrapperImplCopyWith<T, _$ResponseWrapperImpl<T>> get copyWith =>
      __$$ResponseWrapperImplCopyWithImpl<T, _$ResponseWrapperImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseWrapperImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseWrapper<T> implements ResponseWrapper<T> {
  const factory _ResponseWrapper(
      {final String? status,
      final int? totalResults,
      final String? nextPage,
      final T? results}) = _$ResponseWrapperImpl<T>;

  factory _ResponseWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseWrapperImpl<T>.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  String? get nextPage;
  @override
  T? get results;
  @override
  @JsonKey(ignore: true)
  _$$ResponseWrapperImplCopyWith<T, _$ResponseWrapperImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
