import 'package:flutter/material.dart';

import '../widgets/onboarding_text_field.dart';
import '../widgets/rounded_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body : SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-10.0, 0.0),
                          end: Alignment(97.0, 0.0),
                          colors: [Color(0xff123BAF), Color(0xff0B1222)])),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/ob4.png',
                            height: 300,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: OnBoardingText(
                            color: Colors.white,
                            fSize: 18,
                            title:
                                'Liquidate instantly or keep building your portfolio is totally up to you',
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: OnBoardingText(
                            color: Colors.white,
                            fSize: 14,
                            title:
                                'A secure and easy medium through which you can trade your tokens',
                          ),
                        ),
                        SizedBox(height: 70 ,),
                         RoundedButton(
                          text: 'Create A New Account',
                          height: 55,
                          width: 335,
                          color: Colors.blue,
                          radius: 4,
                          tColor: Colors.white, onPressed: () {  },
                        ),
                        SizedBox(height: 15,),
                        RoundedButton(
                          text: 'Log In',
                          height: 55,
                          width: 335,
                          color: Colors.white,
                          radius: 4,
                          tColor: Colors.blue, onPressed: () {  },
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
