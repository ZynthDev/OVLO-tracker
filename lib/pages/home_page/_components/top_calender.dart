import 'package:flutter/material.dart';

import '../../../utils/components/gradient_rich_text.dart';
import '../../../utils/components/infinite_date_scroll.dart';

class TopCalender extends StatelessWidget {
  const TopCalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          InfiniteDateScroll(),
        ],
      ),
    );
  }
}