

import 'package:mauzoApp/presentation/movie_player/controller/movie_player_controller.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../../core/app_export.dart';
import 'basic_overlay_widget.dart';
//ignore: must_be_immutable
class VideoPlayerWidget extends StatelessWidget {
   
    var controller = Get.lazyPut(() => MoviePlayerController());

  @override
  Widget build(BuildContext context) {
    return 
     GetBuilder<MoviePlayerController>(
       builder: (getController) {
         return  getController.videoPlayerController.value.isInitialized ?
         
    RotatedBox(
          quarterTurns: 1,
          child: Center(
            child:buildVideo(
              
            ) ,
          ),
    )
    :Center(
          child: CircularProgressIndicator(
            color: ColorConstant.primary,
          ),
    );
       }
     );
    
  }

  Widget buildVideo(){
    return Stack(
      children: [
        buildVideoPlayer(),
        Positioned.fill(child: BasicOverlayWidget(
        
        ) )
      ],
    );
  }
  
 Widget buildVideoPlayer() {
return
    GetBuilder<MoviePlayerController>(
      builder: (getController) {
        return AspectRatio(
          aspectRatio:getController.videoPlayerController.value.aspectRatio,
          child: VideoPlayer(getController.videoPlayerController));
      }
    );
  }
}