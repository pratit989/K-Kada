import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CountriesAndStatesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Countries and States',
      apiUrl:
          'https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/countries%2Bstates%2Bcities.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic states(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.name=="India")].states..name''',
      );
  static dynamic cities(dynamic response) => getJsonField(
        response,
        r'''$..[?(@.name=="India")].states..cities..name''',
      );
}
