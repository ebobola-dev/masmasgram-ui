// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiSingleError _$ApiSingleErrorFromJson(Map<String, dynamic> json) {
  return _ApiSingleError.fromJson(json);
}

/// @nodoc
mixin _$ApiSingleError {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiSingleErrorCopyWith<ApiSingleError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSingleErrorCopyWith<$Res> {
  factory $ApiSingleErrorCopyWith(
          ApiSingleError value, $Res Function(ApiSingleError) then) =
      _$ApiSingleErrorCopyWithImpl<$Res, ApiSingleError>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ApiSingleErrorCopyWithImpl<$Res, $Val extends ApiSingleError>
    implements $ApiSingleErrorCopyWith<$Res> {
  _$ApiSingleErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiSingleErrorCopyWith<$Res>
    implements $ApiSingleErrorCopyWith<$Res> {
  factory _$$_ApiSingleErrorCopyWith(
          _$_ApiSingleError value, $Res Function(_$_ApiSingleError) then) =
      __$$_ApiSingleErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ApiSingleErrorCopyWithImpl<$Res>
    extends _$ApiSingleErrorCopyWithImpl<$Res, _$_ApiSingleError>
    implements _$$_ApiSingleErrorCopyWith<$Res> {
  __$$_ApiSingleErrorCopyWithImpl(
      _$_ApiSingleError _value, $Res Function(_$_ApiSingleError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ApiSingleError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiSingleError extends _ApiSingleError {
  _$_ApiSingleError({required this.error}) : super._();

  factory _$_ApiSingleError.fromJson(Map<String, dynamic> json) =>
      _$$_ApiSingleErrorFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ApiSingleError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiSingleError &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiSingleErrorCopyWith<_$_ApiSingleError> get copyWith =>
      __$$_ApiSingleErrorCopyWithImpl<_$_ApiSingleError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiSingleErrorToJson(
      this,
    );
  }
}

abstract class _ApiSingleError extends ApiSingleError {
  factory _ApiSingleError({required final String error}) = _$_ApiSingleError;
  _ApiSingleError._() : super._();

  factory _ApiSingleError.fromJson(Map<String, dynamic> json) =
      _$_ApiSingleError.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_ApiSingleErrorCopyWith<_$_ApiSingleError> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiMultipleError _$ApiMultipleErrorFromJson(Map<String, dynamic> json) {
  return _ApiMultipleError.fromJson(json);
}

/// @nodoc
mixin _$ApiMultipleError {
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiMultipleErrorCopyWith<ApiMultipleError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiMultipleErrorCopyWith<$Res> {
  factory $ApiMultipleErrorCopyWith(
          ApiMultipleError value, $Res Function(ApiMultipleError) then) =
      _$ApiMultipleErrorCopyWithImpl<$Res, ApiMultipleError>;
  @useResult
  $Res call({List<String> errors});
}

/// @nodoc
class _$ApiMultipleErrorCopyWithImpl<$Res, $Val extends ApiMultipleError>
    implements $ApiMultipleErrorCopyWith<$Res> {
  _$ApiMultipleErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiMultipleErrorCopyWith<$Res>
    implements $ApiMultipleErrorCopyWith<$Res> {
  factory _$$_ApiMultipleErrorCopyWith(
          _$_ApiMultipleError value, $Res Function(_$_ApiMultipleError) then) =
      __$$_ApiMultipleErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> errors});
}

/// @nodoc
class __$$_ApiMultipleErrorCopyWithImpl<$Res>
    extends _$ApiMultipleErrorCopyWithImpl<$Res, _$_ApiMultipleError>
    implements _$$_ApiMultipleErrorCopyWith<$Res> {
  __$$_ApiMultipleErrorCopyWithImpl(
      _$_ApiMultipleError _value, $Res Function(_$_ApiMultipleError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$_ApiMultipleError(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiMultipleError extends _ApiMultipleError {
  _$_ApiMultipleError({required final List<String> errors})
      : _errors = errors,
        super._();

  factory _$_ApiMultipleError.fromJson(Map<String, dynamic> json) =>
      _$$_ApiMultipleErrorFromJson(json);

  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiMultipleError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiMultipleError &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiMultipleErrorCopyWith<_$_ApiMultipleError> get copyWith =>
      __$$_ApiMultipleErrorCopyWithImpl<_$_ApiMultipleError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiMultipleErrorToJson(
      this,
    );
  }
}

abstract class _ApiMultipleError extends ApiMultipleError {
  factory _ApiMultipleError({required final List<String> errors}) =
      _$_ApiMultipleError;
  _ApiMultipleError._() : super._();

  factory _ApiMultipleError.fromJson(Map<String, dynamic> json) =
      _$_ApiMultipleError.fromJson;

  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$_ApiMultipleErrorCopyWith<_$_ApiMultipleError> get copyWith =>
      throw _privateConstructorUsedError;
}
