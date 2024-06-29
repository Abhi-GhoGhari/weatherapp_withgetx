import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:weatherapp_withgetx/helper/app_helper/app_helper.dart';

import '../../modal/app_citymodal.dart';

class AppController extends GetxController {
  AppController() {
    initData();
  }

  RxList<Weather> allData = <Weather>[].obs;
  Future<void> initData() async {
    // allData(await ApiHelper.apiHelper.getaApi());
  }
}
