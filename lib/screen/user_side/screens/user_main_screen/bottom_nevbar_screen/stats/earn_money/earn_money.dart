import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import 'dashboard_user.dart';

class EarnMoney extends StatefulWidget {
  const EarnMoney({super.key});

  @override
  State<EarnMoney> createState() => _EarnMoneyState();
}

class _EarnMoneyState extends State<EarnMoney> {
  List listItem = [
    'images/earn_money/1.png',
    'images/earn_money/2.png',
    'images/earn_money/3.png',
    'images/earn_money/4.png',
    'images/earn_money/5.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff503A81),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                    height: 180,
                    width: 148,
                    child: Image(
                      image: AssetImage('images/earn_money/amico1.png'),
                    )),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Earn Money\nBy Refer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: AppUtils.getHeight(context, 0.015),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: const Color(0xff6543AC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mex2345467',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'Copy',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppUtils.getWidth(context, 0.01),
                    ),
                    GestureDetector(
                      onTap: () {
                        AppUtils.navigateTo(context, const DashBoardUser());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: const Color(0xff8D8DD0),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'SHARE',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Invite a friend',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.search_rounded,
                              color: Colors.black,
                              size: 40,
                            )
                          ],
                        ),
                      ),
                      ...List.generate(listItem.length, (index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(listItem[index]),
                          ),
                          title: const Text(
                            'Bessie Cooper',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          subtitle: const Text('Facebook'),
                          trailing: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      insetPadding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                        padding: const EdgeInsets.all(30),
                                        height:
                                            AppUtils.getHeight(context, 0.65),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      'images/earn_money/amico.png'),
                                                ),
                                                const SizedBox(
                                                  width: 40,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Icon(
                                                    Icons.close,
                                                    size: 30,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: AppUtils.getHeight(
                                                  context, 0.02),
                                            ),
                                            const ReusableText(
                                              title:
                                                  'Congratulations!\nYou have just earned \$50',
                                              textAlign: TextAlign.center,
                                              color: AppColor.blackColor,
                                              size: 20,
                                              weight: FontWeight.w600,
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            const ReusableText(
                                              title:
                                                  'One of your friends has joined by\n your referral code. Do more \n invitations to earn more.',
                                              textAlign: TextAlign.center,
                                              color: Color(0xff9E9E9E),
                                              size: 15,
                                              weight: FontWeight.w500,
                                            ),
                                            const SizedBox(
                                              height: 60,
                                            ),
                                            Container(
                                              height: 60,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff6543AC),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: const Center(
                                                  child: Text(
                                                'INVITE ANOTHER',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xffDBDBFF),
                                  borderRadius: BorderRadius.circular(25)),
                              child: const Center(
                                  child: Text(
                                'Invite',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
