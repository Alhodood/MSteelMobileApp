import 'package:flutter/material.dart';
import 'package:msteelmobileapp/core/utils/divider.dart';
import 'package:msteelmobileapp/features/screens/projects/component/widget/circle4_point.dart';
import 'package:msteelmobileapp/features/screens/projects/component/widget/date_card.dart';
import 'package:msteelmobileapp/features/screens/projects/component/widget/task_card.dart';
import 'package:msteelmobileapp/features/screens/projects/data/model/date_data.dart';
import 'package:msteelmobileapp/features/screens/projects/data/model/task_data.dart';

class ProjectHomePage extends StatelessWidget {
  const ProjectHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          ///appbar
          Container(
            padding: EdgeInsets.only(
              left: kDefault,
              right: kDefault,
              top: MediaQuery.of(context).padding.top * 1.1,
              bottom: kDefault,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(kDefault * 2),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, .3),
                  color: Colors.black.withOpacity(.23),
                  blurRadius: 12.0,
                ),
              ],
            ),
            child: Column(
              children: [
                ///title name and icon
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, bottom: kDefault),
                  child: Center(
                    child: Text(
                      "Maintenance Projects",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                ///date card
                SizedBox(
                  height: size.height * .11,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dateList.length,
                    itemBuilder: (context, index) {
                      return DateCard(index: index);
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                SizedBox(height: 40),

                ///progress card
                Container(
                  width: size.width * .9,
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefault / 2,
                    horizontal: kDefault,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(kDefault * 2),
                      bottomLeft: Radius.circular(kDefault * 2),
                      bottomRight: Radius.circular(kDefault / 2),
                      topRight: Radius.circular(kDefault / 2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, .3),
                        color: Colors.grey.withOpacity(.13),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ///circle
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CustomPaint(
                          painter: Circle4Point(
                            gap: 1,
                            thickness: 6,
                            bottomLeftColor: Colors.deepOrange,
                            bottomRightColor: Colors.blue,
                            topLeftColor: Colors.grey.withOpacity(.34),
                            topRightColor: Colors.redAccent,
                          ),
                          child: const Center(child: Text("54%")),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: kDefault),
                          child: const Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pipeline Inspection Schedule"),
                              Text("Tasks Overview and Completion"),
                            ],
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                ///list task
                Expanded(
                  child: Center(
                    child: ListView.builder(
                      itemCount: taskList.length,
                      itemBuilder: (context, index) {
                        return TaskCard(size: size, index: index);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
