import 'package:get_it/get_it.dart';
import 'package:clean_network_sample/src/controller/post/post_bloc.dart';
import 'package:clean_network_sample/src/data/repository/placeholder_repository_impl.dart';
import 'package:clean_network_sample/src/domain/repository/json_place_holder_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<JsonPlaceHolderRepository>(() => JsonPlaceHolderRepositoryImpl());
  sl.registerFactory<PostBloc>(() => PostBloc(sl()));
}