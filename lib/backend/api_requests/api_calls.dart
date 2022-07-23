import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class StatesAndCitiesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'States and Cities',
      apiUrl:
          'https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/states%2Bcities.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic states(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.country_id==101)]..name''',
      );
}
