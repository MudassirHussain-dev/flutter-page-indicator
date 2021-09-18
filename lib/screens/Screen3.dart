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
                              "We can help get you there",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Our materials were built by individuals that scored in the 99th percentile or above We can help you reach you goal of getting into medical school.",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "It is never too late to begin studying!",
                              style: TextStyle(fontSize: 20),
                            )
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
