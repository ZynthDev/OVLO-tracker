import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class ConversionMicroserviceController {
  final Dio _dio = Dio();
  final jsonData = {
    "user_id": "152735823478624",
    "date": "27/06/2025",
    "logged_cycles": 2,
    "most_common_symptom": "Cramps",
    "most_frequent_mood": "Calm",
    "longest_cycle": "",
    "shortest_cycle": "",
    "cycle_history": [
      {
        "cycle_number": 3,
        "start_date": "2025-07-19",
        "end_date": "2025-07-22",
        "duration": 4,
        "flow_intensity": "Medium"
      },
      {
        "cycle_number": 4,
        "start_date": "2025-07-26",
        "end_date": "2025-07-29",
        "duration": 4,
        "flow_intensity": "Heavy"
      }
    ],
    "symptom_logs": [
      {
        "date": "Jul 20, 2025",
        "symptoms": "🔄 Cramps, 🎈 Bloating"
      },
      {
        "date": "Jul 19, 2025",
        "symptoms": "🎈 Bloating, 🔄 Cramps"
      }
    ],
    "mood_logs": [
      {"date": "Jul 22, 2025", "mood": "😌 Calm"},
      {"date": "Jul 21, 2025", "mood": "😔 Sad"},
      {"date": "Jul 20, 2025", "mood": "😫 Tired"},
      {"date": "Jul 19, 2025", "mood": "😡 Angry"}
    ],
    "most_common_symptoms": [
      {"symptom": "Cramps", "count": 2, "label": "2 times"},
      {"symptom": "Bloating", "count": 2, "label": "2 times"}
    ],
    "mood_distribution": [
      {"mood": "Calm", "emoji": "😌", "percent": "25%"},
      {"mood": "Sad", "emoji": "😔", "percent": "25%"},
      {"mood": "Tired", "emoji": "😫", "percent": "25%"},
      {"mood": "Angry", "emoji": "😡", "percent": "25%"}
    ]
  };

  Future<void> downloadPdf() async {
    try {
      final response = await _dio.post(
        'https://zynthdev321-ovlo-pdf-service.hf.space/pdf/generate-from-json',
        data: jsonData,
        options: Options(
          headers: {'Content-Type': 'application/json'},
          responseType: ResponseType.bytes,
        ),
      );

      final filePath = await _generateOvloReportFilePath();
      final file = File(filePath);
      await file.writeAsBytes(response.data);

      // ✅ Open the PDF file after saving
      await OpenFile.open(filePath);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> downloadCsvZip() async {
    try {
      final response = await _dio.post(
        'https://zynthdev321-ovlo-pdf-service.hf.space/csv/generate',
        data: jsonData,
        options: Options(
          headers: {'Content-Type': 'application/json'},
          responseType: ResponseType.bytes,
        ),
      );

      final filePath = await _generateOvloReportFilePath(extension: 'zip');
      final file = File(filePath);
      await file.writeAsBytes(response.data);

      // ✅ Open the file after saving
      await OpenFile.open(filePath);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> downloadJson() async {
    try {
      final now = DateTime.now();
      final formattedDate = '${now.day.toString().padLeft(2, '0')}${now.month.toString().padLeft(2, '0')}${now.year}';
      final formattedTime = '${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}${now.second.toString().padLeft(2, '0')}';
      final fileName = 'OVLO-data-$formattedDate-$formattedTime.json';

      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';

      final file = File(filePath);
      final jsonString = const JsonEncoder.withIndent('  ').convert(jsonData);
      await file.writeAsString(jsonString);

      await OpenFile.open(filePath);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> _generateOvloReportFilePath({String extension = 'pdf'}) async {
    final now = DateTime.now();
    final formattedDate = '${now.day.toString().padLeft(2, '0')}${now.month.toString().padLeft(2, '0')}${now.year}';
    final formattedTime = '${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}${now.second.toString().padLeft(2, '0')}';
    final fileName = 'OVLO-report-$formattedDate-$formattedTime.$extension';

    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/$fileName';
  }
}


