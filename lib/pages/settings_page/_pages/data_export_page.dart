import 'package:flutter/material.dart';

import '../../../utils/components/mixins/full_page_loader_mixin.dart';
import '../../../controllers/microservices/conversion_microservice_controller.dart';
import '../_components/export_button.dart';
import '../_components/summary_data.dart';

class DataExportPage extends StatelessWidget with FullPageLoaderMixin {
  DataExportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.chevron_left, size: 27,)
                    ),
                    SizedBox(width: 15,),
                    Text("Data Export", style: TextStyle(
                      fontSize: 16
                    )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      child: Text("Download your health data", textAlign: TextAlign.center,)
                    ),

                    SizedBox(height: 55,),
                    Text("Export Format", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 20,),
                    ExportButton(
                      color: Colors.red,
                      icon: Icon(Icons.file_download_outlined, color: Colors.white,),
                      text: "Export as PDF Report",
                      onTap: () async {
                        await ConversionMicroserviceController().downloadPdf();
                      },
                    ),
                    SizedBox(height: 10,),
                    ExportButton(
                      color: Colors.green,
                      icon: Icon(Icons.file_download_outlined, color: Colors.white,),
                      text: "Export as CSV Data",
                      onTap: () async {
                        await ConversionMicroserviceController().downloadCsvZip();
                      },
                    ),
                    SizedBox(height: 10,),
                    ExportButton(
                      color: Colors.blue,
                      icon: Icon(Icons.file_download_outlined, color: Colors.white,),
                      text: "Export as JSON",
                      onTap: () async {
                        await ConversionMicroserviceController().downloadJson();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your Data Summary", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SummaryData(
                          title: "24",
                          subtitle: "Cycles Tracked",
                          color: Colors.red,
                        ),
                        SummaryData(
                          title: "156",
                          subtitle: "Days of Data",
                          color: Colors.deepPurple,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
