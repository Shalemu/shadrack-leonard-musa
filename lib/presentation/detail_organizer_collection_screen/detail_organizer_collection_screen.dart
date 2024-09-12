import '../detail_organizer_collection_screen/widgets/list2_item_widget.dart';
import 'controller/detail_organizer_collection_controller.dart';
import 'models/list2_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';

import 'package:flutter/material.dart';

class DetailOrganizerCollectionScreen
    extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return    Container(
        height: getVerticalSize(345.00),
        
        child: GetBuilder<DetailOrganizerCollectionController>(
          init: DetailOrganizerCollectionController(),

          builder:(getController) => ListView.builder(
            padding: getPadding(left: 20,
            right: 20,
             top: 22),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: getController
                .organizersList
                .length,
            itemBuilder: (context, index) {
              List2ItemModel model = getController
                
                  .organizersList[index];
              return List2ItemWidget(list2ItemModelObj: model,
              index: index,);
            })));
               

 
}}
