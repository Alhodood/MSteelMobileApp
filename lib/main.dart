import 'package:flutter/material.dart';
import 'package:msteelmobileapp/features/router/router.dart';
import 'package:msteelmobileapp/features/screens/employess/screen/employes_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SignUp(),
        navigatorKey: Routes.navigatorKey,
      // const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class WorkOrdersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WorkOrdersPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WorkOrdersPage extends StatelessWidget {
  final List<Map<String, String>> orders = [
    {
      'name': 'Chris Mayer',
      'role': 'Mechanic',
      'title': 'VALVE',
      'description': 'Wedge gate valve 08F34B1 is a rising spindle',
      'time': '14:12',
    }, {
      'name': 'Chris Mayer',
      'role': 'Mechanic',
      'title': 'VALVE',
      'description': 'Wedge gate valve 08F34B1 is a rising spindle',
      'time': '14:12',
    },
    // Add more mock items if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Work orders', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Icon(Icons.filter_alt_outlined),
                ],
              ),
            ),

            // Tabs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  FilterChip(label: Text("My work"), onSelected: (_) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Anyday"), onSelected: (_) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Bookma"), onSelected: (_) {}),
                ],
              ),
            ),

            // Orders List
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("ALL ORDERS", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  final order = orders[index];
                  return Container(
                    width: 250,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.person),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(order['name']!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(order['role']!, style: TextStyle(color: Colors.white70, fontSize: 12)),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.open_in_new, color: Colors.white),
                          ],
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Center(
                            child: Icon(Icons.settings, size: 100, color: Colors.white30), // Placeholder for blueprint image
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(order['title']!, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text(order['description']!, style: TextStyle(color: Colors.white70, fontSize: 12)),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(order['time']!, style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Bottom Navigation Bar
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Request'),
              ],
              currentIndex: 0,
              onTap: (index) {},
            ),
          ],
        ),
      ),
    );
  }
}