import 'package:fluro/fluro.dart';
import 'package:post_mobx_viper/modules/counter/routes/counter_routes.dart';
import 'package:post_mobx_viper/modules/post/routes/post_routes.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define('/posts', handler: PostRoutes.postHandler);
    router.define('/counter', handler: CounterRoutes.counterHandler);
  }
}
