// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Developer _$DeveloperFromJson(Map<String, dynamic> json) => Developer(
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
  isDeveloper: json['isDeveloper'] as bool,
);

Map<String, dynamic> _$DeveloperToJson(Developer instance) => <String, dynamic>{
  'name': instance.name,
  'age': instance.age,
  'isDeveloper': instance.isDeveloper,
};
