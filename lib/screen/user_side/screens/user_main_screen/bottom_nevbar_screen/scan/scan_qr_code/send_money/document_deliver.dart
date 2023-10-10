import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class DocumentDelivery extends StatefulWidget {
  const DocumentDelivery({super.key});

  @override
  State<DocumentDelivery> createState() => _DocumentDeliveryState();
}

class _DocumentDeliveryState extends State<DocumentDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppUtils.getHeight(context, 0.06),
            ),
            ReusableText(
              title: 'Document Delivery',
              color: AppColor.whiteColor,
              size: 24,
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.04),
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  padding: EdgeInsets.all(48),
                  height: 163,
                  width: 163,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff8D8DD0)),
                  child: Image(
                    image: AssetImage('images/icon/docDelivery.png'),
                    height: 30,
                    width: 30,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffFE2ABF),
                  child: Icon(
                    Icons.add,
                    color: AppColor.whiteColor,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.04),
            ),
            Container(
              height: AppUtils.getHeight(context, 0.06),
              width: double.infinity,
              color: Color(0xff8D8DD0),
              child: Center(
                child: ReusableText(
                  title: 'My Orders',
                  weight: FontWeight.w400,
                  size: 24,
                  color: AppColor.whiteColor,
                ),
              ),
            ),
            SizedBox(
              height: AppUtils.getHeight(context, 0.04),
            ),
            ReusableWidget(),
            ReusableWidget(
              imageColor: Color(0xff39B3D3),
            ),
            ReusableWidget()
          ],
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final Color? imageColor;
  const ReusableWidget({
    super.key,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Image(
            image: AssetImage(
              'images/icon/town.png',
            ),
            color: imageColor,
          ),
          SizedBox(
            width: AppUtils.getWidth(context, 0.02),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.aspectRatio * 20,
                        backgroundColor: Color(0xff8D8DD0),
                      ),
                    ),
                    SizedBox(
                      width: AppUtils.getWidth(context, 0.03),
                    ),
                    ReusableText(
                      title: 'Lorem st.00',
                      color: AppColor.whiteColor,
                      size: 18,
                      weight: FontWeight.w400,
                    ),
                    Spacer(),
                    ReusableText(
                      title: '\$15',
                      size: 18,
                      weight: FontWeight.w400,
                      color: AppColor.whiteColor,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      DotedContainer(),
                      DotedContainer(),
                      DotedContainer(),
                      DotedContainer(),
                      DotedContainer(),
                      DotedContainer(),
                      DotedContainer(),
                      DotedContainer(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: imageColor ?? Color(0xffFE2ABF),
                    ),
                    SizedBox(
                      width: AppUtils.getWidth(context, 0.03),
                    ),
                    ReusableText(
                      title: 'Lorem st.00',
                      color: imageColor ?? AppColor.whiteColor,
                      size: 18,
                      weight: FontWeight.w400,
                    ),
                    Spacer(),
                    ReusableText(
                      title: '19.03.20 14:25',
                      size: 15,
                      weight: FontWeight.w400,
                      color: imageColor ?? Color(0xffFE2ABF),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DotedContainer extends StatelessWidget {
  const DotedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.aspectRatio * 3,
        backgroundColor: Color(0xff8D8DD0),
      ),
    );
  }
}
