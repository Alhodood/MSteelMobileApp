import 'dart:ui';


import 'package:flutter/material.dart';

import 'package:msteelmobileapp/core/utils/colors.dart';
import 'package:msteelmobileapp/core/utils/media_query_values.dart';
import 'custom_button.dart';
import 'outline_button.dart';
import 'pie_chart.dart';

class StockWidget extends StatelessWidget {
  const StockWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 22.0,
            ),
            transform: Matrix4.translationValues(0, -75, 0),
            decoration: BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 40,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Icon(
                        Icons.data_exploration_rounded,
                        color: Colors.teal,
                        size: 30.0,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'System Maintenance Inc.',
                          style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 15.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          '(MAINT)',
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: darkGrey.withOpacity(0.1),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Maintenance Summary',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: darkGrey),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '\$',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  '8,089.00',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'System Dashboard',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Icon(
                      Icons.arrow_outward_outlined,
                      color: secondPrimaryColor,
                      size: 18.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                    maxHeight: screenWidth * 0.9,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const PieChartWidget(),
                      Container(
                        height: screenWidth * 0.6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.0,
                            color: darkGrey.withOpacity(0.35),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Maintenance Share',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: darkGrey),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '50',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: darkGrey, fontSize: 15.0),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: blue,
                                  radius: 3.0,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Technician',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: darkGrey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 12.0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: darkBlack,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 10.0,
                        color: darkGrey,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'OB Nov - 17 Nov',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey[400],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 13.0,
                        color: darkGrey,
                      ),
                    ],
                  ),
                ),
                accountsWidget(context, 'Last Checked', '\$17.112.00'),
                accountsWidget(context, 'Change %', '+26%', isPercentage: true),
                accountsWidget(context, 'System Load', '\$28 M USD'),
                accountsWidget(context, 'Health Score', '14.285'),
                const SizedBox(
                  height: 12,
                ),
                CustomOutlineButton(width: double.infinity, title: 'Log Issue'),
                const SizedBox(
                  height: 12,
                ),
                CustomButton(width: double.infinity, title: 'Resolve Issue'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding accountsWidget(BuildContext context, String title, String value,
      {bool isPercentage = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: darkGrey),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: isPercentage ? Colors.green : darkGrey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
