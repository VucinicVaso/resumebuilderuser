import 'package:wtoolboxweb/router/wtw_routes.dart';
import '../../view/home/home_view.dart';

class ResumeBuilderUserRoutes extends WTWRoutes {

  ResumeBuilderUserRoutes() {
    registerRoute(name: '/', view: () => HomeView());
  }

}