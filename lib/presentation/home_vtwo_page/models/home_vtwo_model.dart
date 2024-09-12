import '../../../core/app_export.dart';
import 'list_item_model.dart';

class HomeVtwoModel {
  RxList<ListItemModel> listItemList = RxList([
    ListItemModel(
        // title: 'iPhone',
        itemName: 'iphone 1',
        img: ImageConstant.image1,
        location: '13',
        price: '250000.0',
        day: '30',
        month: 'Sep'),
    ListItemModel(
        // title: 'TECNO',
        itemName:"TECNO 1",
        img: ImageConstant.image2,
        location: '56',
        price: '250000.0',
        day: '01',
        month: 'Oct'),
    ListItemModel(
        // title: 'Infinix Hot 10i',
        itemName:'Infinix Hot 10i 1',
        img: ImageConstant.image3,
        location: '25',
        price: '100000.0',
        day: '10',
        month: 'Oct'),
    ListItemModel(
        // title: 'NOKIA',
        itemName:"NOKIA1",
        img: ImageConstant.image4,
        location: '3',
        price: '100000.0',
        day: '10',
        month: 'Oct'),
  ]);
}
