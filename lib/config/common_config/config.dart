import 'package:firebase_core/firebase_core.dart';
import 'package:safe_ap/core_utils/env/env_variables.dart';

Future<void> commonAppSetup() async {
  await EnvironmentVariable.instance().init();
  // await Firebase.initializeApp(
  //    options: FirebaseOptions(
  //    apiKey: EnvironmentVariable.instance().api_key,
  //    appId: EnvironmentVariable.instance().app_id,
  //    messagingSenderId: EnvironmentVariable.instance().messaging_sender_id,
  //    projectId: EnvironmentVariable.instance().project_id));
}