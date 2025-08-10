import 'package:wtoolboxweb/message_broker/wtw_message_broker.dart';

class ResumeBuilderUserMessageBroker extends WTWMessageBroker {

  @override
  void notify(Map<String, dynamic>? message) {}
  
  @override
  Future<void> sendPending() async {}
  
}