import 'package:clean_network/clean_network.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends BaseNetworkModel<PostModel> {
  late int id;
  late int userId;
  late String title;
  late String body;

  PostModel();

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  PostModel fromJson(Map<String, dynamic> json) {
    return PostModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
