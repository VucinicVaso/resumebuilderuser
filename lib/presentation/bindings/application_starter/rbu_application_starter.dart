import 'package:wtoolboxweb/application_starter/wtw_application_starter.dart';
import '../message_broker/rbu_message_broker.dart';
import '../translation/rbu_translations.dart';
import '../routes/rbu_routes.dart';

class ResumeBuilderUserApplicationStarter extends WTWApplicationStarter {

  @override
  Future<void> register() async {
    setTitle('ResumeBuilderUser');
    setSettings({});
    subscribeMessageBroker(ResumeBuilderUserMessageBroker());
    registerTranslations(ResumeBuilderUserTranslations());
    registerRoutes(ResumeBuilderUserRoutes());
  }

  @override
  Future<void> unregister() async {
    unregisterTranslations();
    unregisterRoutes();
    unsubscribeMessageBroker();
  }

}