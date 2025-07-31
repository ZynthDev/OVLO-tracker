import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final dio = Dio();

Future<String> getChatResponse(String text) async {
  final apiKey = dotenv.env['OPENROUTER_API_KEY'];
  final url = 'https://openrouter.ai/api/v1/chat/completions';

  try {
    final response = await dio.post(
      url,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
          // 'HTTP-Referer': 'https://your-site.com', // Optional
          // 'X-Title': 'My Flutter App', // Optional
        },
      ),
      data: {
        "model": "microsoft/phi-4-multimodal-instruct",
        "messages": [
          {
            "role": "user",
            "content": [
              {
                "type": "text",
                "text": text
              },
            ]
          }
        ]
      },
    );

    final content = response.data['choices'][0]['message']['content'];
    return content.trim();
  } on DioException catch (e) {
    print('Dio error: ${e.response?.data ?? e.message}');
    return "Failed to get response.";
  }
}
