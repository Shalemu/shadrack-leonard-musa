import 'package:mauzoApp/core/app_export.dart';import 'package:mauzoApp/presentation/favorites_empty_screen/models/favorites_empty_model.dart';import 'package:mauzoApp/widgets/custom_bottom_bar.dart';class FavoritesEmptyController extends GetxController {Rx<FavoritesEmptyModel> favoritesEmptyModelObj = FavoritesEmptyModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
