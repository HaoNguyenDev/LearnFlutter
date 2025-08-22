import 'package:json_annotation/json_annotation.dart';

part 'developer.g.dart';
// A file will be generated with above name when the command line below is run.
// flutter pub run build_runner build

@JsonSerializable()
class Developer {
  final String name;
  final int age;
  final bool isDeveloper;

  Developer({required this.name, required this.age, required this.isDeveloper});

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);
  Map<String, dynamic> toJson() => _$DeveloperToJson(this);
}
