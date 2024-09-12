
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtitleTwo1ItemWidget extends StatelessWidget {
  ListtitleTwo1ItemWidget({
    required this.titleOne,
  required this.contentOne,
    required this.titleTwo,
  required this.contentTwo
  });
  String titleOne;
  String contentOne;
  String titleTwo;
  String contentTwo;

 

  // var controller = Get.find<DetailTicketController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
       
        top: 7.3849945,
        bottom: 7.3849945,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                titleOne,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtNotoSansJPRegular12,
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                contentOne,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtNotoSansJPMedium12,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
               titleTwo,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtNotoSansJPRegular12,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  contentTwo,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtNotoSansJPMedium12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
