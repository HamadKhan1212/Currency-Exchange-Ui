import 'package:currency_exchange/screen/user_side/screens/user_main_screen/bottom_nevbar_screen/scan/scan_qr_code/send_money/send_money.dart';
import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/utils/app_utils.dart';
import 'package:currency_exchange/widget/reusable_button.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:currency_exchange/widget/reusable_textformfield.dart';
import 'package:flutter/material.dart';

class BankTransfer extends StatefulWidget {
  const BankTransfer({super.key});

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.transparentColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            AppUtils.backTo(context);
          },
          icon: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ),
          color: AppColor.blackColor,
        ),
        title: const ReusableText(
          title: 'Bank Transfer',
          weight: FontWeight.w600,
          size: 24,
          color: AppColor.blackColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppUtils.getHeight(context, 0.035)),
              const ReusableText(
                title: 'Sending to Bank Account',
                size: 15,
                weight: FontWeight.w500,
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.015)),
              Row(
                children: [
                  Container(
                    height: 82,
                    width: 82,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColor.primaryColor, width: 1)),
                    child: const Center(
                      child: ReusableText(
                        title: 'Logo',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const ReusableText(
                    title: 'AL Baraka Islamic Bank Limited',
                    size: 15,
                    weight: FontWeight.w400,
                  )
                ],
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.02)),
              const ReusableText(
                title: 'Select Receiver’s Details',
                size: 17,
                weight: FontWeight.w400,
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.035)),
              const ReusableText(
                title: 'Enter Account Number OR IBAN',
                size: 15,
                weight: FontWeight.w400,
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.015)),
              const ReusableTextForm(
                borderColor: Color(0xffC7C5CA),
                hintText: 'Enter Account Number OR IBAN',
                filledColor: AppColor.whiteColor,
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.015)),
              const ReusableText(
                title: 'Enter Purpose of Payment',
                size: 15,
                weight: FontWeight.w400,
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.015)),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
                height: 52,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.whiteColor,
                    border:
                        Border.all(color: const Color(0xffC7C5CA), width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ReusableText(
                      title: 'National Funds',
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.015)),
              const ReusableText(
                title: 'Enter Mobile Number (Optional)',
                size: 15,
                weight: FontWeight.w400,
              ),
              SizedBox(height: AppUtils.getHeight(context, 0.015)),
              const ReusableTextForm(
                borderColor: Color(0xffC7C5CA),
                hintText: 'Enter Receiver’s Number or Search Contacts',
                filledColor: AppColor.whiteColor,
              ),
              SizedBox(
                height: AppUtils.getHeight(context, 0.1),
              ),
              ReusableButton(
                title: 'Next',
                onTap: () {
                  AppUtils.navigateTo(context, const SendMoney());
                },
                radius: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
