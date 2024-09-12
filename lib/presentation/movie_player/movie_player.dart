
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/movie_player/video_player.dart';
import 'package:flutter/material.dart';


import 'controller/movie_player_controller.dart';

class MoviePlayer extends GetWidget<MoviePlayerController> {
 
   MoviePlayer() ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: VideoPlayerWidget(
       
              ),
      ),
    );
    }
}