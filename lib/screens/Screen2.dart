import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  //color: Colors.blue,
                  child: Image.asset("assets/images/onboarding_2.png"),
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
                              "The MCAT is the greate equalizer.",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "You are three times likelier to get into medical school if you score above a 510 on the MCAT.",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "It is the only metric on you medical school application that is standardized",
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
