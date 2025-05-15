import 'package:flutter/material.dart';
import 'package:msteelmobileapp/core/utils/divider.dart';
import 'package:msteelmobileapp/features/screens/projects/component/widget/circle_indicator.dart';
import 'package:msteelmobileapp/features/screens/projects/data/model/task_data.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top * 1.2),

              ///profile progress
              TaskProfileCard(
                url:
                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=2728&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                name: 'John Doe',
                thickness: 8,
                task: taskList[0],
              ),
              SizedBox(height: 40),

              ///other profile title
              Text(
                "Employee Task Overview",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400),
              ),
              Expanded(
                flex: 6,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: kDefault * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TaskProfileCard(
                            width: 95,
                            height: 95,
                            url:
                                'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528',
                            name: 'Alice Smith',
                            task: taskList[0],
                          ),
                          TaskProfileCard(
                             width: 95,
                            height: 95,
                            url:
                                'https://metro.co.uk/wp-content/uploads/2016/07/ad_212876871.jpg?quality=90&strip=all&zoom=1&resize=480%2C345',
                            name: 'David Lee',
                            task: taskList[1],
                          ),

                          TaskProfileCard(
                             width: 95,
                            height: 95,
                            url:
                                'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.webp?a=1&b=1&s=612x612&w=0&k=20&c=OnzQRmrTWj779-DI4_aEykdTKuwL-Ubphs1cdQ3tyxE=',
                            name: 'Alice Smith',
                            task: taskList[0],
                          ),
                        ],
                      ),
                      const SizedBox(height: kDefault * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TaskProfileCard(
                             width: 95,
                            height: 95,
                            url:
                                'https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.webp?a=1&b=1&s=612x612&w=0&k=20&c=C_8wG3b7e_COYhfW_tjFY-OdmHHEMDRSGMF0Y4F0fzg=',
                            name: 'Michael Chen',
                            task: taskList[1],
                          ),
                          TaskProfileCard(
                            width: 95,
                            height: 95,
                            url:
                                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVvcGxlfGVufDB8fDB8fHww',
                            name: 'Sofia Patel',
                            task: taskList[3],
                          ),
                          TaskProfileCard(
                            width: 95,
                            height: 95,
                            url:
                                'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D',
                            name: 'Michael Chen',
                            task: taskList[1],
                          ),
                        ],
                      ),
                      const SizedBox(height: kDefault * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TaskProfileCard(
                            width: 95,
                            height: 95,
                            url:
                                'https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D',
                            name: 'Michael Chen',
                            task: taskList[1],
                          ),
                          TaskProfileCard(
                            width: 95,
                            height: 95,
                            url:
                                'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww',
                            name: 'Sofia Patel',
                            task: taskList[3],
                          ),
                          TaskProfileCard(
                             width: 95,
                            height: 95,
                            url:
                                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D',
                            name: 'Michael Chen',
                            task: taskList[1],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskProfileCard extends StatelessWidget {
  const TaskProfileCard({
    super.key,
    this.width = 150,
    this.height = 150,
    required this.url,
    this.progress = 220.0,
    required this.name,
    required this.task,
    this.thickness = 6,
  });

  final double width;
  final double height;
  final String url;
  final double progress;
  final String name;
  final TaskData task;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: width,
          height: height,
          child: CustomPaint(
            painter: CircleIndicator(
              mColor: task.progressColor,
              thickness: thickness,
              progress: progress,
            ),
            child: Container(
              margin: const EdgeInsets.all(kDefault / 8),
              padding: const EdgeInsets.all(kDefault / 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width - 50),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: width - 50,
                  height: height - 50,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: kDefault),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
           
            
          ],
        ),
        const SizedBox(height: kDefault / 2),
        thickness == 8
            ? Text(task.title, overflow: TextOverflow.clip)
            : const SizedBox.shrink(),
        Text(
          task.progressText,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
