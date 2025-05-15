import 'package:msteelmobileapp/core/utils/colors.dart';
import 'package:msteelmobileapp/core/utils/media_query_values.dart';

import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'outline_button.dart';
import 'total_widget.dart';

class OverallPortfolioCard extends StatelessWidget {
  const OverallPortfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Removed transform for mobile-friendliness
      width: double.infinity,
     // margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22.0),
      decoration: BoxDecoration(
        color: lightBlack.withOpacity(0.9),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'System Maintenance Overview',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOutlineButton(
                width: context.width * 0.3,
                title: 'View Logs',
              ),
              const SizedBox(width: 10),
              CustomButton(
                width: context.width * 0.3,
                title: 'Report Issue',
                isIconButton: true,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              TotalWidget(),
              
              
              
            ],
          ),
        ],
      ),
    );
  }
}
