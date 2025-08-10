import 'package:flutter/material.dart';
import 'package:wtoolboxweb/external/lib_getx.dart';
import 'package:wtoolboxweb/clean_architecture/view/wtw_view.dart';
import 'package:wtoolboxweb/ui_factory/component/wtw_ui_component.dart';
import 'package:wtoolboxweb/ui_factory/type/impl/wtw_ui_component_type.dart';
import '../../controller/home/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends WTWView<HomeController> {

  HomeView({ super.key }) {
    setController(HomeController());
  }

  WTWUIComponent? createScaffold(HomeController? con) {
    var header = uiFactory!.createHeader(WTWUIHeaderType.basic1)!;

    var body = uiFactory!.createBody(WTWUIBodyType.basic1)!;

    var scaffold = uiFactory!.createScaffold(WTWUIScaffoldType.basic1)!
      ..setHeader(header)
      ..setBody(body);
    return scaffold;
  }

  @override
  Widget build(BuildContext context) {
    return createScaffold(controller)!.build()!;
  }

}