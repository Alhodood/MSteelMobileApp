import 'package:flutter/material.dart';
import 'package:msteelmobileapp/core/utils/media_query_values.dart';
import 'package:msteelmobileapp/features/screens/overview/widgets/header.dart';
import 'package:msteelmobileapp/features/screens/overview/widgets/overall_portfolio_card.dart';
import 'package:msteelmobileapp/features/screens/overview/widgets/overview_statistic_widget.dart';
import 'package:msteelmobileapp/features/screens/overview/widgets/side_bar.dart';
import 'package:msteelmobileapp/features/screens/overview/widgets/stock_widget.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Overview',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // Header(),
              OverallPortfolioCard(),
              SizedBox(height: 20),
              OverviewStatistic(),
              SizedBox(height: 80),
              StockWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
