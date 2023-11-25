import 'package:flutter/material.dart';
import 'package:medikamente/pages/home_page.dart';

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
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 410,
                  child: Image.asset('asset/top.png'),
                ),
                Text(
                  "Medicine",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 55),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Your medicine and drug",
                  style: TextStyle(
                      color: Colors.lightBlue.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  child: Image.asset('asset/welcome.png'),
                ),
                SizedBox(
                  height: 37,
                ),
                Text(
                  "We will remind you ",
                  style: TextStyle(
                      color: Colors.lightBlue.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "  to eat medicine ! 💊 ",
                  style: TextStyle(
                      color: Colors.lightBlue.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 67,
                ),

                /// get started
                InkWell(
                  onTap: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePaage(),
                      ),
                    );
                    setState(() {
                      
                    });
                  },
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Get Sterted",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: <Color>[
                            Color.fromRGBO(97, 195, 235, 1),
                            Color.fromRGBO(127, 217, 251, 50),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlue.shade300.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
