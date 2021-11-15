import 'package:flutter/material.dart';
import 'package:post_mobx_viper/router/router.dart';

void main() {
  runApp(const PostMobxViper());
}

class PostMobxViper extends StatefulWidget {
  const PostMobxViper({Key? key}) : super(key: key);

  @override
  _PostMobxViperState createState() => _PostMobxViperState();
}

class _PostMobxViperState extends State<PostMobxViper> {
  @override
  void initState() {
    super.initState();
    AppRouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Post Mobx VIPER',
      initialRoute: '/counter',
      onGenerateRoute: AppRouter.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
