// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestResult _$LoginRequestResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'successfullyLoggedIn':
      return SuccessfullyLoggedIn.fromJson(json);
    case 'loginFailed':
      return LoginFailed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoginRequestResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LoginRequestResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) successfullyLoggedIn,
    required TResult Function(ApiError error) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? successfullyLoggedIn,
    TResult? Function(ApiError error)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? successfullyLoggedIn,
    TResult Function(ApiError error)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullyLoggedIn value) successfullyLoggedIn,
    required TResult Function(LoginFailed value) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullyLoggedIn value)? successfullyLoggedIn,
    TResult? Function(LoginFailed value)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullyLoggedIn value)? successfullyLoggedIn,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestResultCopyWith<$Res> {
  factory $LoginRequestResultCopyWith(
          LoginRequestResult value, $Res Function(LoginRequestResult) then) =
      _$LoginRequestResultCopyWithImpl<$Res, LoginRequestResult>;
}

/// @nodoc
class _$LoginRequestResultCopyWithImpl<$Res, $Val extends LoginRequestResult>
    implements $LoginRequestResultCopyWith<$Res> {
  _$LoginRequestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessfullyLoggedInCopyWith<$Res> {
  factory _$$SuccessfullyLoggedInCopyWith(_$SuccessfullyLoggedIn value,
          $Res Function(_$SuccessfullyLoggedIn) then) =
      __$$SuccessfullyLoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SuccessfullyLoggedInCopyWithImpl<$Res>
    extends _$LoginRequestResultCopyWithImpl<$Res, _$SuccessfullyLoggedIn>
    implements _$$SuccessfullyLoggedInCopyWith<$Res> {
  __$$SuccessfullyLoggedInCopyWithImpl(_$SuccessfullyLoggedIn _value,
      $Res Function(_$SuccessfullyLoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SuccessfullyLoggedIn(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessfullyLoggedIn extends SuccessfullyLoggedIn {
  const _$SuccessfullyLoggedIn({required this.token, final String? $type})
      : $type = $type ?? 'successfullyLoggedIn',
        super._();

  factory _$SuccessfullyLoggedIn.fromJson(Map<String, dynamic> json) =>
      _$$SuccessfullyLoggedInFromJson(json);

  @override
  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginRequestResult.successfullyLoggedIn(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfullyLoggedIn &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfullyLoggedInCopyWith<_$SuccessfullyLoggedIn> get copyWith =>
      __$$SuccessfullyLoggedInCopyWithImpl<_$SuccessfullyLoggedIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) successfullyLoggedIn,
    required TResult Function(ApiError error) loginFailed,
  }) {
    return successfullyLoggedIn(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? successfullyLoggedIn,
    TResult? Function(ApiError error)? loginFailed,
  }) {
    return successfullyLoggedIn?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? successfullyLoggedIn,
    TResult Function(ApiError error)? loginFailed,
    required TResult orElse(),
  }) {
    if (successfullyLoggedIn != null) {
      return successfullyLoggedIn(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullyLoggedIn value) successfullyLoggedIn,
    required TResult Function(LoginFailed value) loginFailed,
  }) {
    return successfullyLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullyLoggedIn value)? successfullyLoggedIn,
    TResult? Function(LoginFailed value)? loginFailed,
  }) {
    return successfullyLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullyLoggedIn value)? successfullyLoggedIn,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (successfullyLoggedIn != null) {
      return successfullyLoggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessfullyLoggedInToJson(
      this,
    );
  }
}

abstract class SuccessfullyLoggedIn extends LoginRequestResult {
  const factory SuccessfullyLoggedIn({required final String token}) =
      _$SuccessfullyLoggedIn;
  const SuccessfullyLoggedIn._() : super._();

  factory SuccessfullyLoggedIn.fromJson(Map<String, dynamic> json) =
      _$SuccessfullyLoggedIn.fromJson;

  String get token;
  @JsonKey(ignore: true)
  _$$SuccessfullyLoggedInCopyWith<_$SuccessfullyLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailedCopyWith<$Res> {
  factory _$$LoginFailedCopyWith(
          _$LoginFailed value, $Res Function(_$LoginFailed) then) =
      __$$LoginFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiError error});

  $ApiErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$LoginFailedCopyWithImpl<$Res>
    extends _$LoginRequestResultCopyWithImpl<$Res, _$LoginFailed>
    implements _$$LoginFailedCopyWith<$Res> {
  __$$LoginFailedCopyWithImpl(
      _$LoginFailed _value, $Res Function(_$LoginFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginFailed(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<$Res> get error {
    return $ApiErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginFailed extends LoginFailed {
  const _$LoginFailed({required this.error, final String? $type})
      : $type = $type ?? 'loginFailed',
        super._();

  factory _$LoginFailed.fromJson(Map<String, dynamic> json) =>
      _$$LoginFailedFromJson(json);

  @override
  final ApiError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginRequestResult.loginFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailedCopyWith<_$LoginFailed> get copyWith =>
      __$$LoginFailedCopyWithImpl<_$LoginFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) successfullyLoggedIn,
    required TResult Function(ApiError error) loginFailed,
  }) {
    return loginFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? successfullyLoggedIn,
    TResult? Function(ApiError error)? loginFailed,
  }) {
    return loginFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? successfullyLoggedIn,
    TResult Function(ApiError error)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullyLoggedIn value) successfullyLoggedIn,
    required TResult Function(LoginFailed value) loginFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullyLoggedIn value)? successfullyLoggedIn,
    TResult? Function(LoginFailed value)? loginFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullyLoggedIn value)? successfullyLoggedIn,
    TResult Function(LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginFailedToJson(
      this,
    );
  }
}

abstract class LoginFailed extends LoginRequestResult {
  const factory LoginFailed({required final ApiError error}) = _$LoginFailed;
  const LoginFailed._() : super._();

  factory LoginFailed.fromJson(Map<String, dynamic> json) =
      _$LoginFailed.fromJson;

  ApiError get error;
  @JsonKey(ignore: true)
  _$$LoginFailedCopyWith<_$LoginFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
