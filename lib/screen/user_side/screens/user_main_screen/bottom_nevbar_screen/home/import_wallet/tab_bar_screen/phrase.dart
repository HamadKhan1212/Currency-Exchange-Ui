import 'package:currency_exchange/themes/color.dart';
import 'package:currency_exchange/widget/reusable_button.dart';
import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class Phrase extends StatefulWidget {
  const Phrase({super.key});

  @override
  State<Phrase> createState() => _PhraseState();
}

class _PhraseState extends State<Phrase> {
  bool isVisible = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffC7C5CA),
                ),
                borderRadius: BorderRadius.circular(24)),
            child: Column(
              children: [
                TextFormField(
                  maxLines: 5,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: InputBorder.none,
                      hintText: 'Secret phrase (12 or24 words)',
                      hintStyle: TextStyle(
                          color: Color(
                            0xffC7C5CA,
                          ),
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Image.asset(
                      'images/icon/question_mark.png',
                    ),
                    const Spacer(),
                    Image.asset('images/icon/Scan2.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('images/icon/Paper-Plus.png'),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsetsDirectional.all(20),
            height: 63,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffC7C5CA),
                ),
                borderRadius: BorderRadius.circular(24)),
            child: Row(
              children: [
                Image.asset('images/icon/Buy.png'),
                const SizedBox(
                  width: 40,
                ),
                const ReusableText(
                  title: 'Merchant wallet',
                  size: 15,
                  weight: FontWeight.w500,
                  color: AppColor.primaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('images/icon/question_mark.png'),
                const Spacer(),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Container(
                        height: 3,
                        width: 35,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Visibility(
                        visible: isVisible,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Visibility(
                      visible: !isVisible,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColor.primaryColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 63,
            child: ReusableButton(
              title: 'Import',
              onTap: () {},
              radius: 24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  value: isChecked,
                  checkColor: AppColor.primaryColor,
                  activeColor: const Color(0xffEAEAEA),
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue ?? false;
                    });
                  },
                ),
              ),
              const SizedBox(
                  width: 8.0), // Add spacing between the checkbox and text
              RichText(
                  text: const TextSpan(
                      text: 'I have read and accept the ',
                      style: TextStyle(
                          color: Color(0xffC7C5CA),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      children: [
                    TextSpan(
                      text: 'Terms of Service ',
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    TextSpan(
                      text: 'and\n',
                      style: TextStyle(
                          color: Color(0xffC7C5CA),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    TextSpan(
                      text: 'privacy policy',
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ]))
            ],
          ),
        ],
      ),
    );
  }
}
