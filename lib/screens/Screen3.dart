import 'package:flutter/material.dart';
class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  //color: Colors.blue,
                  child: Image.asset("assets/images/onboarding_3.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500.0,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "The number of premeds are ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "  ballooning!",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),

                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "60% of people that apply to medical school do not get in.",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 40,
                            ),

                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
