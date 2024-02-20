// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeatureModel _$HomeFeatureModelFromJson(Map<String, dynamic> json) {
  return _HomeFeatureModel.fromJson(json);
}

/// @nodoc
mixin _$HomeFeatureModel {
  bool get isCharging => throw _privateConstructorUsedError;
  List<dynamic> get productsList => throw _privateConstructorUsedError;
  List<DinerModel> get tables => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeFeatureModelCopyWith<HomeFeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeatureModelCopyWith<$Res> {
  factory $HomeFeatureModelCopyWith(
          HomeFeatureModel value, $Res Function(HomeFeatureModel) then) =
      _$HomeFeatureModelCopyWithImpl<$Res, HomeFeatureModel>;
  @useResult
  $Res call(
      {bool isCharging, List<dynamic> productsList, List<DinerModel> tables});
}

/// @nodoc
class _$HomeFeatureModelCopyWithImpl<$Res, $Val extends HomeFeatureModel>
    implements $HomeFeatureModelCopyWith<$Res> {
  _$HomeFeatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? productsList = null,
    Object? tables = null,
  }) {
    return _then(_value.copyWith(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<DinerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeFeatureModelImplCopyWith<$Res>
    implements $HomeFeatureModelCopyWith<$Res> {
  factory _$$HomeFeatureModelImplCopyWith(_$HomeFeatureModelImpl value,
          $Res Function(_$HomeFeatureModelImpl) then) =
      __$$HomeFeatureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCharging, List<dynamic> productsList, List<DinerModel> tables});
}

/// @nodoc
class __$$HomeFeatureModelImplCopyWithImpl<$Res>
    extends _$HomeFeatureModelCopyWithImpl<$Res, _$HomeFeatureModelImpl>
    implements _$$HomeFeatureModelImplCopyWith<$Res> {
  __$$HomeFeatureModelImplCopyWithImpl(_$HomeFeatureModelImpl _value,
      $Res Function(_$HomeFeatureModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? productsList = null,
    Object? tables = null,
  }) {
    return _then(_$HomeFeatureModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<DinerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeFeatureModelImpl implements _HomeFeatureModel {
  const _$HomeFeatureModelImpl(
      {required this.isCharging,
      required final List<dynamic> productsList,
      required final List<DinerModel> tables})
      : _productsList = productsList,
        _tables = tables;

  factory _$HomeFeatureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeFeatureModelImplFromJson(json);

  @override
  final bool isCharging;
  final List<dynamic> _productsList;
  @override
  List<dynamic> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  final List<DinerModel> _tables;
  @override
  List<DinerModel> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'HomeFeatureModel(isCharging: $isCharging, productsList: $productsList, tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeatureModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCharging,
      const DeepCollectionEquality().hash(_productsList),
      const DeepCollectionEquality().hash(_tables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeatureModelImplCopyWith<_$HomeFeatureModelImpl> get copyWith =>
      __$$HomeFeatureModelImplCopyWithImpl<_$HomeFeatureModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeatureModelImplToJson(
      this,
    );
  }
}

abstract class _HomeFeatureModel implements HomeFeatureModel {
  const factory _HomeFeatureModel(
      {required final bool isCharging,
      required final List<dynamic> productsList,
      required final List<DinerModel> tables}) = _$HomeFeatureModelImpl;

  factory _HomeFeatureModel.fromJson(Map<String, dynamic> json) =
      _$HomeFeatureModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  List<dynamic> get productsList;
  @override
  List<DinerModel> get tables;
  @override
  @JsonKey(ignore: true)
  _$$HomeFeatureModelImplCopyWith<_$HomeFeatureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
