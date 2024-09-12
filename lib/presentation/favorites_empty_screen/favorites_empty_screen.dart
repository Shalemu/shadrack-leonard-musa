import 'controller/favorites_empty_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/favorites_page/favorites_page.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/home_vtwo_page.dart';
import 'package:mauzoApp/presentation/list_ticket_past_ticket_tab_container_page/list_ticket_past_ticket_tab_container_page.dart';
import 'package:mauzoApp/presentation/my_profile_page/my_profile_page.dart';
import 'package:mauzoApp/presentation/search_categories_page/search_categories_page.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_bottom_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FavoritesEmptyScreen extends GetWidget<FavoritesEmptyController> {@override Widget build(BuildContext context) { return SafeArea(
      top: false,child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 56, leading: AppbarImage(height: getSize(32.00), width: getSize(32.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 12, bottom: 12), onTap: onTapArrowleft13), centerTitle: true, title: AppbarSubtitle(text: "lbl_favorites".tr)), body: Padding(padding: getPadding(left: 59, top: 88, right: 58), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 18, right: 18), child: CommonImageView(svgPath: ImageConstant.imgIllustration136x218, height: getVerticalSize(136.00), width: getHorizontalSize(218.00))), Padding(padding: getPadding(left: 18, top: 48, right: 18), child: Text("msg_no_favorites_found".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start, style: AppStyle.txtNotoSansJPBold24)), Container(width: getHorizontalSize(257.00), margin: getMargin(top: 13), child: Text("msg_like_an_event_to".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtNotoSansJPRegular14)), CustomButton(width: 180, text: "lbl_find_events".tr, margin: getMargin(left: 18, top: 43, right: 18), shape: ButtonShape.RoundedBorder16)])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {controller.type.value = type;}))); } 
Widget getCurrentWidget(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return HomeVtwoPage(itemName: '',); case BottomBarEnum.Explore: return SearchCategoriesPage(); case BottomBarEnum.Favorites: return FavoritesPage(); case BottomBarEnum.Ticket: return ListTicketPastTicketTabContainerPage(); case BottomBarEnum.Profile: return MyProfilePage(); default: return getDefaultWidget();} } 
onTapArrowleft13() { Get.back(); } 
 }
