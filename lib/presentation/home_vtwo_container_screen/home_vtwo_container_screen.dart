import 'package:mauzoApp/presentation/search_categories_page/search_categories_page1.dart';

import 'controller/home_vtwo_container_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
// import 'package:mauzoApp/presentation/favorites_page/favorites_page.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/home_vtwo_page.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/cart.dart';
import 'package:mauzoApp/presentation/list_ticket_past_ticket_tab_container_page/list_ticket_past_ticket_tab_container_page.dart';
import 'package:mauzoApp/presentation/my_profile_page/my_profile_page.dart';
import 'package:mauzoApp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeVtwoContainerScreen extends GetWidget<HomeVtwoContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(() => getCurrentWidget(controller.type.value)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return HomeVtwoPage(itemName: '',);
      case BottomBarEnum.Explore:
        return SearchCategoriesPage1();
      case BottomBarEnum.cart:
        return CartPage();
      case BottomBarEnum.Ticket:
        return ListTicketPastTicketTabContainerPage();
      case BottomBarEnum.Profile:
        return MyProfilePage();
      default:
        return getDefaultWidget(); 
    }
  }
}
