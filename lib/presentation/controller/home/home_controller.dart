import 'package:wtoolboxweb/external/lib_getx.dart';
import 'package:wtoolboxweb/clean_architecture/controller/wtw_controller.dart';

class HomeController extends WTWController<HomeController> {

  HomeController() {
    init(arguments: Get.arguments);
    initState();
  }

  @override
  Future<void> initState() async {}

  @override
  Future<void> clearState() async {}

  @override
  Future<void> listener(Map<String, dynamic>? message) async {}

}