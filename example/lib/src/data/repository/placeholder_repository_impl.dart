import 'package:clean_network/clean_network.dart';
import 'package:clean_network_sample/src/data/service/json_api_service.dart';
import 'package:clean_network_sample/src/domain/model/post_model.dart';
import 'package:clean_network_sample/src/domain/repository/json_place_holder_repository.dart';

class JsonPlaceHolderRepositoryImpl implements JsonPlaceHolderRepository {
  @override
  FeatureResponse<PostModel, NetworkError> getPostById(String id) async {
    return NetworkExecuter.execute<PostModel, PostModel>(
      route: PlaceHolderClient.getPostById(id),
      responseType: PostModel(),
    );
  }

  @override
  FeatureResponse<PostModel, NetworkError> createPost(
      PostModel postModel) async {
    return NetworkExecuter.execute<PostModel, PostModel>(
      route: PlaceHolderClient.createPost(postModel),
      responseType: PostModel(),
    );
  }

  @override
  FeatureResponse<PostModel, NetworkError> updatePost(
      PostModel postModel) async {
    return NetworkExecuter.execute<PostModel, PostModel>(
      route: PlaceHolderClient.updatePost(postModel),
      responseType: PostModel(),
    );
  }

  @override
  FeatureResponse<PostModel, NetworkError> deletePost(String id) async {
    return NetworkExecuter.execute<PostModel, PostModel>(
      route: PlaceHolderClient.deletePost(id),
      responseType: PostModel(),
    );
  }

  @override
  FeatureResponse<List<PostModel>, NetworkError> getPostList() async {
    return NetworkExecuter.execute<PostModel, List<PostModel>>(
      route: const PlaceHolderClient.getPostsList(),
      responseType: PostModel(),
    );
  }
}
