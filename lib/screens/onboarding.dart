import 'package:flutter/material.dart';
import 'package:onboarding_screen_test/models/onboarding_model.dart';
import 'package:onboarding_screen_test/widgets/onboarding_text_field.dart';
import 'package:onboarding_screen_test/widgets/rounded_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // void getChangedPageAndMoveBar(int page) {
  //   currentPageValue = page;
  //   setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff123BAF), Color(0xff0B1222)])),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        itemCount: contents.length,
                        controller: _controller,
                        onPageChanged: (int index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (_, i) {
                          return Padding(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RoundedButton(
                                    text: 'skip',
                                    height: 29,
                                    width: 72,
                                    color: Colors.blue,
                                    radius: 32,
                                    tColor: Colors.white,
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                OnBoardingScreen()),
                                      );
                                    }),
                                Center(
                                  child: Image.asset(
                                    contents[i].image,
                                    height: 300,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: OnBoardingText(
                                    color: Colors.white,
                                    fSize: 18,
                                    title: contents[i].title,
                                  ),
                                ),
                                // SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: OnBoardingText(
                                    color: Colors.white,
                                    fSize: 14,
                                    title: contents[i].description,
                                  ),
                                ),
                                // SizedBox(height: 76),
                                Padding(
                                  padding: const EdgeInsets.only(top: 76),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(children: [
                                        for (var i in List.generate(
                                            4, (index) => index))
                                          Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: CircleAvatar(
                                              radius: 1,
                                              backgroundColor: currentIndex >= i
                                                  ? Colors.green
                                                  : Colors.grey,
                                            ),
                                          ),
                                      ]),

                                      // SmoothPageIndicator(
                                      //   count: 3,
                                      //   controller: _controller,
                                      //   effect: const SlideEffect(
                                      //
                                      //       // spacing:  8.0,
                                      //       // radius:  1.0,
                                      //       dotWidth: 6.0,
                                      //       dotHeight: 6.0,
                                      //       // paintStyle:  PaintingStyle.stroke,
                                      //       // strokeWidth:  1.5,
                                      //       dotColor: Colors.green,
                                      //       activeDotColor: Colors.grey),
                                      // ),
                                      // Stack(
                                      //   alignment: AlignmentDirectional.topStart,
                                      //   children: <Widget>[
                                      //     Container(
                                      //       margin: EdgeInsets.only(bottom: 35),
                                      //       child: Row(
                                      //         mainAxisSize: MainAxisSize.min,
                                      //         mainAxisAlignment: MainAxisAlignment.center,
                                      //         children: <Widget>[
                                      //           for (int i = 0; i < introWidgetsList.length; i++)
                                      //             if (i == currentPageValue) ...[circleBar(true)] else
                                      //               circleBar(false),
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      RoundedButton(
                                        text: contents[i].buttonText,
                                        height: 50,
                                        width: 120,
                                        color: Colors.green,
                                        radius: 82,
                                        tColor: Colors.white,
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          OnBoardingScreen()));
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
