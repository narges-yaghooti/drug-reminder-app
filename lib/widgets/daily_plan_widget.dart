import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DailyPlanWidget extends StatefulWidget {
  String planTitle;
  String planDetail;
  DailyPlanWidget({
    super.key,
    required this.planTitle,
    required this.planDetail,
  });

  @override
  State<DailyPlanWidget> createState() => _DailyPlanWidgetState();
}

class _DailyPlanWidgetState extends State<DailyPlanWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(28),
      ),
      padding: EdgeInsets.all(22),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Icon(Iconsax.bubble, size: 28),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.planTitle,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                widget.planDetail,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Iconsax.arrow_right_3,
            size: 16,
          )
        ],
      ),
    );
  }
}
