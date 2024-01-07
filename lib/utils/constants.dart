import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static final String apiKey = dotenv.env['API_KEY'] ?? '';
  static final String baseUrl = dotenv.env['BASE_URL'] ?? '';
  static final bool isMockClientActive = dotenv.env['MOCK_CLIENT'] == 'true';
  static const country = "ca";
  static const language = "en";
}
