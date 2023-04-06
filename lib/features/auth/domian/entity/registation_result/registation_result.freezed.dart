// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registation_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationResult _$RegistrationResultFromJson(Map<String, dynamic> json) {
  return _RegistrationResult.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResult {
  bool get isAvatarSaved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationResultCopyWith<RegistrationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResultCopyWith<$Res> {
  factory $RegistrationResultCopyWith(
          RegistrationResult value, $Res Function(RegistrationResult) then) =
      _$RegistrationResultCopyWithImpl<$Res, RegistrationResult>;
  @useResult
  $Res call({bool isAvatarSaved});
}

/// @nodoc
class _$RegistrationResultCopyWithImpl<$Res, $Val extends RegistrationResult>
    implements $RegistrationResultCopyWith<$Res> {
  _$RegistrationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvatarSaved = null,
  }) {
    return _then(_value.copyWith(
      isAvatarSaved: null == isAvatarSaved
          ? _value.isAvatarSaved
          : isAvatarSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationResultCopyWith<$Res>
    implements $RegistrationResultCopyWith<$Res> {
  factory _$$_RegistrationResultCopyWith(_$_RegistrationResult value,
          $Res Function(_$_RegistrationResult) then) =
      __$$_RegistrationResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAvatarSaved});
}

/// @nodoc
class __$$_RegistrationResultCopyWithImpl<$Res>
    extends _$RegistrationResultCopyWithImpl<$Res, _$_RegistrationResult>
    implements _$$_RegistrationResultCopyWith<$Res> {
  __$$_RegistrationResultCopyWithImpl(
      _$_RegistrationResult _value, $Res Function(_$_RegistrationResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvatarSaved = null,
  }) {
    return _then(_$_RegistrationResult(
      isAvatarSaved: null == isAvatarSaved
          ? _value.isAvatarSaved
          : isAvatarSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationResult extends _RegistrationResult {
  const _$_RegistrationResult({required this.isAvatarSaved}) : super._();

  factory _$_RegistrationResult.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationResultFromJson(json);

  @override
  final bool isAvatarSaved;

  @override
  String toString() {
    return 'RegistrationResult(isAvatarSaved: $isAvatarSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationResult &&
            (identical(other.isAvatarSaved, isAvatarSaved) ||
                other.isAvatarSaved == isAvatarSaved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAvatarSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationResultCopyWith<_$_RegistrationResult> get copyWith =>
      __$$_RegistrationResultCopyWithImpl<_$_RegistrationResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationResultToJson(
      this,
    );
  }
}

abstract class _RegistrationResult extends RegistrationResult {
  const factory _RegistrationResult({required final bool isAvatarSaved}) =
      _$_RegistrationResult;
  const _RegistrationResult._() : super._();

  factory _RegistrationResult.fromJson(Map<String, dynamic> json) =
      _$_RegistrationResult.fromJson;

  @override
  bool get isAvatarSaved;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationResultCopyWith<_$_RegistrationResult> get copyWith =>
      throw _privateConstructorUsedError;
}
