import '../models/models.dart';

abstract class FetchService {
  Future<dynamic> request(RequestModel data);
}
