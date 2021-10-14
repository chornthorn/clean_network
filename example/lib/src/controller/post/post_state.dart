part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();
}

class PostInitial extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoadListSuccess extends PostState {
  final List<PostModel> data;

  PostLoadListSuccess(this.data);

  @override
  List<Object> get props => [data];
}
class PostLoadSuccess extends PostState {
  final PostModel data;

  PostLoadSuccess(this.data);

  @override
  List<Object> get props => [data];
}

class CreatePostSuccess extends PostState {
  final PostModel data;

  CreatePostSuccess(this.data);

  @override
  List<Object> get props => [data];
}

class UpdatePostSuccess extends PostState {
  final PostModel data;

  UpdatePostSuccess(this.data);

  @override
  List<Object> get props => [data];
}

class DeleteSuccess extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoadFailure extends PostState {
  final String message;

  PostLoadFailure(this.message);

  @override
  List<Object> get props => [message];
}
