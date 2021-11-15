import 'package:logger/logger.dart';
import 'package:post_mobx_viper/services/http_service.dart';

class PostInteractor {
  final HttpService _httpService = HttpService();

  fetchData() async {
    var data = await _httpService.get(url: '/posts');
    Logger logger = Logger();

    logger.d(data);
  }
}
