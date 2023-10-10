import 'package:currency_exchange/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../themes/color.dart';

class ReusableTableRow extends StatefulWidget {
  final String invoiceNumber;
  final IconData icon;
  final String status;
  final String image;
  final String title;
  final String subtitle;
  final String percentageText;
  final double percentage;
  final Color color;
  final Color statusColor;
  final Color statusIconColor;

  const ReusableTableRow({
    super.key,
    required this.invoiceNumber,
    required this.icon,
    required this.status,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.percentageText,
    required this.percentage,
    required this.color,
    required this.statusColor,
    required this.statusIconColor,
  });

  @override
  State<ReusableTableRow> createState() => _ReusableTableRowState();
}

class _ReusableTableRowState extends State<ReusableTableRow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: SizedBox(
              child: Row(
                children: [
                  StatefulBuilder(
                    builder: (BuildContext context,
                        void Function(void Function()) setState) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: const Color(0xffC7C5CA),
                              )),
                          child: isChecked
                              ? const Icon(
                                  Icons.check,
                                  color: AppColor.blackColor,
                                  size: 15,
                                )
                              : null,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ReusableText(
                    title: widget.invoiceNumber,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Center(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Icon(
                            widget.icon,
                            size: 12,
                            color: widget.statusIconColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ReusableText(
                            title: widget.status,
                            color: widget.statusColor,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Image.asset(
                  widget.image,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: widget.title,
                      weight: FontWeight.w600,
                    ),
                    ReusableText(title: widget.subtitle)
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    animation: true,
                    lineHeight: 7.0,
                    animationDuration: 2000,
                    percent: widget.percentage,
                    barRadius: const Radius.circular(5),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: AppColor.primaryColor,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "${widget.percentageText}%",
                  style:
                      const TextStyle(fontSize: 10, color: AppColor.blackColor),
                ),
                const SizedBox(width: 20),
                const Icon(Icons.more_vert)
              ],
            ),
          )
        ],
      ),
    );
  }
}
