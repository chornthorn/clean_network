# Flutter Clean Network Layer Package

With Flutter's clean network layer, you can dynamically decode models, handle network errors, and create dynamic requests for each client.
![compare](https://user-images.githubusercontent.com/36778896/137317806-c1280af1-0546-4ec1-9873-0e4b2e9122df.jpeg)


## Packages used
```yaml
freezed
json_annotation
dio
connectivity
```
## How to use:

* Model:
```dart
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
```
* Service:
```dart
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
```
* Repository:
```dart
class JsonPlaceHolderRepository {
  FeatureResponse<PostModel, NetworkError> getPostById(String id) async {
    return NetworkExecuter.execute<PostModel, PostModel>(
      route: PlaceHolderClient.getPostById(id),
      responseType: PostModel(),
    );
  }
}
```
* Use with state management is the best choose:
```dart
class PostBloc extends Bloc<PostEvent, PostState> {
  final JsonPlaceHolderRepository _repository;

  PostBloc(this._repository) : super(PostInitial()) {
    on<GetPostList>((event, emit) async {
      emit(PostLoading());
      final result = await _repository.getPostList();
      emit(result.when(
          success: (data) => PostLoadListSuccess(data),
          failure: (error) => PostLoadFailure(error.toString())));
    });
}
```

* For more please see in example directory


* Owner by https://github.com/i-Senku/CleanNetwork

## Articles
#### English : https://ercangp.medium.com/clean-network-layer-in-flutter-dio-freezed-json-annotation-f5f2c41ac240
#### Türkçe : https://ercangp.medium.com/flutterda-temiz-network-kullan%C4%B1m%C4%B1-dio-freezed-json-annotation-f61b9df2be08


