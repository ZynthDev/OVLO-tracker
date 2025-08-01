import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../sessions/dates_session.dart';
import '../../../utils/constants.dart';
import '../../../utils/extensions/color.dart';
import '../../../models/journal_entry.dart';
import '../../../repositories/journal_repository.dart';


class EnterEntryCard extends StatefulWidget {
  const EnterEntryCard({
    super.key,
  });

  @override
  State<EnterEntryCard> createState() => _EnterEntryCardState();
}

class _EnterEntryCardState extends State<EnterEntryCard> {
  String? selectedMood;
  String? selectedEmoji;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: DatesSession().selectedDateNotifier,
      builder: (context, selectedDate, child) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 13.0),
          decoration: BoxDecoration(
            color: HexColor.fromHex(AppConstants.primaryWhite),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(60, 0, 0, 0),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black.withValues(alpha: 0.27))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(DateFormat('MMMM dd, yyyy').format(selectedDate), style: TextStyle(
                  fontSize: 22,
                  color: Colors.black.withValues(alpha: 0.7),
                  fontWeight: FontWeight.w600
                ),),
              ),
              TextField(
                maxLines: 9,
                cursorColor: Colors.black,
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Write how you’re feeling today... Share your thoughts, symptoms, mood, or anything on your mind. This is your safe space. 🌸",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent,)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent, width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent, width: 1)
                  ),
                  hintStyle: TextStyle(
                      color: Colors.black.withValues(alpha: 0.7),
                      fontSize: 14
                  ),
                  contentPadding: EdgeInsets.only(left: 10, top: 20, right: 10),
                ),
                style: TextStyle(
                  color: Colors.black
                ),
                onChanged: (value) {
                  setState(() {});
                  if (value.isEmpty || value == "") {
                    return;
                  }
                },
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${textEditingController.text.trim().length} characters", style: TextStyle(
                    color: HexColor.fromHex("#7A38B1").withValues(alpha: 0.8),
                    fontSize: 12
                  ),),
                  InkWell(
                    onTap: () {
                      if (textEditingController.text.isEmpty || textEditingController.text == "") {
                        return;
                      }

                      JournalEntry entry = JournalEntry(
                        normalizeDate(selectedDate).toString(),
                        textEditingController.text,
                        "1"
                      );

                      JournalRepository().addJournalEntry(entry);

                      textEditingController.text = "";

                      DatesSession().setReset(true);

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            HexColor.fromHex("#6B21A8"),
                            HexColor.fromHex("#2A0D42").withValues(alpha: 0.7),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}