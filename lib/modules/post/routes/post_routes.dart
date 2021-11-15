import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:post_mobx_viper/modules/post/view/post_view.dart';

class PostRoutes {
  static final Handler postHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> parameters,
    ) =>
        const PostView(),
  );
}
