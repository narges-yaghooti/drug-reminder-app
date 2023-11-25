import 'package:flutter/material.dart';
import 'package:medikamente/helpers/colors_helper.dart';
import 'package:medikamente/pages/home_page.dart';
import 'package:medikamente/pages/main_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        
        backgroundColor: ColorsHelper.primaryGreen,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Medicine",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 55),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Your medicine and drug",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                
                  child: Container(
                    height: 300,
                    child: Image.asset('asset/intro.png'),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Text(
                  "We will remind you ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "  to eat medicine ! 💊 ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Spacer(),

                /// get started
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Get Sterted",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11),

                      ),
                    ),
                  ),

                ),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
