import 'package:get/get.dart';
import 'listimg_item_model.dart';
import 'listblur_one_item_model.dart';
class FavoritesModel {
  RxList<ListimgItemModel> listimgItemList = RxList();
  RxList<ListblurOneItemModel> listblurOneItemList = RxList();

  List<ListimgItemModel> get listItemList => listimgItemList;
}