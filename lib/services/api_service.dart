// 참고 : https://pub.dev/packages/http
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  // asynchronous function에서 awaite 키워드와 Future 타입을 사용한다.
  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // Dart와 Flutter에서 사용할 수 있는 형식으로 변환해야 한다.
      // String -> Json -> dynamic -> WebtoonModel 초기화.
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(toon);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
