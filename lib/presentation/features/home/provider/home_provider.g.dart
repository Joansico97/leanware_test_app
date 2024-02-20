// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeatureModelImpl _$$HomeFeatureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeFeatureModelImpl(
      isCharging: json['isCharging'] as bool,
      productsList: json['productsList'] as List<dynamic>,
      tables: (json['tables'] as List<dynamic>)
          .map((e) => DinerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeFeatureModelImplToJson(
        _$HomeFeatureModelImpl instance) =>
    <String, dynamic>{
      'isCharging': instance.isCharging,
      'productsList': instance.productsList,
      'tables': instance.tables,
    };
