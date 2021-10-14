import 'package:freezed_annotation/freezed_annotation.dart';
 import 'package:clean_network/clean_network.dart';
import 'package:clean_network_sample/src/domain/model/post_model.dart';

part 'json_api_service.freezed.dart';

@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  const PlaceHolderClient._() : super();

  const factory PlaceHolderClient.getPostsList() = _GetPostsList;
  const factory PlaceHolderClient.getPostById(String id) = _GetPostById;
  const factory PlaceHolderClient.createPost(PostModel postModel) = _CreatePost;
  const factory PlaceHolderClient.updatePost(PostModel postModel) = _UpdatePost;
  const factory PlaceHolderClient.deletePost(String id) = _DeletePost;

  @override
  String get baseURL => "https://jsonplaceholder.typicode.com/";

  @override
  Map<String, dynamic> get header => {"Content-Type": "application/json"};

  @override
  String get path {
    return when<String>(
      getPostsList: () => 'posts/',
      getPostById: (String id) => 'posts/$id',
      createPost: (_) => 'posts/',
      updatePost: (PostModel postModel) => 'posts/${postModel.id}',
      deletePost: (String id) => 'posts/$id',
    );
  }

  @override
  String get method {
    return maybeWhen<String>(
      createPost: (_) => NETWORK_METHOD.POST,
      updatePost: (_) => NETWORK_METHOD.PUT,
      deletePost: (_) => NETWORK_METHOD.DELETE,
      orElse: () => NETWORK_METHOD.GET,
    );
  }

  @override
  dynamic get body {
    return maybeWhen(
      createPost: (model) => model.toJson(),
      updatePost: (model) => model.toJson(),
      orElse: () {
        return null;
      },
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      orElse: () {
        return null;
      },
    );
  }
}
