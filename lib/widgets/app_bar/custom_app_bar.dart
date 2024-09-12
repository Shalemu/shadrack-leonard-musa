import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../presentation/select_language_screen/controller/select_language_controller.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;
  
   var controller=  Get.put(SelectLanguageController());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading:controller.locale==Locale('ar')? RotatedBox(
        quarterTurns: 2,
        child: leading):leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillWhiteA700:
        return Container(
         
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillWhiteA700,
}
