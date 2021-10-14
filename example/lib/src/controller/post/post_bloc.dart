import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:clean_network_sample/src/domain/model/post_model.dart';
import 'package:clean_network_sample/src/domain/repository/json_place_holder_repository.dart';

part 'post_event.dart';

part 'post_state.dart';

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

    on<GetPostByIdEvent>((event, emit) async {
      emit(PostLoading());
      final result = await _repository.getPostById(event.id);
      emit(result.when(
          success: (data) => PostLoadSuccess(data),
          failure: (error) => PostLoadFailure(error.toString())));
    });

    on<CreatePostEvent>((event, emit) async {
      emit(PostLoading());
      final result = await _repository.createPost(event.model);
      emit(result.when(
          success: (data) => CreatePostSuccess(data),
          failure: (error) => PostLoadFailure(error.toString())));
    });

    on<UpdatePostEvent>((event, emit) async {
      emit(PostLoading());
      final result = await _repository.updatePost(event.model);
      emit(result.when(
          success: (data) => UpdatePostSuccess(data),
          failure: (error) => PostLoadFailure(error.toString())));
    });

    on<DeletePostEvent>((event, emit) async {
      emit(PostLoading());
      final result = await _repository.deletePost(event.id);
      emit(result.when(
          success: (data) => DeleteSuccess(),
          failure: (error) => PostLoadFailure(error.toString())));
    });
  }
}
