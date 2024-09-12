
import '../../../core/app_export.dart';
import '../controller/movie_player_controller.dart';

class MoviePlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoviePlayerController());
  }
}