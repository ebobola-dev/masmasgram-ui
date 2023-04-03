// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registation_request_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationRequestResult _$RegistrationRequestResultFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'successfullyRegistered':
      return SuccessfullyRegistered.fromJson(json);
    case 'registrationFailed':
      return RegistrationFailed.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'RegistrationRequestResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RegistrationRequestResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAvatarSaved) successfullyRegistered,
    required TResult Function(ApiError error) registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAvatarSaved)? successfullyRegistered,
    TResult? Function(ApiError error)? registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAvatarSaved)? successfullyRegistered,
    TResult Function(ApiError error)? registrationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullyRegistered value)
        successfullyRegistered,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullyRegistered value)? successfullyRegistered,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullyRegistered value)? successfullyRegistered,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestResultCopyWith<$Res> {
  factory $RegistrationRequestResultCopyWith(RegistrationRequestResult value,
          $Res Function(RegistrationRequestResult) then) =
      _$RegistrationRequestResultCopyWithImpl<$Res, RegistrationRequestResult>;
}

/// @nodoc
class _$RegistrationRequestResultCopyWithImpl<$Res,
        $Val extends RegistrationRequestResult>
    implements $RegistrationRequestResultCopyWith<$Res> {
  _$RegistrationRequestResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessfullyRegisteredCopyWith<$Res> {
  factory _$$SuccessfullyRegisteredCopyWith(_$SuccessfullyRegistered value,
          $Res Function(_$SuccessfullyRegistered) then) =
      __$$SuccessfullyRegisteredCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAvatarSaved});
}

/// @nodoc
class __$$SuccessfullyRegisteredCopyWithImpl<$Res>
    extends _$RegistrationRequestResultCopyWithImpl<$Res,
        _$SuccessfullyRegistered>
    implements _$$SuccessfullyRegisteredCopyWith<$Res> {
  __$$SuccessfullyRegisteredCopyWithImpl(_$SuccessfullyRegistered _value,
      $Res Function(_$SuccessfullyRegistered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvatarSaved = null,
  }) {
    return _then(_$SuccessfullyRegistered(
      isAvatarSaved: null == isAvatarSaved
          ? _value.isAvatarSaved
          : isAvatarSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessfullyRegistered extends SuccessfullyRegistered {
  const _$SuccessfullyRegistered(
      {required this.isAvatarSaved, final String? $type})
      : $type = $type ?? 'successfullyRegistered',
        super._();

  factory _$SuccessfullyRegistered.fromJson(Map<String, dynamic> json) =>
      _$$SuccessfullyRegisteredFromJson(json);

  @override
  final bool isAvatarSaved;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RegistrationRequestResult.successfullyRegistered(isAvatarSaved: $isAvatarSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfullyRegistered &&
            (identical(other.isAvatarSaved, isAvatarSaved) ||
                other.isAvatarSaved == isAvatarSaved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAvatarSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfullyRegisteredCopyWith<_$SuccessfullyRegistered> get copyWith =>
      __$$SuccessfullyRegisteredCopyWithImpl<_$SuccessfullyRegistered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAvatarSaved) successfullyRegistered,
    required TResult Function(ApiError error) registrationFailed,
  }) {
    return successfullyRegistered(isAvatarSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAvatarSaved)? successfullyRegistered,
    TResult? Function(ApiError error)? registrationFailed,
  }) {
    return successfullyRegistered?.call(isAvatarSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAvatarSaved)? successfullyRegistered,
    TResult Function(ApiError error)? registrationFailed,
    required TResult orElse(),
  }) {
    if (successfullyRegistered != null) {
      return successfullyRegistered(isAvatarSaved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullyRegistered value)
        successfullyRegistered,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) {
    return successfullyRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullyRegistered value)? successfullyRegistered,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) {
    return successfullyRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullyRegistered value)? successfullyRegistered,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) {
    if (successfullyRegistered != null) {
      return successfullyRegistered(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessfullyRegisteredToJson(
      this,
    );
  }
}

abstract class SuccessfullyRegistered extends RegistrationRequestResult {
  const factory SuccessfullyRegistered({required final bool isAvatarSaved}) =
      _$SuccessfullyRegistered;
  const SuccessfullyRegistered._() : super._();

  factory SuccessfullyRegistered.fromJson(Map<String, dynamic> json) =
      _$SuccessfullyRegistered.fromJson;

  bool get isAvatarSaved;
  @JsonKey(ignore: true)
  _$$SuccessfullyRegisteredCopyWith<_$SuccessfullyRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationFailedCopyWith<$Res> {
  factory _$$RegistrationFailedCopyWith(_$RegistrationFailed value,
          $Res Function(_$RegistrationFailed) then) =
      __$$RegistrationFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiError error});

  $ApiErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$RegistrationFailedCopyWithImpl<$Res>
    extends _$RegistrationRequestResultCopyWithImpl<$Res, _$RegistrationFailed>
    implements _$$RegistrationFailedCopyWith<$Res> {
  __$$RegistrationFailedCopyWithImpl(
      _$RegistrationFailed _value, $Res Function(_$RegistrationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegistrationFailed(
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
class _$RegistrationFailed extends RegistrationFailed {
  const _$RegistrationFailed({required this.error, final String? $type})
      : $type = $type ?? 'registrationFailed',
        super._();

  factory _$RegistrationFailed.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationFailedFromJson(json);

  @override
  final ApiError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RegistrationRequestResult.registrationFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationFailedCopyWith<_$RegistrationFailed> get copyWith =>
      __$$RegistrationFailedCopyWithImpl<_$RegistrationFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAvatarSaved) successfullyRegistered,
    required TResult Function(ApiError error) registrationFailed,
  }) {
    return registrationFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAvatarSaved)? successfullyRegistered,
    TResult? Function(ApiError error)? registrationFailed,
  }) {
    return registrationFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAvatarSaved)? successfullyRegistered,
    TResult Function(ApiError error)? registrationFailed,
    required TResult orElse(),
  }) {
    if (registrationFailed != null) {
      return registrationFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessfullyRegistered value)
        successfullyRegistered,
    required TResult Function(RegistrationFailed value) registrationFailed,
  }) {
    return registrationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessfullyRegistered value)? successfullyRegistered,
    TResult? Function(RegistrationFailed value)? registrationFailed,
  }) {
    return registrationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessfullyRegistered value)? successfullyRegistered,
    TResult Function(RegistrationFailed value)? registrationFailed,
    required TResult orElse(),
  }) {
    if (registrationFailed != null) {
      return registrationFailed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationFailedToJson(
      this,
    );
  }
}

abstract class RegistrationFailed extends RegistrationRequestResult {
  const factory RegistrationFailed({required final ApiError error}) =
      _$RegistrationFailed;
  const RegistrationFailed._() : super._();

  factory RegistrationFailed.fromJson(Map<String, dynamic> json) =
      _$RegistrationFailed.fromJson;

  ApiError get error;
  @JsonKey(ignore: true)
  _$$RegistrationFailedCopyWith<_$RegistrationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
