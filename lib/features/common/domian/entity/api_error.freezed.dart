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

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

/// @nodoc
mixin _$ApiError {
  List<String> get ruErrors => throw _privateConstructorUsedError;
  List<String> get euErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({List<String> ruErrors, List<String> euErrors});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruErrors = null,
    Object? euErrors = null,
  }) {
    return _then(_value.copyWith(
      ruErrors: null == ruErrors
          ? _value.ruErrors
          : ruErrors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      euErrors: null == euErrors
          ? _value.euErrors
          : euErrors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$$_ApiErrorCopyWith(
          _$_ApiError value, $Res Function(_$_ApiError) then) =
      __$$_ApiErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ruErrors, List<String> euErrors});
}

/// @nodoc
class __$$_ApiErrorCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$_ApiError>
    implements _$$_ApiErrorCopyWith<$Res> {
  __$$_ApiErrorCopyWithImpl(
      _$_ApiError _value, $Res Function(_$_ApiError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruErrors = null,
    Object? euErrors = null,
  }) {
    return _then(_$_ApiError(
      ruErrors: null == ruErrors
          ? _value._ruErrors
          : ruErrors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      euErrors: null == euErrors
          ? _value._euErrors
          : euErrors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiError extends _ApiError {
  const _$_ApiError(
      {required final List<String> ruErrors,
      required final List<String> euErrors})
      : _ruErrors = ruErrors,
        _euErrors = euErrors,
        super._();

  factory _$_ApiError.fromJson(Map<String, dynamic> json) =>
      _$$_ApiErrorFromJson(json);

  final List<String> _ruErrors;
  @override
  List<String> get ruErrors {
    if (_ruErrors is EqualUnmodifiableListView) return _ruErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ruErrors);
  }

  final List<String> _euErrors;
  @override
  List<String> get euErrors {
    if (_euErrors is EqualUnmodifiableListView) return _euErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_euErrors);
  }

  @override
  String toString() {
    return 'ApiError(ruErrors: $ruErrors, euErrors: $euErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiError &&
            const DeepCollectionEquality().equals(other._ruErrors, _ruErrors) &&
            const DeepCollectionEquality().equals(other._euErrors, _euErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ruErrors),
      const DeepCollectionEquality().hash(_euErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiErrorCopyWith<_$_ApiError> get copyWith =>
      __$$_ApiErrorCopyWithImpl<_$_ApiError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiErrorToJson(
      this,
    );
  }
}

abstract class _ApiError extends ApiError {
  const factory _ApiError(
      {required final List<String> ruErrors,
      required final List<String> euErrors}) = _$_ApiError;
  const _ApiError._() : super._();

  factory _ApiError.fromJson(Map<String, dynamic> json) = _$_ApiError.fromJson;

  @override
  List<String> get ruErrors;
  @override
  List<String> get euErrors;
  @override
  @JsonKey(ignore: true)
  _$$_ApiErrorCopyWith<_$_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
