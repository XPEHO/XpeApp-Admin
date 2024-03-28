// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qvst_campaign_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QvstCampaignEntity _$QvstCampaignEntityFromJson(Map<String, dynamic> json) {
  return _QvstCampaignEntity.fromJson(json);
}

/// @nodoc
mixin _$QvstCampaignEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  QvstThemeEntity get theme => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'participation_rate')
  String get participationRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QvstCampaignEntityCopyWith<QvstCampaignEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QvstCampaignEntityCopyWith<$Res> {
  factory $QvstCampaignEntityCopyWith(
          QvstCampaignEntity value, $Res Function(QvstCampaignEntity) then) =
      _$QvstCampaignEntityCopyWithImpl<$Res, QvstCampaignEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      QvstThemeEntity theme,
      String status,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'participation_rate') String participationRate});

  $QvstThemeEntityCopyWith<$Res> get theme;
}

/// @nodoc
class _$QvstCampaignEntityCopyWithImpl<$Res, $Val extends QvstCampaignEntity>
    implements $QvstCampaignEntityCopyWith<$Res> {
  _$QvstCampaignEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? theme = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? participationRate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as QvstThemeEntity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      participationRate: null == participationRate
          ? _value.participationRate
          : participationRate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QvstThemeEntityCopyWith<$Res> get theme {
    return $QvstThemeEntityCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QvstCampaignEntityImplCopyWith<$Res>
    implements $QvstCampaignEntityCopyWith<$Res> {
  factory _$$QvstCampaignEntityImplCopyWith(_$QvstCampaignEntityImpl value,
          $Res Function(_$QvstCampaignEntityImpl) then) =
      __$$QvstCampaignEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      QvstThemeEntity theme,
      String status,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'participation_rate') String participationRate});

  @override
  $QvstThemeEntityCopyWith<$Res> get theme;
}

/// @nodoc
class __$$QvstCampaignEntityImplCopyWithImpl<$Res>
    extends _$QvstCampaignEntityCopyWithImpl<$Res, _$QvstCampaignEntityImpl>
    implements _$$QvstCampaignEntityImplCopyWith<$Res> {
  __$$QvstCampaignEntityImplCopyWithImpl(_$QvstCampaignEntityImpl _value,
      $Res Function(_$QvstCampaignEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? theme = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? participationRate = null,
  }) {
    return _then(_$QvstCampaignEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as QvstThemeEntity,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      participationRate: null == participationRate
          ? _value.participationRate
          : participationRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QvstCampaignEntityImpl implements _QvstCampaignEntity {
  const _$QvstCampaignEntityImpl(
      {required this.id,
      required this.name,
      required this.theme,
      required this.status,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'participation_rate') required this.participationRate});

  factory _$QvstCampaignEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QvstCampaignEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final QvstThemeEntity theme;
  @override
  final String status;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'participation_rate')
  final String participationRate;

  @override
  String toString() {
    return 'QvstCampaignEntity(id: $id, name: $name, theme: $theme, status: $status, startDate: $startDate, endDate: $endDate, participationRate: $participationRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QvstCampaignEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.participationRate, participationRate) ||
                other.participationRate == participationRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, theme, status,
      startDate, endDate, participationRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QvstCampaignEntityImplCopyWith<_$QvstCampaignEntityImpl> get copyWith =>
      __$$QvstCampaignEntityImplCopyWithImpl<_$QvstCampaignEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QvstCampaignEntityImplToJson(
      this,
    );
  }
}

abstract class _QvstCampaignEntity implements QvstCampaignEntity {
  const factory _QvstCampaignEntity(
      {required final String id,
      required final String name,
      required final QvstThemeEntity theme,
      required final String status,
      @JsonKey(name: 'start_date') required final String startDate,
      @JsonKey(name: 'end_date') required final String endDate,
      @JsonKey(name: 'participation_rate')
      required final String participationRate}) = _$QvstCampaignEntityImpl;

  factory _QvstCampaignEntity.fromJson(Map<String, dynamic> json) =
      _$QvstCampaignEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  QvstThemeEntity get theme;
  @override
  String get status;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'participation_rate')
  String get participationRate;
  @override
  @JsonKey(ignore: true)
  _$$QvstCampaignEntityImplCopyWith<_$QvstCampaignEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
