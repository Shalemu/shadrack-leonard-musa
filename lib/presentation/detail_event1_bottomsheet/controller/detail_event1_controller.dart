import 'package:mauzoApp/core/app_export.dart';import 'package:mauzoApp/presentation/detail_event1_bottomsheet/models/detail_event1_model.dart';class DetailEvent1Controller extends GetxController {Rx<DetailEvent1Model> detailEvent1ModelObj = DetailEvent1Model().obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
