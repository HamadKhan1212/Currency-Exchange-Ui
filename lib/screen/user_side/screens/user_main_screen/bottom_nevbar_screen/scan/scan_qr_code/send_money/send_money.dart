import 'package:currency_exchange/screen/user_side/screens/user_main_screen/bottom_nevbar_screen/scan/scan_qr_code/send_money/setting.dart';
import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_button.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../utils/item_list/item_list.dart';
import '../../../../../onboarding/login/signup/otp.dart';
import 'detail_send_money.dart';
import 'document_deliver.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const ReusableText(
          title: 'Send Money',
          weight: FontWeight.w600,
          size: 24,
          color: AppColor.blackColor,
        ),
        backgroundColor: AppColor.transparentColor,
        leading: IconButton(
          onPressed: () {
            AppUtils.backTo(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.blackColor,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                AppUtils.navigateTo(context, const DocumentDelivery());
              },
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.blackColor,
                size: 30,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ReusableText(
              title: 'Enter Amount',
              size: 15,
              weight: FontWeight.w500,
              color: Color(0xffBCBCBC),
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.015),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ReusableText(
                  title: '\$2300.00',
                  size: 40,
                  weight: FontWeight.w600,
                ),
                ReusableText(
                  title: 'USD',
                  size: 33,
                  weight: FontWeight.w500,
                  color: Color(0xffBCBCBC),
                )
              ],
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.03),
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: rateList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: const Color(0xffD8D8D8),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: ReusableText(
                          title: rateList[index],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.05),
            ),
            GestureDetector(
              onTap: () {
                AppUtils.navigateTo(context, const DetailSendMoney());
              },
              child: Container(
                  height: 87,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffC7C5CA),
                          offset: Offset(0,
                              5), // Offset for shadow (0, 4) means shadow is below
                          blurRadius: 4,
                        ),
                      ]),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset('images/image1.png'),
                      title: const ReusableText(
                        title: 'Alex John',
                        color: AppColor.whiteColor,
                        size: 20,
                        weight: FontWeight.w600,
                      ),
                      subtitle: const ReusableText(
                        title: '(270) 565-78234',
                        color: Color(0xffBCBCBC),
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.04),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KeyboardButtons(
                        number: Text(
                      '1',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Text(
                      '2',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Text(
                      '3',
                      style: style,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KeyboardButtons(
                        number: Text(
                      '4',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Text(
                      '5',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Text(
                      '6',
                      style: style,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KeyboardButtons(
                        number: Text(
                      '7',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Text(
                      '8',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Text(
                      '9',
                      style: style,
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const KeyboardButtons(
                        number: Icon(
                      Icons.circle,
                      size: 18,
                      color: AppColor.whiteColor,
                    )
                        //     ,Text(
                        //   '.',
                        //   style: style,
                        // )
                        ),
                    KeyboardButtons(
                        number: Text(
                      '0',
                      style: style,
                    )),
                    KeyboardButtons(
                        number: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/icon/clear.png',
                        color: Colors.white,
                      ),
                    ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.04),
            ),
            ReusableButton(
              title: 'Send Money',
              onTap: () {
                AppUtils.navigateTo(context, const Setting());
              },
              radius: 24,
            )
          ],
        ),
      ),
    );
  }
}

class KeyboardButtons extends StatelessWidget {
  final Widget? number;
  const KeyboardButtons({
    super.key,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          height: 64,
          width: 108,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: const Color(0xff8D8DD0)),
          child: Center(child: number)),
    );
  }
}
