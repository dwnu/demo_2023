// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDto _$GameDtoFromJson(Map<String, dynamic> json) {
  return _GameDto.fromJson(json);
}

/// @nodoc
mixin _$GameDto {
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDtoCopyWith<GameDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDtoCopyWith<$Res> {
  factory $GameDtoCopyWith(GameDto value, $Res Function(GameDto) then) =
      _$GameDtoCopyWithImpl<$Res, GameDto>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _$GameDtoCopyWithImpl<$Res, $Val extends GameDto>
    implements $GameDtoCopyWith<$Res> {
  _$GameDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameDtoCopyWith<$Res> implements $GameDtoCopyWith<$Res> {
  factory _$$_GameDtoCopyWith(
          _$_GameDto value, $Res Function(_$_GameDto) then) =
      __$$_GameDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$_GameDtoCopyWithImpl<$Res>
    extends _$GameDtoCopyWithImpl<$Res, _$_GameDto>
    implements _$$_GameDtoCopyWith<$Res> {
  __$$_GameDtoCopyWithImpl(_$_GameDto _value, $Res Function(_$_GameDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_GameDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameDto extends _GameDto with DiagnosticableTreeMixin {
  _$_GameDto({this.title}) : super._();

  factory _$_GameDto.fromJson(Map<String, dynamic> json) =>
      _$$_GameDtoFromJson(json);

  @override
  final String? title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameDto(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameDto'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameDto &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameDtoCopyWith<_$_GameDto> get copyWith =>
      __$$_GameDtoCopyWithImpl<_$_GameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameDtoToJson(
      this,
    );
  }
}

abstract class _GameDto extends GameDto {
  factory _GameDto({final String? title}) = _$_GameDto;
  _GameDto._() : super._();

  factory _GameDto.fromJson(Map<String, dynamic> json) = _$_GameDto.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_GameDtoCopyWith<_$_GameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
