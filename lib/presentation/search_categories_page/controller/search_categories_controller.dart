import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/search_categories_page/models/search_categories_model.dart';
import 'package:flutter/material.dart';

class SearchCategoriesController extends GetxController {
  SearchCategoriesController(this.searchCategoriesModelObj);
var isSearching=false.obs;
var inputController = TextEditingController().obs;
  Rx<SearchCategoriesModel> searchCategoriesModelObj;
  RxList<String> categoryList =
      RxList([
        'All',
        'Events',
        'Collections',
        'Organizers',
      ]);
      var selectedCategory=0.obs;
  RxList<ExploreCategoriesModel> exploreCategoriesList=RxList([

    ExploreCategoriesModel(title: 'iPhone', img: ImageConstant.image1,
     location: 'California, CA', price: '250000.0',
      day: '30', month: 'Sep'),
    ExploreCategoriesModel(title: 'TECNO', img: ImageConstant.image2,
     location: 'New York, NY', price: '250000.0',
      day: '01', month: 'Oct'),
    ExploreCategoriesModel(title: 'Infinix Hot 10i', img: ImageConstant.image3,
     location: 'Brooklyn, NY', price: '100000.0',
      day: '10', month: 'Oct'),
  ]);

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  onFieildSubmitted(String val){
    isSearching=RxBool(true);
    update();


  }

  onCategoryListItemTap(int index){
    selectedCategory=RxInt(index);
    update();


  }

  onClearTap(){
     isSearching=RxBool(false);
     inputController.value.clear();
    update();

  }
}
