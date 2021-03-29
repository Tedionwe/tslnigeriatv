import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newapp/colors.dart';
import 'package:newapp/mediaquery.dart';
import 'package:newapp/model/content_model.dart';
import 'package:newapp/screen/homepage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int currentIndex = 0;
  PageController _controller;

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

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: getResponsiveHeight(70)),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        contents[i].image,
                        height: getResponsiveHeight(300),
                      ),
                      SizedBox(height: getResponsiveHeight(40)),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Quicksand-Bold',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: getResponsiveHeight(10)),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontFamily: 'Quicksand-Regular'),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 35),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Text("Previous"),
                    onPressed: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    color: brandGreen,
                    textColor: Colors.white,
                    height: getResponsiveHeight(55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(width: getResponsiveWidth(20)),
                Expanded(
                  child: SizedBox(
                    height: getResponsiveHeight(55),
                    child: OutlineButton(
                      child: Text(currentIndex == contents.length - 1
                          ? "Continue"
                          : "Next"),
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => HomePage(),
                            ),
                          );
                        }
                        _controller.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                      },
                      color: brandGreen,
                      borderSide: BorderSide(color: brandGreen),
                      textColor: brandGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getResponsiveHeight(60), child: Text('Skip'))
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: getResponsiveHeight(5),
      width: currentIndex == index
          ? getResponsiveWidth(25)
          : getResponsiveWidth(10),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: brandGreen),
    );
  }
}
