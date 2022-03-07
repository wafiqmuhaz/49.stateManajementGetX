import 'package:get/get.dart';

class Hcon extends GetxController {

  /*VARIABEL INI BIAR BISA SELALU DIPANTAU SETIAP ADA PERUBABHAN */
  // var dataPantau = 0.obs; // UNTUK YANG REACTIVE
  int dataPantau = 0; // UNTUK YANG SIMPLE

  void tambahData(){
    dataPantau = dataPantau + 1;
  }

  void refDis(){
    update();
  }

}