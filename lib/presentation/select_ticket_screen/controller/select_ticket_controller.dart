import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/select_ticket_screen/models/select_ticket_model.dart';
import 'package:flutter/material.dart';

class SelectTicketController extends GetxController {
  TextEditingController groupSixController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  Rx<SelectTicketModel> selectTicketModelObj = SelectTicketModel().obs;
   DateTime selectedDate=DateTime.now();
   bool isPremium=true;
   int numOfPremiumTickets=1;
   int numOfRegularTickets=1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupSixController.dispose();
    groupSevenController.dispose();
  }
  onDateChanged (DateTime date){
  selectedDate=date;
  update();
}
onPriceSelect(bool premium){
  isPremium=premium;
 numOfPremiumTickets=1;
 numOfRegularTickets=1;
  update();
}

onCounterChange({required bool isIncreasing,
required bool premium}){
  if(premium&& isIncreasing){
    numOfPremiumTickets++;
    update();
  }
  else if(premium&& !isIncreasing){
    if(numOfPremiumTickets>1)
    numOfPremiumTickets--;
     update();
  }
  else if(!premium&& isIncreasing){
    numOfRegularTickets++;
    update();
  }
  else if(!premium&& !isIncreasing){
    if(numOfRegularTickets>1)
    numOfRegularTickets--;
     update();
  }

}
}
