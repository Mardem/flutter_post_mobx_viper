import 'package:flutter/material.dart';
import 'package:post_mobx_viper/modules/post/interactor/post_interactor.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Mobx VIPER'),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              (index + 1).toString() + ' - Título',
            ),
            onTap: () async {
              PostInteractor interactor = PostInteractor();

              await interactor.fetchData();
            },
          );
        },
      ),
    );
  }
}
