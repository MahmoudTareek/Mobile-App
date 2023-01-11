import 'package:flutter/material.dart';
import 'package:project/auth.dart';
import 'components.dart';
import 'on_boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget
{

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  var boardController = PageController();

  bool isLast = false;
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        actions:
        [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  print("Home Page");
                },
                 child: Text(
                 
                  "SKIP",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children:
          [
            Expanded(
              child: PageView.builder(
                controller: boardController,
                physics: BouncingScrollPhysics(),
                onPageChanged: (int index)
                {
                  if(index == boarding.length - 1)
                    {
                      setState(() {
                        isLast = true;
                      });
                    }
                  else
                    setState(() {
                      isLast = false;
                    });
                },
                itemBuilder: (context, index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children:
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: boardController,
                      effect: ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: maincolor,
                        dotHeight: 10,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5.0,
                      ),
                      count: boarding.length,
                    ),
                  ],
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: maincolor,
                    onPressed: ()
                    {
                      if(isLast)
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Auth()),
                          );
                    }
                      else {
                        boardController.nextPage(
                          duration: Duration(
                            microseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
    [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
          ),
          child: Image(
            image: AssetImage(
              '${model.image}',
              ),
              width: 240.0,
          ),
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
      Center(
        child: Text(
          '${model.title}',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),      
      SizedBox(
        height: 15.0,
      ),
      Center(
        child: Text(
          '${model.body}',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 15.0,
      ),

    ],
  );
}
