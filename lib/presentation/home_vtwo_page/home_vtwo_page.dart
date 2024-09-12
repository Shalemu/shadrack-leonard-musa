// ignore_for_file: must_be_immutable

import 'package:animate_do/animate_do.dart';
// import 'package:mauzoApp/cart.dart';
import 'package:mauzoApp/presentation/favorites_page/controller/favorites_controller.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/view_cart.dart';
// import 'package:mauzoApp/presentation/search_categories_page/search_categories_page.dart';
import 'package:mauzoApp/widgets/spacing.dart';
import '../home_vtwo_page/widgets/list_item_widget.dart';
import 'controller/home_vtwo_controller.dart';
import 'models/home_vtwo_model.dart';
import 'models/list_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
// import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';



class HomeVtwoPage extends StatelessWidget {
  final HomeVtwoController controller =
      Get.put(HomeVtwoController(HomeVtwoModel().obs));
     final FavoritesController favoritesController = Get.find<FavoritesController>();
  final String  itemName; // Define itemName as a field
 

  HomeVtwoPage({Key? key, required this. itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeVtwoController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
       backgroundColor: Colors.white,
      toolbarHeight: getVerticalSize(66.00),
        title: Padding(
          padding: getPadding(
            left: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    right: 40,
                  ),
                  // child: Text(
                  //   "msg_find_events_near".tr,
                  //   overflow: TextOverflow.ellipsis,
                  //   textAlign: TextAlign.start,
                  //   style: AppStyle.txtNotoSansJPRegular12,
                  // ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                      // bottom: 5,
                      ),
                  // Assuming you have an image stored in your assets folder
                  child: Image.asset(
                    'assets/images/mauzo360.png', // Path to your image in the assets folder
                    width: 80.0, // Adjust the size as necessary
                    height: 30.0,
                    // fit: BoxFit.cover,  // Optional, controls how the image is fitted in the space
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              left: 24,
              top: 5,
              right: 24,
              bottom: 6,
            ),
            color: ColorConstant.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder13,
            ),
            child: Container(
              height: getSize(
                44.00,
              ),
              width: getSize(
                44.00,
              ),
              decoration: AppDecoration.fillGray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        all: 10,
                      ),
child: Container(
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.orange[400]!.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 2,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: Transform.translate(
    offset: Offset(-7, -7),
    child: Obx(() {
      int totalItems = controller.getTotalCartItems(); // Get the total number of items in the cart
      return Stack(
        children: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 20.0,
              color: Colors.black54,
            ),
            onPressed: () async {
              // Add a delay before navigating
              await Future.delayed(Duration(milliseconds: 20)); // Adjust the delay if needed
              controller.goToCartPage(); // Navigate to CartPage
            },
          ),
          if (totalItems > 0) // Show the badge only if there are items in the cart
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$totalItems', // Display the total number of items in the cart
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
        ],
      );
    }),
  ),
)

                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getSize(
                        8.00,
                      ),
                      width: getSize(
                        8.00,
                      ),
                      margin: getMargin(
                        left: 10,
                        top: 11,
                        bottom: 25,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.redA200,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                        border: Border.all(
                          color: ColorConstant.whiteA700,
                          width: getHorizontalSize(
                            1.50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: getPadding(
            top: 19,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomSearchView(
                width: size.width,
                focusNode: FocusNode(),
                controller: controller.searchController,
                hintText: "lbl_search".tr,
                margin: getMargin(
                  right: 24,
                  left: 24,
                ),
                prefix: Container(
                  margin: getMargin(
                    left: 16,
                    top: 18,
                    right: 10,
                    bottom: 18,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  minWidth: getSize(
                    20.00,
                  ),
                  minHeight: getSize(
                    20.00,
                  ),
                ),
              ),
              VerticalSpace(height: 16),
           Padding(
                padding: getPadding(top: 26, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "lbl_upcoming_events".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtNotoSansJPBold16,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 2,
                      ),
                   child: GestureDetector(
   onTap: () {
        // Navigate to the ViewCartPage
        Get.to(() => ViewCartPage());
      },
  child: Text(
    "lbl_see_all".tr,
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.start,
    style: AppStyle.txtNotoSansJPMedium14Bluegray301,
  ),
)

                    ),
                  ],
                ),
              ),

              VerticalSpace(height: 13),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    320.00,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(left: 24, right: 24),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount:
                          controller.homeVtwoModelObj.value.listItemList.length,
                      separatorBuilder: (context, index) =>
                          HorizontalSpace(width: 16),
                      itemBuilder: (context, index) {
                        ListItemModel model = controller
                            .homeVtwoModelObj.value.listItemList[index];
                        return FadeInLeft(
                          child: ListItemWidget(
                            model,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 20, left: 24, right: 24),
                child: Text(
                  "STOCK LIST".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtNotoSansJPBold16,
                ),
              ),

              VerticalSpace(height: 13),
              ListView.separated(
                padding: getPadding(right: 24, left: 24, bottom: 10),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) => VerticalSpace(height: 10),
                itemCount:
                    controller.homeVtwoModelObj.value.listItemList.length,
                itemBuilder: (context, index) {
                  ListItemModel model =
                      controller.homeVtwoModelObj.value.listItemList[index];

                  return InkWell(
                    highlightColor: Colors.transparent,
                    onTap: () {
                      // Get.toNamed(AppRoutes.detailEventScreen);
                    },
                    child: Container(
                      height: getVerticalSize(130),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.gray90019,
                            spreadRadius: getHorizontalSize(0.00),
                            blurRadius: getHorizontalSize(10.00),
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: getVerticalSize(96.00),
                                width: getHorizontalSize(88.00),
                                margin:
                                    getMargin(left: 12, top: 12, bottom: 12),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(12.00)),
                                        child: CommonImageView(
                                          imagePath: model.img,
                                          height: getVerticalSize(96.00),
                                          width: getHorizontalSize(88.00),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: getMargin(
                                            left: 8,
                                            top: 8,
                                            right: 10,
                                            bottom: 10),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder13,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                  left: 8, top: 2, right: 8),
                                              child: Text(
                                                model.day,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtNotoSansJPBold12Gray902,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                  left: 8, right: 8, bottom: 1),
                                              child: Text(
                                                model.month,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtNotoSansJPMedium8,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                    left: 12, top: 20, right: 12, bottom: 15),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(203.00),
                                      child: Text(
                                        model. itemName,
                                        maxLines: null,
                                        textAlign: TextAlign.start,
                                        style: AppStyle.txtNotoSansJPBold14,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(203.00),
                                      margin: getMargin(top: 19),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                getPadding(top: 7, bottom: 6),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation16x16,
                                                    height: getSize(16.00),
                                                    width: getSize(16.00),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(left: 4),
                                                  child: Text(
                                                    model.location,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPMedium12Bluegray301,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: AppDecoration
                                                .fillGray102
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 7,
                                                      right: 17,
                                                      bottom: 6),
                                                  child: Text(
                                                    model.price,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPMedium14Gray902,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
 Stack(
  children: [
    // Positioned widget for "Add to Cart" button
Positioned(
  top: 80, // Adjust this value based on your design needs
  left: 90, // Adjust this value based on your design needs
  right: 100, // Adjust this value based on your design needs
  child: Obx(() {
    int quantity = controller.getQuantity(model. itemName);
    return quantity > 0
        ? Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
                print('Add to cart button pressed');
                controller.addToCart(model. itemName, model.img, double.parse(model.price)); // Ensure model.price is a double
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40), // Make the button full-width with a height of 40
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Colors.white70,
              ),
              child: Text(
                'Add to cart',
                style: TextStyle(fontSize: 12),
              ),
            ),
          )
        : SizedBox();
  }),
),



    // Positioned widget for quantity adjustment buttons
    Positioned(
      bottom: 70, // Adjust this as needed
      left: 10,
      right: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Align children to the end of the Row
        children: [
          // Quantity Adjustment Buttons (aligned to the right)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Remove Button
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.remove, size: 16),
                  color: Colors.black54,
                  onPressed: () {
                    controller.decrementQuantity(model. itemName); // Decrease quantity for the specific item
                  },
                ),
              ),
              SizedBox(width: 10), // Spacing between the buttons and quantity text

              // Quantity Text
              Obx(() => Text(
                    '${controller.getQuantity(model. itemName)}', // Display quantity for the specific item
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(width: 10), // Spacing between the quantity text and add button

              // Add Button
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.add, size: 16),
                  color: Colors.black54,
                  onPressed: () {
                    controller.incrementQuantity(model. itemName); // Increase quantity for the specific item
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ],
)

                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
