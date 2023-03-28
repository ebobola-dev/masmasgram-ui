// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelsSettings _$ModelsSettingsFromJson(Map<String, dynamic> json) {
  return _ModelsSettings.fromJson(json);
}

/// @nodoc
mixin _$ModelsSettings {
  FieldSettings get username => throw _privateConstructorUsedError;
  FieldSettings get password => throw _privateConstructorUsedError;
  FieldSettings get fullname => throw _privateConstructorUsedError;
  List<String> get allowedImageExtensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelsSettingsCopyWith<ModelsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsSettingsCopyWith<$Res> {
  factory $ModelsSettingsCopyWith(
          ModelsSettings value, $Res Function(ModelsSettings) then) =
      _$ModelsSettingsCopyWithImpl<$Res, ModelsSettings>;
  @useResult
  $Res call(
      {FieldSettings username,
      FieldSettings password,
      FieldSettings fullname,
      List<String> allowedImageExtensions});

  $FieldSettingsCopyWith<$Res> get username;
  $FieldSettingsCopyWith<$Res> get password;
  $FieldSettingsCopyWith<$Res> get fullname;
}

/// @nodoc
class _$ModelsSettingsCopyWithImpl<$Res, $Val extends ModelsSettings>
    implements $ModelsSettingsCopyWith<$Res> {
  _$ModelsSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? fullname = null,
    Object? allowedImageExtensions = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as FieldSettings,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FieldSettings,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as FieldSettings,
      allowedImageExtensions: null == allowedImageExtensions
          ? _value.allowedImageExtensions
          : allowedImageExtensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldSettingsCopyWith<$Res> get username {
    return $FieldSettingsCopyWith<$Res>(_value.username, (value) {
      return _then(_value.copyWith(username: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldSettingsCopyWith<$Res> get password {
    return $FieldSettingsCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldSettingsCopyWith<$Res> get fullname {
    return $FieldSettingsCopyWith<$Res>(_value.fullname, (value) {
      return _then(_value.copyWith(fullname: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModelsSettingsCopyWith<$Res>
    implements $ModelsSettingsCopyWith<$Res> {
  factory _$$_ModelsSettingsCopyWith(
          _$_ModelsSettings value, $Res Function(_$_ModelsSettings) then) =
      __$$_ModelsSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FieldSettings username,
      FieldSettings password,
      FieldSettings fullname,
      List<String> allowedImageExtensions});

  @override
  $FieldSettingsCopyWith<$Res> get username;
  @override
  $FieldSettingsCopyWith<$Res> get password;
  @override
  $FieldSettingsCopyWith<$Res> get fullname;
}

/// @nodoc
class __$$_ModelsSettingsCopyWithImpl<$Res>
    extends _$ModelsSettingsCopyWithImpl<$Res, _$_ModelsSettings>
    implements _$$_ModelsSettingsCopyWith<$Res> {
  __$$_ModelsSettingsCopyWithImpl(
      _$_ModelsSettings _value, $Res Function(_$_ModelsSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? fullname = null,
    Object? allowedImageExtensions = null,
  }) {
    return _then(_$_ModelsSettings(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as FieldSettings,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FieldSettings,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as FieldSettings,
      allowedImageExtensions: null == allowedImageExtensions
          ? _value._allowedImageExtensions
          : allowedImageExtensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelsSettings extends _ModelsSettings {
  _$_ModelsSettings(
      {required this.username,
      required this.password,
      required this.fullname,
      required final List<String> allowedImageExtensions})
      : _allowedImageExtensions = allowedImageExtensions,
        super._();

  factory _$_ModelsSettings.fromJson(Map<String, dynamic> json) =>
      _$$_ModelsSettingsFromJson(json);

  @override
  final FieldSettings username;
  @override
  final FieldSettings password;
  @override
  final FieldSettings fullname;
  final List<String> _allowedImageExtensions;
  @override
  List<String> get allowedImageExtensions {
    if (_allowedImageExtensions is EqualUnmodifiableListView)
      return _allowedImageExtensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedImageExtensions);
  }

  @override
  String toString() {
    return 'ModelsSettings(username: $username, password: $password, fullname: $fullname, allowedImageExtensions: $allowedImageExtensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelsSettings &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            const DeepCollectionEquality().equals(
                other._allowedImageExtensions, _allowedImageExtensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, fullname,
      const DeepCollectionEquality().hash(_allowedImageExtensions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelsSettingsCopyWith<_$_ModelsSettings> get copyWith =>
      __$$_ModelsSettingsCopyWithImpl<_$_ModelsSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelsSettingsToJson(
      this,
    );
  }
}

abstract class _ModelsSettings extends ModelsSettings {
  factory _ModelsSettings(
      {required final FieldSettings username,
      required final FieldSettings password,
      required final FieldSettings fullname,
      required final List<String> allowedImageExtensions}) = _$_ModelsSettings;
  _ModelsSettings._() : super._();

  factory _ModelsSettings.fromJson(Map<String, dynamic> json) =
      _$_ModelsSettings.fromJson;

  @override
  FieldSettings get username;
  @override
  FieldSettings get password;
  @override
  FieldSettings get fullname;
  @override
  List<String> get allowedImageExtensions;
  @override
  @JsonKey(ignore: true)
  _$$_ModelsSettingsCopyWith<_$_ModelsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldSettings _$FieldSettingsFromJson(Map<String, dynamic> json) {
  return _FieldSettings.fromJson(json);
}

/// @nodoc
mixin _$FieldSettings {
  int get minLen => throw _privateConstructorUsedError;
  int get maxLen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldSettingsCopyWith<FieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldSettingsCopyWith<$Res> {
  factory $FieldSettingsCopyWith(
          FieldSettings value, $Res Function(FieldSettings) then) =
      _$FieldSettingsCopyWithImpl<$Res, FieldSettings>;
  @useResult
  $Res call({int minLen, int maxLen});
}

/// @nodoc
class _$FieldSettingsCopyWithImpl<$Res, $Val extends FieldSettings>
    implements $FieldSettingsCopyWith<$Res> {
  _$FieldSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLen = null,
    Object? maxLen = null,
  }) {
    return _then(_value.copyWith(
      minLen: null == minLen
          ? _value.minLen
          : minLen // ignore: cast_nullable_to_non_nullable
              as int,
      maxLen: null == maxLen
          ? _value.maxLen
          : maxLen // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FieldSettingsCopyWith<$Res>
    implements $FieldSettingsCopyWith<$Res> {
  factory _$$_FieldSettingsCopyWith(
          _$_FieldSettings value, $Res Function(_$_FieldSettings) then) =
      __$$_FieldSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minLen, int maxLen});
}

/// @nodoc
class __$$_FieldSettingsCopyWithImpl<$Res>
    extends _$FieldSettingsCopyWithImpl<$Res, _$_FieldSettings>
    implements _$$_FieldSettingsCopyWith<$Res> {
  __$$_FieldSettingsCopyWithImpl(
      _$_FieldSettings _value, $Res Function(_$_FieldSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLen = null,
    Object? maxLen = null,
  }) {
    return _then(_$_FieldSettings(
      minLen: null == minLen
          ? _value.minLen
          : minLen // ignore: cast_nullable_to_non_nullable
              as int,
      maxLen: null == maxLen
          ? _value.maxLen
          : maxLen // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldSettings extends _FieldSettings {
  _$_FieldSettings({required this.minLen, required this.maxLen}) : super._();

  factory _$_FieldSettings.fromJson(Map<String, dynamic> json) =>
      _$$_FieldSettingsFromJson(json);

  @override
  final int minLen;
  @override
  final int maxLen;

  @override
  String toString() {
    return 'FieldSettings(minLen: $minLen, maxLen: $maxLen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldSettings &&
            (identical(other.minLen, minLen) || other.minLen == minLen) &&
            (identical(other.maxLen, maxLen) || other.maxLen == maxLen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minLen, maxLen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldSettingsCopyWith<_$_FieldSettings> get copyWith =>
      __$$_FieldSettingsCopyWithImpl<_$_FieldSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldSettingsToJson(
      this,
    );
  }
}

abstract class _FieldSettings extends FieldSettings {
  factory _FieldSettings(
      {required final int minLen,
      required final int maxLen}) = _$_FieldSettings;
  _FieldSettings._() : super._();

  factory _FieldSettings.fromJson(Map<String, dynamic> json) =
      _$_FieldSettings.fromJson;

  @override
  int get minLen;
  @override
  int get maxLen;
  @override
  @JsonKey(ignore: true)
  _$$_FieldSettingsCopyWith<_$_FieldSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
