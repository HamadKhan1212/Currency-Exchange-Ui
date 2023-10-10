import 'package:currency_exchange/screen/user_side/screens/user_main_screen/bottom_nevbar_screen/home/import_wallet/tab_bar_screen/phrase.dart';
import 'package:currency_exchange/screen/user_side/screens/user_main_screen/bottom_nevbar_screen/home/import_wallet/tab_bar_screen/private_key.dart';
import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_button.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import 'tab_bar_screen/address.dart';

class ImportWallet extends StatefulWidget {
  const ImportWallet({super.key});

  @override
  State<ImportWallet> createState() => _ImportWalletState();
}

class _ImportWalletState extends State<ImportWallet> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColor.transparentColor,
        title: const ReusableText(
          title: 'Import wallet',
          color: AppColor.primaryColor,
          size: 15,
        ),
        leading: IconButton(
          onPressed: () {
            AppUtils.backTo(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/container3.png'),
                Container(
                  height: 220,
                  width: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/container2.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Wallet name',
                            weight: FontWeight.w400,
                            color: Color(0xffA3A3A3),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset('images/icon/edit.png')
                          // Image.asset('')
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset('images/container1.png'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableButton(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      title: 'Phrase',
                      radius: 15,
                      titleColor: _currentIndex == 0
                          ? AppColor.whiteColor
                          : AppColor.primaryColor,
                      buttonColor: _currentIndex == 0
                          ? AppColor.primaryColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ReusableButton(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      title: 'Address',
                      radius: 15,
                      titleColor: _currentIndex == 1
                          ? AppColor.whiteColor
                          : AppColor.primaryColor,
                      buttonColor: _currentIndex == 1
                          ? AppColor.primaryColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ReusableButton(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      title: 'Private Key',
                      titleColor: _currentIndex == 2
                          ? AppColor.whiteColor
                          : AppColor.primaryColor,
                      radius: 15,
                      buttonColor: _currentIndex == 2
                          ? AppColor.primaryColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                ],
              ),
            ),
            _currentIndex == 0
                ? const Phrase()
                : _currentIndex == 1
                    ? const Address()
                    : const PrivateKey()
          ],
        ),
      ),
    );
  }
}
