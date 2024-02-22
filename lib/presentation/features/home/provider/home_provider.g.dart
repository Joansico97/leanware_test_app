// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeatureModelImpl _$$HomeFeatureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeFeatureModelImpl(
      currentIndex: json['currentIndex'] as int,
      productsList: (json['productsList'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tables: (json['tables'] as List<dynamic>)
          .map((e) => TableModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentTable:
          TableModel.fromJson(json['currentTable'] as Map<String, dynamic>),
      currentDiner:
          DinerModel.fromJson(json['currentDiner'] as Map<String, dynamic>),
      listBool:
          (json['listBool'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$HomeFeatureModelImplToJson(
        _$HomeFeatureModelImpl instance) =>
    <String, dynamic>{
      'currentIndex': instance.currentIndex,
      'productsList': instance.productsList,
      'tables': instance.tables,
      'currentTable': instance.currentTable,
      'currentDiner': instance.currentDiner,
      'listBool': instance.listBool,
    };
