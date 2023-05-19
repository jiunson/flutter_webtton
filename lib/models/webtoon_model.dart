class WebtoonModel {
  final String title, thumb, id;

  // Named Constructors 설정
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
