// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'json_api_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceHolderClientTearOff {
  const _$PlaceHolderClientTearOff();

  _GetPostsList getPostsList() {
    return const _GetPostsList();
  }

  _GetPostById getPostById(String id) {
    return _GetPostById(
      id,
    );
  }

  _CreatePost createPost(PostModel postModel) {
    return _CreatePost(
      postModel,
    );
  }

  _UpdatePost updatePost(PostModel postModel) {
    return _UpdatePost(
      postModel,
    );
  }

  _DeletePost deletePost(String id) {
    return _DeletePost(
      id,
    );
  }
}

/// @nodoc
const $PlaceHolderClient = _$PlaceHolderClientTearOff();

/// @nodoc
mixin _$PlaceHolderClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPostsList,
    required TResult Function(String id) getPostById,
    required TResult Function(PostModel postModel) createPost,
    required TResult Function(PostModel postModel) updatePost,
    required TResult Function(String id) deletePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPostsList,
    TResult Function(String id)? getPostById,
    TResult Function(PostModel postModel)? createPost,
    TResult Function(PostModel postModel)? updatePost,
    TResult Function(String id)? deletePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsList value) getPostsList,
    required TResult Function(_GetPostById value) getPostById,
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsList value)? getPostsList,
    TResult Function(_GetPostById value)? getPostById,
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceHolderClientCopyWith<$Res> {
  factory $PlaceHolderClientCopyWith(
          PlaceHolderClient value, $Res Function(PlaceHolderClient) then) =
      _$PlaceHolderClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceHolderClientCopyWithImpl<$Res>
    implements $PlaceHolderClientCopyWith<$Res> {
  _$PlaceHolderClientCopyWithImpl(this._value, this._then);

  final PlaceHolderClient _value;
  // ignore: unused_field
  final $Res Function(PlaceHolderClient) _then;
}

/// @nodoc
abstract class _$GetPostsListCopyWith<$Res> {
  factory _$GetPostsListCopyWith(
          _GetPostsList value, $Res Function(_GetPostsList) then) =
      __$GetPostsListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPostsListCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetPostsListCopyWith<$Res> {
  __$GetPostsListCopyWithImpl(
      _GetPostsList _value, $Res Function(_GetPostsList) _then)
      : super(_value, (v) => _then(v as _GetPostsList));

  @override
  _GetPostsList get _value => super._value as _GetPostsList;
}

/// @nodoc
class _$_GetPostsList extends _GetPostsList {
  const _$_GetPostsList() : super._();

  @override
  String toString() {
    return 'PlaceHolderClient.getPostsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPostsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPostsList,
    required TResult Function(String id) getPostById,
    required TResult Function(PostModel postModel) createPost,
    required TResult Function(PostModel postModel) updatePost,
    required TResult Function(String id) deletePost,
  }) {
    return getPostsList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPostsList,
    TResult Function(String id)? getPostById,
    TResult Function(PostModel postModel)? createPost,
    TResult Function(PostModel postModel)? updatePost,
    TResult Function(String id)? deletePost,
    required TResult orElse(),
  }) {
    if (getPostsList != null) {
      return getPostsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsList value) getPostsList,
    required TResult Function(_GetPostById value) getPostById,
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return getPostsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsList value)? getPostsList,
    TResult Function(_GetPostById value)? getPostById,
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (getPostsList != null) {
      return getPostsList(this);
    }
    return orElse();
  }
}

abstract class _GetPostsList extends PlaceHolderClient {
  const factory _GetPostsList() = _$_GetPostsList;
  const _GetPostsList._() : super._();
}

/// @nodoc
abstract class _$GetPostByIdCopyWith<$Res> {
  factory _$GetPostByIdCopyWith(
          _GetPostById value, $Res Function(_GetPostById) then) =
      __$GetPostByIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$GetPostByIdCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetPostByIdCopyWith<$Res> {
  __$GetPostByIdCopyWithImpl(
      _GetPostById _value, $Res Function(_GetPostById) _then)
      : super(_value, (v) => _then(v as _GetPostById));

  @override
  _GetPostById get _value => super._value as _GetPostById;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetPostById(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_GetPostById extends _GetPostById {
  const _$_GetPostById(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'PlaceHolderClient.getPostById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPostById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetPostByIdCopyWith<_GetPostById> get copyWith =>
      __$GetPostByIdCopyWithImpl<_GetPostById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPostsList,
    required TResult Function(String id) getPostById,
    required TResult Function(PostModel postModel) createPost,
    required TResult Function(PostModel postModel) updatePost,
    required TResult Function(String id) deletePost,
  }) {
    return getPostById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPostsList,
    TResult Function(String id)? getPostById,
    TResult Function(PostModel postModel)? createPost,
    TResult Function(PostModel postModel)? updatePost,
    TResult Function(String id)? deletePost,
    required TResult orElse(),
  }) {
    if (getPostById != null) {
      return getPostById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsList value) getPostsList,
    required TResult Function(_GetPostById value) getPostById,
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return getPostById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsList value)? getPostsList,
    TResult Function(_GetPostById value)? getPostById,
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (getPostById != null) {
      return getPostById(this);
    }
    return orElse();
  }
}

abstract class _GetPostById extends PlaceHolderClient {
  const factory _GetPostById(String id) = _$_GetPostById;
  const _GetPostById._() : super._();

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPostByIdCopyWith<_GetPostById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatePostCopyWith<$Res> {
  factory _$CreatePostCopyWith(
          _CreatePost value, $Res Function(_CreatePost) then) =
      __$CreatePostCopyWithImpl<$Res>;
  $Res call({PostModel postModel});
}

/// @nodoc
class __$CreatePostCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$CreatePostCopyWith<$Res> {
  __$CreatePostCopyWithImpl(
      _CreatePost _value, $Res Function(_CreatePost) _then)
      : super(_value, (v) => _then(v as _CreatePost));

  @override
  _CreatePost get _value => super._value as _CreatePost;

  @override
  $Res call({
    Object? postModel = freezed,
  }) {
    return _then(_CreatePost(
      postModel == freezed
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as PostModel,
    ));
  }
}

/// @nodoc
class _$_CreatePost extends _CreatePost {
  const _$_CreatePost(this.postModel) : super._();

  @override
  final PostModel postModel;

  @override
  String toString() {
    return 'PlaceHolderClient.createPost(postModel: $postModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatePost &&
            (identical(other.postModel, postModel) ||
                const DeepCollectionEquality()
                    .equals(other.postModel, postModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postModel);

  @JsonKey(ignore: true)
  @override
  _$CreatePostCopyWith<_CreatePost> get copyWith =>
      __$CreatePostCopyWithImpl<_CreatePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPostsList,
    required TResult Function(String id) getPostById,
    required TResult Function(PostModel postModel) createPost,
    required TResult Function(PostModel postModel) updatePost,
    required TResult Function(String id) deletePost,
  }) {
    return createPost(postModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPostsList,
    TResult Function(String id)? getPostById,
    TResult Function(PostModel postModel)? createPost,
    TResult Function(PostModel postModel)? updatePost,
    TResult Function(String id)? deletePost,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(postModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsList value) getPostsList,
    required TResult Function(_GetPostById value) getPostById,
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsList value)? getPostsList,
    TResult Function(_GetPostById value)? getPostById,
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class _CreatePost extends PlaceHolderClient {
  const factory _CreatePost(PostModel postModel) = _$_CreatePost;
  const _CreatePost._() : super._();

  PostModel get postModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreatePostCopyWith<_CreatePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatePostCopyWith<$Res> {
  factory _$UpdatePostCopyWith(
          _UpdatePost value, $Res Function(_UpdatePost) then) =
      __$UpdatePostCopyWithImpl<$Res>;
  $Res call({PostModel postModel});
}

/// @nodoc
class __$UpdatePostCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$UpdatePostCopyWith<$Res> {
  __$UpdatePostCopyWithImpl(
      _UpdatePost _value, $Res Function(_UpdatePost) _then)
      : super(_value, (v) => _then(v as _UpdatePost));

  @override
  _UpdatePost get _value => super._value as _UpdatePost;

  @override
  $Res call({
    Object? postModel = freezed,
  }) {
    return _then(_UpdatePost(
      postModel == freezed
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as PostModel,
    ));
  }
}

/// @nodoc
class _$_UpdatePost extends _UpdatePost {
  const _$_UpdatePost(this.postModel) : super._();

  @override
  final PostModel postModel;

  @override
  String toString() {
    return 'PlaceHolderClient.updatePost(postModel: $postModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePost &&
            (identical(other.postModel, postModel) ||
                const DeepCollectionEquality()
                    .equals(other.postModel, postModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postModel);

  @JsonKey(ignore: true)
  @override
  _$UpdatePostCopyWith<_UpdatePost> get copyWith =>
      __$UpdatePostCopyWithImpl<_UpdatePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPostsList,
    required TResult Function(String id) getPostById,
    required TResult Function(PostModel postModel) createPost,
    required TResult Function(PostModel postModel) updatePost,
    required TResult Function(String id) deletePost,
  }) {
    return updatePost(postModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPostsList,
    TResult Function(String id)? getPostById,
    TResult Function(PostModel postModel)? createPost,
    TResult Function(PostModel postModel)? updatePost,
    TResult Function(String id)? deletePost,
    required TResult orElse(),
  }) {
    if (updatePost != null) {
      return updatePost(postModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsList value) getPostsList,
    required TResult Function(_GetPostById value) getPostById,
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return updatePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsList value)? getPostsList,
    TResult Function(_GetPostById value)? getPostById,
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (updatePost != null) {
      return updatePost(this);
    }
    return orElse();
  }
}

abstract class _UpdatePost extends PlaceHolderClient {
  const factory _UpdatePost(PostModel postModel) = _$_UpdatePost;
  const _UpdatePost._() : super._();

  PostModel get postModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatePostCopyWith<_UpdatePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletePostCopyWith<$Res> {
  factory _$DeletePostCopyWith(
          _DeletePost value, $Res Function(_DeletePost) then) =
      __$DeletePostCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DeletePostCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$DeletePostCopyWith<$Res> {
  __$DeletePostCopyWithImpl(
      _DeletePost _value, $Res Function(_DeletePost) _then)
      : super(_value, (v) => _then(v as _DeletePost));

  @override
  _DeletePost get _value => super._value as _DeletePost;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeletePost(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DeletePost extends _DeletePost {
  const _$_DeletePost(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'PlaceHolderClient.deletePost(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletePost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeletePostCopyWith<_DeletePost> get copyWith =>
      __$DeletePostCopyWithImpl<_DeletePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPostsList,
    required TResult Function(String id) getPostById,
    required TResult Function(PostModel postModel) createPost,
    required TResult Function(PostModel postModel) updatePost,
    required TResult Function(String id) deletePost,
  }) {
    return deletePost(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPostsList,
    TResult Function(String id)? getPostById,
    TResult Function(PostModel postModel)? createPost,
    TResult Function(PostModel postModel)? updatePost,
    TResult Function(String id)? deletePost,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsList value) getPostsList,
    required TResult Function(_GetPostById value) getPostById,
    required TResult Function(_CreatePost value) createPost,
    required TResult Function(_UpdatePost value) updatePost,
    required TResult Function(_DeletePost value) deletePost,
  }) {
    return deletePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsList value)? getPostsList,
    TResult Function(_GetPostById value)? getPostById,
    TResult Function(_CreatePost value)? createPost,
    TResult Function(_UpdatePost value)? updatePost,
    TResult Function(_DeletePost value)? deletePost,
    required TResult orElse(),
  }) {
    if (deletePost != null) {
      return deletePost(this);
    }
    return orElse();
  }
}

abstract class _DeletePost extends PlaceHolderClient {
  const factory _DeletePost(String id) = _$_DeletePost;
  const _DeletePost._() : super._();

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletePostCopyWith<_DeletePost> get copyWith =>
      throw _privateConstructorUsedError;
}
