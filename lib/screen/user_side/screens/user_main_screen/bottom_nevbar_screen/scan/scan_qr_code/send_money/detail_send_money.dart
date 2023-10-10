import 'package:flutter/material.dart';

import '../../../../../../../../../themes/color.dart';
import '../../../../../../../../../utils/app_utils.dart';
import '../../../../../../../../../widget/reusable_button.dart';
import '../../../../../../../../../widget/reusable_row.dart';
import '../../../../../../../../../widget/reusable_text.dart';

class DetailSendMoney extends StatefulWidget {
  const DetailSendMoney({super.key});

  @override
  State<DetailSendMoney> createState() => _DetailSendMoneyState();
}

class _DetailSendMoneyState extends State<DetailSendMoney> {
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: () {
              AppUtils.backTo(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.blackColor,
              size: 30,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: AppUtils.getHeight(context, 0.02)),
            Image.asset('images/image_2.png'),
            const SizedBox(
              height: 5,
            ),
            const ReusableText(
              title: 'Alex John',
              size: 24,
              weight: FontWeight.w600,
            ),
            const ReusableText(
              title: 'Verify User',
              color: AppColor.primaryColor,
              weight: FontWeight.w400,
              size: 18,
            ),
            SizedBox(height: AppUtils.getHeight(context, 0.03)),
            const ReusableText(
              title: '\$2300.00',
              weight: FontWeight.w600,
              size: 32,
            ),
            SizedBox(height: AppUtils.getHeight(context, 0.05)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.whiteColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffC7C5CA),
                      offset: Offset(0, 5),
                      blurRadius: 8,
                    ),
                  ]),
              child: const Column(
                children: [
                  ReusableRow(
                    title: 'Transaction ID ',
                    detail: '#234TUC8875492',
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ReusableRow(
                    title: 'Date',
                    detail: 'July 05,2023',
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ReusableRow(
                    title: 'Time',
                    detail: '11:22 PM',
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ReusableRow(
                    title: 'Payment Type',
                    detail: 'Card',
                  ),
                ],
              ),
            ),
            const Spacer(),
            ReusableButton(
              title: 'Share Receipt',
              onTap: () {},
              radius: 24,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
