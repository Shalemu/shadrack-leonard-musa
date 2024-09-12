import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/search_filter_screen/models/search_filter_model.dart';
import 'package:flutter/material.dart';

class SearchFilterController extends GetxController {
  TextEditingController itemController = TextEditingController();

  Rx<SearchFilterModel> searchFilterModelObj = SearchFilterModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  int selectedCategory=0;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    itemController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    searchFilterModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    searchFilterModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    searchFilterModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    searchFilterModelObj.value.dropdownItemList1.refresh();
  }

  onCategorySelected(int index){
    selectedCategory=index;
    update();
  }

  DateTimeRange selectedDate =DateTimeRange(start: DateTime.now(), end: DateTime(2040)) ;
   Future<void> selectDate(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
        context: context,
        initialDateRange: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
     
        selectedDate = picked;
        update();
    
    }
  }
}
