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
  int get currentIndex => throw _privateConstructorUsedError;
  List<ProductModel> get productsList => throw _privateConstructorUsedError;
  List<TableModel> get tables => throw _privateConstructorUsedError;
  TableModel get currentTable => throw _privateConstructorUsedError;
  DinerModel get currentDiner => throw _privateConstructorUsedError;
  List<bool> get listBool => throw _privateConstructorUsedError;

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
      {int currentIndex,
      List<ProductModel> productsList,
      List<TableModel> tables,
      TableModel currentTable,
      DinerModel currentDiner,
      List<bool> listBool});
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
    Object? currentIndex = null,
    Object? productsList = null,
    Object? tables = null,
    Object? currentTable = null,
    Object? currentDiner = null,
    Object? listBool = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
      currentTable: null == currentTable
          ? _value.currentTable
          : currentTable // ignore: cast_nullable_to_non_nullable
              as TableModel,
      currentDiner: null == currentDiner
          ? _value.currentDiner
          : currentDiner // ignore: cast_nullable_to_non_nullable
              as DinerModel,
      listBool: null == listBool
          ? _value.listBool
          : listBool // ignore: cast_nullable_to_non_nullable
              as List<bool>,
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
      {int currentIndex,
      List<ProductModel> productsList,
      List<TableModel> tables,
      TableModel currentTable,
      DinerModel currentDiner,
      List<bool> listBool});
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
    Object? currentIndex = null,
    Object? productsList = null,
    Object? tables = null,
    Object? currentTable = null,
    Object? currentDiner = null,
    Object? listBool = null,
  }) {
    return _then(_$HomeFeatureModelImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>,
      currentTable: null == currentTable
          ? _value.currentTable
          : currentTable // ignore: cast_nullable_to_non_nullable
              as TableModel,
      currentDiner: null == currentDiner
          ? _value.currentDiner
          : currentDiner // ignore: cast_nullable_to_non_nullable
              as DinerModel,
      listBool: null == listBool
          ? _value._listBool
          : listBool // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeFeatureModelImpl implements _HomeFeatureModel {
  const _$HomeFeatureModelImpl(
      {required this.currentIndex,
      required final List<ProductModel> productsList,
      required final List<TableModel> tables,
      required this.currentTable,
      required this.currentDiner,
      required final List<bool> listBool})
      : _productsList = productsList,
        _tables = tables,
        _listBool = listBool;

  factory _$HomeFeatureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeFeatureModelImplFromJson(json);

  @override
  final int currentIndex;
  final List<ProductModel> _productsList;
  @override
  List<ProductModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  final List<TableModel> _tables;
  @override
  List<TableModel> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  final TableModel currentTable;
  @override
  final DinerModel currentDiner;
  final List<bool> _listBool;
  @override
  List<bool> get listBool {
    if (_listBool is EqualUnmodifiableListView) return _listBool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listBool);
  }

  @override
  String toString() {
    return 'HomeFeatureModel(currentIndex: $currentIndex, productsList: $productsList, tables: $tables, currentTable: $currentTable, currentDiner: $currentDiner, listBool: $listBool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeatureModelImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.currentTable, currentTable) ||
                other.currentTable == currentTable) &&
            (identical(other.currentDiner, currentDiner) ||
                other.currentDiner == currentDiner) &&
            const DeepCollectionEquality().equals(other._listBool, _listBool));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      const DeepCollectionEquality().hash(_productsList),
      const DeepCollectionEquality().hash(_tables),
      currentTable,
      currentDiner,
      const DeepCollectionEquality().hash(_listBool));

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
      {required final int currentIndex,
      required final List<ProductModel> productsList,
      required final List<TableModel> tables,
      required final TableModel currentTable,
      required final DinerModel currentDiner,
      required final List<bool> listBool}) = _$HomeFeatureModelImpl;

  factory _HomeFeatureModel.fromJson(Map<String, dynamic> json) =
      _$HomeFeatureModelImpl.fromJson;

  @override
  int get currentIndex;
  @override
  List<ProductModel> get productsList;
  @override
  List<TableModel> get tables;
  @override
  TableModel get currentTable;
  @override
  DinerModel get currentDiner;
  @override
  List<bool> get listBool;
  @override
  @JsonKey(ignore: true)
  _$$HomeFeatureModelImplCopyWith<_$HomeFeatureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
