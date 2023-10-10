import 'package:currency_exchange/screen/user_side/screens/user_main_screen/bottom_nevbar_screen/scan/scan_qr_code/scan_qrcode.dart';
import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import 'detail_qr_code.dart';

class ScanQRCode extends StatefulWidget {
  const ScanQRCode({super.key});

  @override
  State<ScanQRCode> createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        AppUtils.backTo(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColor.whiteColor,
                        size: 35,
                      )),
                  const ReusableText(
                    title: 'Scan QR Code',
                    color: AppColor.whiteColor,
                    size: 24,
                    weight: FontWeight.w600,
                  ),
                  Image.asset('images/qrScan.png')
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.whiteColor),
                child: Column(
                  children: [
                    const ReusableText(
                      title:
                          'Lorem ipsum dolor  sit lorem fill\nfit meaning for ameconsectetur.',
                      size: 15,
                      weight: FontWeight.w400,
                    ),
                    GestureDetector(
                        onTap: () {
                          AppUtils.navigateTo(context, const DetailQRCode());
                        },
                        child: const QRCode())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
