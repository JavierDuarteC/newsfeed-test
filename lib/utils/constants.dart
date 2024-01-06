import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static final apiKey = dotenv.env['API_KEY'] ?? '';
  static final baseUrl = dotenv.env['BASE_URL'] ?? '';
  static const country = "ca";
  static const language = "en";
}