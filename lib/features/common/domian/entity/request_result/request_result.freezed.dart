// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successfullyLoggedIn,
    required TResult Function(ApiError error) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successfullyLoggedIn,
    TResult? Function(ApiError error)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successfullyLoggedIn,
    TResult Function(ApiError error)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullRequest<T> value) successfullyLoggedIn,
    required TResult Function(RequestFailed<T> value) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullRequest<T> value)? successfullyLoggedIn,
    TResult? Function(RequestFailed<T> value)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullRequest<T> value)? successfullyLoggedIn,
    TResult Function(RequestFailed<T> value)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestResultCopyWith<T, $Res> {
  factory $RequestResultCopyWith(
          RequestResult<T> value, $Res Function(RequestResult<T>) then) =
      _$RequestResultCopyWithImpl<T, $Res, RequestResult<T>>;
}

/// @nodoc
class _$RequestResultCopyWithImpl<T, $Res, $Val extends RequestResult<T>>
    implements $RequestResultCopyWith<T, $Res> {
  _$RequestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessfullRequestCopyWith<T, $Res> {
  factory _$$SuccessfullRequestCopyWith(_$SuccessfullRequest<T> value,
          $Res Function(_$SuccessfullRequest<T>) then) =
      __$$SuccessfullRequestCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessfullRequestCopyWithImpl<T, $Res>
    extends _$RequestResultCopyWithImpl<T, $Res, _$SuccessfullRequest<T>>
    implements _$$SuccessfullRequestCopyWith<T, $Res> {
  __$$SuccessfullRequestCopyWithImpl(_$SuccessfullRequest<T> _value,
      $Res Function(_$SuccessfullRequest<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessfullRequest<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessfullRequest<T> extends SuccessfullRequest<T> {
  const _$SuccessfullRequest({required this.data}) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'RequestResult<$T>.successfullyLoggedIn(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfullRequest<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfullRequestCopyWith<T, _$SuccessfullRequest<T>> get copyWith =>
      __$$SuccessfullRequestCopyWithImpl<T, _$SuccessfullRequest<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successfullyLoggedIn,
    required TResult Function(ApiError error) loginFailed,
  }) {
    return successfullyLoggedIn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successfullyLoggedIn,
    TResult? Function(ApiError error)? loginFailed,
  }) {
    return successfullyLoggedIn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successfullyLoggedIn,
    TResult Function(ApiError error)? loginFailed,
    required TResult orElse(),
  }) {
    if (successfullyLoggedIn != null) {
      return successfullyLoggedIn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullRequest<T> value) successfullyLoggedIn,
    required TResult Function(RequestFailed<T> value) loginFailed,
  }) {
    return successfullyLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullRequest<T> value)? successfullyLoggedIn,
    TResult? Function(RequestFailed<T> value)? loginFailed,
  }) {
    return successfullyLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullRequest<T> value)? successfullyLoggedIn,
    TResult Function(RequestFailed<T> value)? loginFailed,
    required TResult orElse(),
  }) {
    if (successfullyLoggedIn != null) {
      return successfullyLoggedIn(this);
    }
    return orElse();
  }
}

abstract class SuccessfullRequest<T> extends RequestResult<T> {
  const factory SuccessfullRequest({required final T data}) =
      _$SuccessfullRequest<T>;
  const SuccessfullRequest._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessfullRequestCopyWith<T, _$SuccessfullRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestFailedCopyWith<T, $Res> {
  factory _$$RequestFailedCopyWith(
          _$RequestFailed<T> value, $Res Function(_$RequestFailed<T>) then) =
      __$$RequestFailedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiError error});

  $ApiErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$RequestFailedCopyWithImpl<T, $Res>
    extends _$RequestResultCopyWithImpl<T, $Res, _$RequestFailed<T>>
    implements _$$RequestFailedCopyWith<T, $Res> {
  __$$RequestFailedCopyWithImpl(
      _$RequestFailed<T> _value, $Res Function(_$RequestFailed<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RequestFailed<T>(
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

class _$RequestFailed<T> extends RequestFailed<T> {
  const _$RequestFailed({required this.error}) : super._();

  @override
  final ApiError error;

  @override
  String toString() {
    return 'RequestResult<$T>.loginFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFailed<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestFailedCopyWith<T, _$RequestFailed<T>> get copyWith =>
      __$$RequestFailedCopyWithImpl<T, _$RequestFailed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successfullyLoggedIn,
    required TResult Function(ApiError error) loginFailed,
  }) {
    return loginFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successfullyLoggedIn,
    TResult? Function(ApiError error)? loginFailed,
  }) {
    return loginFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successfullyLoggedIn,
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
    required TResult Function(SuccessfullRequest<T> value) successfullyLoggedIn,
    required TResult Function(RequestFailed<T> value) loginFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullRequest<T> value)? successfullyLoggedIn,
    TResult? Function(RequestFailed<T> value)? loginFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullRequest<T> value)? successfullyLoggedIn,
    TResult Function(RequestFailed<T> value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class RequestFailed<T> extends RequestResult<T> {
  const factory RequestFailed({required final ApiError error}) =
      _$RequestFailed<T>;
  const RequestFailed._() : super._();

  ApiError get error;
  @JsonKey(ignore: true)
  _$$RequestFailedCopyWith<T, _$RequestFailed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
