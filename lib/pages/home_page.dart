// ignore_for_file: prefer_const_constructors

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medikamente/helpers/colors_helper.dart';
import 'package:medikamente/widgets/daily_plan_widget.dart';
import 'package:medikamente/widgets/home_bottom_navigation.dart';

class HomePaage extends StatefulWidget {
  const HomePaage({super.key});

  @override
  State<HomePaage> createState() => _HomePaageState();
}

class _HomePaageState extends State<HomePaage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 22),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: TextField(
                cursorColor: ColorsHelper.primaryGreen,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.grey.shade100,
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  prefixIcon: Icon(
                    Iconsax.search_normal,
                    size: 22,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(width: 4),
                Text(
                  "Narges",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.fromLTRB(24, 10, 10, 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(103, 226, 160, 1),
                  borderRadius: BorderRadius.circular(28)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your plan for today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "1 of 4 completed",
                        style: TextStyle(
                          color: Colors.red.shade900,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "asset/symbol.png",
                    height: 150,
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Text(
              "Daily Review",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                    DailyPlanWidget(
                        planTitle: "astamiophen",
                        planDetail: "2 AM  .  After eating"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}
