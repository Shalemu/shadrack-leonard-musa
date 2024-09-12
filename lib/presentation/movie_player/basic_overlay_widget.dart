import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


import '../../core/app_export.dart';
import '../../widgets/spacing.dart';
import 'controller/movie_player_controller.dart';
//ignore: must_be_immutable
class BasicOverlayWidget extends StatelessWidget {



   var controller = Get.lazyPut(() => MoviePlayerController());



  Widget build(BuildContext context) {
    
    return GetBuilder<MoviePlayerController>(
      builder: (getController) {
        var duration=getController.videoPlayerController.value.duration;
     var position=getController.videoPlayerController.value.position;
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            getController.onScreenTap();
          },
          child: getController.isOptionsShowed || !getController.videoPlayerController.value.isPlaying? Stack(
            children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: getPadding(
                  top: 20,
                  left: 20,

                right: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
          highlightColor: Colors.transparent,
                    onTap: (){
                      Get.back();
                    },

                    child: Icon(Icons.clear_rounded,
                    color: Colors.white,
                    ),

                   ),
                 
                 
                   
                    Text('Startup Business Event For Business Starters 2022',
                    style: TextStyle(
                                          
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          color: Colors.white,
                                          fontFamily: 'Noto Sans JP',
                                          fontWeight: FontWeight.w700,
                                          height: 1.00,
                                        ),
                    )
                 
                 ,Row(
                  children: [
                  CommonImageView(
                    imagePath: ImageConstant.share,
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                    fit: BoxFit.fill,

                  ),
                  HorizontalSpace(width: 16),
                  RotatedBox(
                    quarterTurns: 1,
                    child: CommonImageView(
                      imagePath: ImageConstant.dots,
                      width: getHorizontalSize(24),
                      height: getVerticalSize(24),
                      fit: BoxFit.fill,
                  
                    ),
                  ),
                  ],

                 )
                 
                  ],
                ),
              ),
            ),
            
            
              builPlayButton(),
             
             
              Positioned(
                bottom:  20,
                left: 0,
                right: 0,
                child: Padding(
                  padding:getPadding(
                    left: 20,
                    right: 20
                  ),
                  child: Row(
                    children: [
                      Text(getController.format(position),

                      style: TextStyle(color: Colors.white),),
                      HorizontalSpace(width: 8),
                      Expanded(child: buildIndicator),
                       HorizontalSpace(width: 8),
                       Text(getController.format(duration),

                      style: TextStyle(color: Colors.white),),
                     
                       ],
                  ),
                )
                ),
                
        
            ],
          ):SizedBox(),
        );
      }
    );
    
  }

 Widget get buildIndicator {
  return GetBuilder<MoviePlayerController>(
    builder: (getController) {
      return VideoProgressIndicator(getController.videoPlayerController, allowScrubbing: true,

      colors:VideoProgressColors(
        bufferedColor: ColorConstant.primary75,

        playedColor: ColorConstant.primary
       
      ) ,
      
      );
    }
  );
 }

 Widget builPlayButton() {
  return GetBuilder<MoviePlayerController>(
    builder: (getController) {
      return getController.videoPlayerController.value.isPlaying && getController.isOptionsShowed?
      Center(
        child: GestureDetector(
          onTap: (){
            getController.onPause();
          },
          child: Container(
            padding: getPadding(
              all: 16
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorConstant.primary75,
            ),
            child: Icon(Icons.pause_rounded,
            color: Colors.white,
            ),
        
          ),
        ),
      ):
      Center(
        child: GestureDetector(
          onTap: (){
           getController.onPaly();
          },
          child: Container(
            padding: getPadding(
              all: 16
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorConstant.primary75,
            ),
            child: Icon(Icons.play_arrow_rounded,
            color: Colors.white,),
        
          ),
        ),
      );
    }
  );

 }
}