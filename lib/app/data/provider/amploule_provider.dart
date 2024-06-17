import 'package:http/http.dart' as http;

class AmpouleProvider {
  String authToken = 'Gop71__eDlFalfooK73QC79-iWRS-wxF';
  String baseUrl = 'https://blynk.cloud/external/api';

  Future<void> updateAmpouleState(bool state, int dataStreamId) async {
    String operation = '';
    // String pin = '2';
    String value = (state == false) ? '1' : '0';
    operation = 'update';
    try {
      final response = await http
          .get(Uri.parse('$baseUrl/$operation?token=$authToken&dataStreamId=$dataStreamId&value=$value'));
          
      if (response.statusCode == 200) {
        print(response.body);
      } else {
        print(response.body);
      }
    } catch (e) {
      print(e);
    }
  }





}
