import 'package:clean_network/clean_network.dart';
import 'package:clean_network_sample/src/domain/model/post_model.dart';

abstract class JsonPlaceHolderRepository {
  FeatureResponse<List<PostModel>, NetworkError> getPostList();
  FeatureResponse<PostModel, NetworkError> getPostById(String id);
  FeatureResponse<PostModel, NetworkError> createPost(PostModel postModel);
  FeatureResponse<PostModel, NetworkError> updatePost(PostModel postModel);
  FeatureResponse<PostModel, NetworkError> deletePost(String id);
}
