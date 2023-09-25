import 'package:get/get.dart';
import 'package:luas_bangun_datar/controllers/LuasController.dart';

class LuasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LuasController());
  }
}