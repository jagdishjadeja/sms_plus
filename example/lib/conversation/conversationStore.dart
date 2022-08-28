import 'package:flutter/widgets.dart';
import 'package:sms_maintained/contact.dart';
import 'package:sms_maintained/sms.dart';

class ConversationStore extends InheritedWidget {
  const ConversationStore(this.userProfile, this.thread, {required Widget child})
      : super(child: child);

  final UserProfile? userProfile;
  final SmsThread thread;

  static ConversationStore? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ConversationStore>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
