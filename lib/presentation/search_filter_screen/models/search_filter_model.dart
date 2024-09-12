import 'package:mauzoApp/core/app_export.dart';
import 'listeye_item_model.dart';

class SearchFilterModel {
  RxList<ListeyeItemModel> listeyeItemList =
      RxList(
        [
          ListeyeItemModel(img: ImageConstant.filter1,
           title: "lbl_any_category".tr, ),
          ListeyeItemModel(img: ImageConstant.filter2,
           title: "lbl_arts".tr, ),
          ListeyeItemModel(img: ImageConstant.filter3,
           title: "msg_career_business".tr,),
          ListeyeItemModel(img: ImageConstant.filter4,
           title: "msg_health_wellness".tr,),
        ]
      );

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Any price",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(
      id: 1,
      title: "Any type",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;
}
