import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/custom_text_form_field.dart';
import '../../widgets/spacing.dart';
import '../search_by_map_screen/widgets/listblur1_item_widget.dart';
import 'controller/search_by_map_controller.dart';
import 'models/listblur1_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class SearchByMapScreen extends GetWidget<SearchByMapController> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Container(
                    height:size.height,
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                    GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
                       
                       
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 24,
                              top: 30,
                              right: 24,
                              bottom: 16,
                            ),
                           
                            child:   CustomTextFormField(
                        hintText: 'Search all events',
                        width: size.width,
                       
                   
                        prefix:Padding(
                                                  padding:
                                                      getPadding(left: 10,
                                                      right: 10),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00))),
                    
                        prefixConstraints:BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 40
                        ),
                        suffix:
                       
                       InkWell(
                            highlightColor: Colors.transparent,
                          onTap: (){
                           Get.back();
                          },
                          child: Icon(Icons.clear_rounded,
                          color:ColorConstant.bluegray300 ,),
                        )       

                      ),
                   
                          
                          ),
                        ),
                      
                      
                      
                        Align(
                          alignment: Alignment(0,-0.71),
                          child: Container(
                          
                                        height: getVerticalSize(40),
                                        child: GetBuilder<SearchByMapController>(
                                          builder: (getController) {
                                            return ListView.separated(
                                              scrollDirection: Axis.horizontal,
                                              padding: getPadding(
                                               
                            left: 24,
                            right: 24
                                              ),
                                              shrinkWrap: true,
                                              itemCount:controller.categoryList.length,
                                              separatorBuilder: (context, index) => HorizontalSpace(width: 15),
                                              itemBuilder:(context, index) {
                          
                          return    InkWell(
                                  highlightColor: Colors.transparent,
                            onTap: (){
                              getController.onCategoryListItemTap(index);
                        
                            },
                            child: Container(
                                decoration:controller.selectedCategory.value==index? AppDecoration.fillprimary.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder13,
                                ):AppDecoration.txtFillGray100.copyWith(
                                  borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                  controller.selectedCategory.value==index?  Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 12,
                                        bottom: 12,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgRewind,
                                        height: getSize(
                                          16.00,
                                        ),
                                        width: getSize(
                                          16.00,
                                        ),
                                      ),
                                    ):HorizontalSpace(width: 14),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 12,
                                        right: 16,
                                        bottom: 9,
                                      ),
                                      child: Text(
                                        controller.categoryList[index],
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style:controller.selectedCategory.value==index? AppStyle.txtNotoSansJPBold12:AppStyle.txtNotoSansJPRegular12Gray902,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          );
                          
                                              },
                                             
                                            );
                                          }
                                        ),
                                      ),
                        ),
            
                        
                      
                     
                     
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              top: 10,
                            ),
                            decoration: AppDecoration.outlineGray60019.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL40,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    6.00,
                                  ),
                                  width: getHorizontalSize(
                                    32.00,
                                  ),
                                  margin: getMargin(
                                    left: 24,
                                    top: 12,
                                    right: 24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray101,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        3.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    right: 22,
                                   
                                  ),
                                  child: Obx(
                                    () => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.searchByMapModelObj
                                          .value.listblur1ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listblur1ItemModel model = controller
                                            .searchByMapModelObj
                                            .value
                                            .listblur1ItemList[index];
                                        return Listblur1ItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
