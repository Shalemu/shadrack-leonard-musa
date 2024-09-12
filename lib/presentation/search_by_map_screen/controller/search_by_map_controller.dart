import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/search_by_map_screen/models/search_by_map_model.dart';

class SearchByMapController extends GetxController {
  Rx<SearchByMapModel> searchByMapModelObj = SearchByMapModel().obs;
  RxList<String> categoryList =
      RxList([
        'My feed',
        'Concerts',
        'Seminar',
        'Theater',
      ]);
       var selectedCategory=0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
   onCategoryListItemTap(int index){
    selectedCategory=RxInt(index);
    update();


  }
}
