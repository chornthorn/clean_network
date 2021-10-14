import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_network_sample/src/controller/post/post_bloc.dart';
import 'package:clean_network_sample/src/domain/model/post_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clean Network")),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostLoadFailure) {
            return Center(child: Text(state.message));
          } else if (state is PostLoadListSuccess) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    print("here!");
                    Navigator.of(context).pushNamed(
                      PostDetailPage.routeName,
                      arguments: state.data[index].id.toString(),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: Text(state.data[index].userId.toString()),
                      title: Text(state.data[index].title),
                    ),
                  ),
                );
              },
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(CreatePost.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);
  static const String routeName = "/create_post";

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  late TextEditingController t1, t2, t3;

  @override
  void initState() {
    t1 = TextEditingController();
    t2 = TextEditingController();
    t3 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create post here!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: t1,

            ),
            TextField(
              controller: t2,
              decoration: InputDecoration(
                  hintText: "Title"
              ),
            ),
            TextField(
              controller: t3,
              decoration: InputDecoration(
                  hintText: "Body"
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                final req = PostModel();
                req.id = 1;
                req.userId = 1;
                req.title = t2.text;
                req.body = t3.text;
                context.read<PostBloc>().add(CreatePostEvent(req));
              },
              child: Text("Submit"),
            ),
            BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                if (state is PostLoadFailure) {
                  return Center(child: Text(state.message));
                } else if (state is CreatePostSuccess) {
                  return Card(
                    child: ListTile(
                      leading: Text(state.data.id.toString()),
                      title: Text(state.data.title),
                    ),
                  );
                } else if (state is PostLoading) {
                  return Center(child: const CircularProgressIndicator());
                }
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({Key? key, required this.id}) : super(key: key);
  final String id;
  static const String routeName = "/post_detail";

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  void initState() {
    BlocProvider.of<PostBloc>(context).add(GetPostByIdEvent(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post detail here!"),
      ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostLoadFailure) {
            return Center(child: Text(state.message));
          } else if (state is PostLoadSuccess) {
            return Card(
              child: ListTile(
                leading: Text(state.data.id.toString()),
                title: Text(state.data.title),
              ),
            );
          }
          return Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
