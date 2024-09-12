import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:video_player/video_player.dart';

class MoviePlayerController extends GetxController {
  late VideoPlayerController videoPlayerController;
  final asset = "assets/aaaa.mp4";
  bool isOptionsShowed=false;

  @override
  void onReady() {
    super.onReady();
     videoPlayerController = VideoPlayerController.asset(asset)
      ..addListener(() {
       update();
      })
      ..setLooping(true)
      ..initialize().then((value) => videoPlayerController.play());
      
  }

  @override
  void onClose() {
    super.onClose();
     videoPlayerController.dispose();
   
  }
   format(Duration d) => d.toString().split('.').first.padLeft(8, "0").replaceFirst('00:', '');
  onScreenTap(){
     if (videoPlayerController.value.isPlaying){
          
               isOptionsShowed=!isOptionsShowed;
          update();
          }
  }

  onPause(){
    videoPlayerController.pause();
  }
  onPaly(){
    videoPlayerController.play();
  }
}

