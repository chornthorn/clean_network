part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();
}

class GetPostList extends PostEvent {
  @override
  List<Object?> get props => [];
}

class GetPostByIdEvent extends PostEvent {
  final String id;

  GetPostByIdEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class CreatePostEvent extends PostEvent {
  final PostModel model;

  CreatePostEvent(this.model);

  @override
  List<Object?> get props => [model];
}

class UpdatePostEvent extends PostEvent {
  final PostModel model;

  UpdatePostEvent(this.model);

  @override
  List<Object?> get props => [model];
}

class DeletePostEvent extends PostEvent {
  final String id;

  DeletePostEvent(this.id);

  @override
  List<Object?> get props => [id];
}