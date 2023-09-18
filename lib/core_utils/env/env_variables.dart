import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:safe_ap/core_utils/config/flavor_config.dart';



class EnvironmentVariable {
  static EnvironmentVariable _INSTANCE = EnvironmentVariable._();

  EnvironmentVariable._();

  factory EnvironmentVariable.instance() {
    return _INSTANCE;
  }


  String _api_key = "";
  String _api_url_prod = "";
  String _api_url_stage = '';
  String _api_url_dev = '';
  String _messaging_sender_id = '';
  String _project_id = '';
  String _app_id = '';

  Future<void> init() async {
    switch (FlavorConfig.instance.flavor) {
      case Flavor.practitioner:
        await dotenv.load(fileName:'.env.practitioner');
        break;
      case Flavor.patient:
        await dotenv.load(fileName:'.env.patient');
        break;
      case Flavor.web_app:
        await dotenv.load(fileName:'.env.webapp');
        break;
    }



    _api_key = dotenv.get('API_KEY', fallback: '');
    _api_url_prod = dotenv.get('API_URL_PROD', fallback: '');
    _api_url_stage = dotenv.get('API_URL_STAGE', fallback: '');
    _api_url_dev = dotenv.get('API_URL_DEV', fallback: '');
    _messaging_sender_id = dotenv.get('MESSAGING_SENDER_ID', fallback: '');
    _project_id = dotenv.get('PROJECT_ID', fallback: '');
    _app_id =  dotenv.get( 'APP_ID', fallback: '');

  }

  String get api_key => _api_key;

  String get api_url_prod => _api_url_prod;

  String get api_url_stage => _api_url_stage;
  String get api_url_dev => _api_url_dev;
  String get messaging_sender_id => _messaging_sender_id;
  String get project_id => _project_id;
  String get app_id => _app_id;
}
