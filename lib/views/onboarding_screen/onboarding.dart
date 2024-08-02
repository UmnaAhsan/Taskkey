import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_task_app/views/app_pages/chat/models/userModel.dart';
import 'package:todo_task_app/views/bnb/bnb.dart';

class onboarding extends StatefulWidget {
  
//       : super(key: key);
  //const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  List onboarding = [
    {
      "image": 'assets/images/Circle.png',
      "title": 'Task Management',
      "title2": "Let's create a",
      "title3": "space ",
      "title4": "for your",
      "title5": "workflows."
    },
    {
      "image": 'assets/images/Image11.png',
      "title": 'Task Management',
      "title2": "Work more ",
      "title3": "structured  ",
      "title4": "and",
      "title5": "organized "
    },
    {
      "image": 'assets/images/Image1.png',
      "title": 'Task Management',
      "title2": "Manage your",
      "title3": "task",
      "title4": "quickly for",
      "title5": "results"
    }
  ];

  Color whiteColor = Colors.white;
  Color otherColor = Color(0xFF19173D);
  PageController pageController = PageController();

  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: otherColor,
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onboarding.length,
            //    onPageChanged: ,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                          height: 350,
                          width: 400,
                          child: Image.asset(
                            onboarding[index]['image'],
                            fit: BoxFit.cover,
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset('assets/images/Image3.png')),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Image.asset('assets/images/Image2.png')),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 120,
                                  width: 200,
                                  child: Image.asset(
                                    'assets/images/Image1(2).png',
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ]),
                    // SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            onboarding[index]['title'],
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Text(
                            onboarding[index]['title2'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                          Row(
                            children: [
                              Text(
                                onboarding[index]['title3'],
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30),
                              ),
                              Text(
                                onboarding[index]['title4'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30),
                              ),
                            ],
                          ),
                          Text(
                            onboarding[index]['title5'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                              children:
                                  List.generate(onboarding.length, (index) {
                            return AnimatedContainer(
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              height: 10,
                              width: (index == currentPage) ? 15 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == currentPage)
                                      ? Colors.deepOrange
                                      : Colors.grey),
                            );
                          })),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                              //bottomNB(userModel: widget.userModel, firebaseUser:widget. firebaseUser)
                                             //bottomNB(userModel: userModel, firebaseUser: firebaseUser) 
                                          ///   bottomNB(userModel: userModel, firebaseUser: firebaseUser)
                                           bottomNB() ));
                                      },
                                      child: Text(
                                        "Skip",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                ],
                              ),

                              //const EdgeInsets.only(bottom: 20),
                              Container(
                                  height: 136,
                                  width: 70,
                                  child: Image.asset(
                                    'assets/images/NextButton.png',
                                    fit: BoxFit.cover,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
