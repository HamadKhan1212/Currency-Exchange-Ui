import 'package:flutter/material.dart';

import 'login/logIn.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/onboarding_background.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset(
            'images/Onboarding_1.png',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color:
                                currentIndex == 0 ? Colors.white : Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color:
                                currentIndex == 1 ? Colors.white : Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color:
                                currentIndex == 2 ? Colors.white : Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 500,
              ),
              SizedBox(
                height: 120,
                child: currentIndex == 0
                    ? const Text(
                        'Exchange currency\nassets in a few\nsimple steps',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      )
                    : currentIndex == 1
                        ? const Text(
                            'Simple wallet\ncontrol',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400),
                          )
                        : const Text(
                            'The future is in your\nhand all the things\nare easy with app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400),
                          ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (currentIndex == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const LogIn()));
                  } else {
                    setState(() {
                      currentIndex++;
                    });
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(27)),
                  child: Image.asset('images/icon/Arrow.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
