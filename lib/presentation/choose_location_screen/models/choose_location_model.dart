import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'listtitle_two_item_model.dart';

class ChooseLocationModel {
  // RxList<ListtitleTwoItemModel> listtitleTwoItemList =
  //     RxList.filled(popularLocationsList.length, ListtitleTwoItemModel());
  RxList<ListtitleTwoItemModel> popularLocationsList =
    RxList<ListtitleTwoItemModel>([
        ListtitleTwoItemModel(title: 'California', subtitle: 'Los Angeles, United States',
        pinColor: Colors.black
        ),
        ListtitleTwoItemModel(title: 'San Francisco', subtitle: 'San Francisco, United States',
        pinColor: ColorConstant.indigoA100
        ),
        ListtitleTwoItemModel(title: 'New York', subtitle: 'New York, United States',
        pinColor: Color(0xFF1F8496)
        ),

      ]);
    }
