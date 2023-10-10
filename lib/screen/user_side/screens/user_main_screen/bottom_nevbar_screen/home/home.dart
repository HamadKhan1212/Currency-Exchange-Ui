import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../../../../../../../utils/item_list/item_list.dart';
import 'import_wallet/import_wallet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppUtils.getHeight(context, 0.03),
            ),
            Stack(
              children: [
                Image.asset('images/Rectangle 34.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      AppUtils.navigateTo(context, const ImportWallet());
                    },
                    child: Container(
                      height: 209,
                      width: 334,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Rectangle 5.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('images/icon/Wallet2.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: ReusableText(
                                    title: 'Main wallet',
                                  ),
                                ),
                                const Icon(Icons.keyboard_arrow_down),
                                const Spacer(),
                                const Image(
                                  image: AssetImage(
                                      'images/icon/notification.png'),
                                  height: 20,
                                  color: AppColor.primaryColor,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            RichText(
                              text: const TextSpan(
                                text: '\$62,388',
                                style: TextStyle(
                                  fontSize: 45,
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: [
                                  TextSpan(
                                    text: '.09',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: RichText(
                                text: const TextSpan(
                                  text: '6.28%',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '(+\$345)',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset('images/Vector (1).png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText(
                    title: 'Quick Send',
                    size: 15,
                    weight: FontWeight.w600,
                  ),
                  ReusableText(
                    title: 'View All',
                    color: AppColor.primaryColor,
                    weight: FontWeight.w400,
                    size: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: listViewItems.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap:
                    true, // Add this line to allow the ListView to be scrollable within a Column
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColor.primaryColor,
                            child: index == 0
                                ? const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )
                                : Image(
                                    image: AssetImage(
                                      listViewItems[index].imageUrl,
                                    ),
                                    fit: BoxFit.fill,
                                    height: double.infinity)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          listViewItems[index].text,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                  // 2 containers per row
                ),
                itemCount: gridViewItem.length, // Total of 4 containers
                itemBuilder: (BuildContext context, int index) {
                  // Create a container for each grid item
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff8D8DD0),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    // Container background color
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(gridViewItem[index].imageUrl),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          gridViewItem[index].text,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
