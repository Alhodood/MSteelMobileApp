
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:msteelmobileapp/features/screens/employess/screen/widget/details_screen.dart';


class ExployesDashBorad extends StatelessWidget {
  const ExployesDashBorad({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(
      children: [

      ],
    ));
  }
}


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
 
  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;
  late TabController tabController;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text(
                'Work Order',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
             
              SizedBox(
                height: 10,
              ),
            
              TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Maintanace',
                  ),
                   Tab(
                    text: 'Work',
                  )
                ],
                labelColor: Colors.black,
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [EcpolyessListView(),
                    EcpolyessListView(),EcpolyessListView()
                  ],
                ),
              ),
            
            
            ],
          ),
        ),
      ),
    );
  }
}



class EcpolyessListView extends StatefulWidget {
  const EcpolyessListView({
    super.key,
  });

  @override
  State<EcpolyessListView> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<EcpolyessListView> {
  final CardSwiperController controller = CardSwiperController();


  List<Container> cards = List.generate(data.length, (index){
    return Container(decoration: BoxDecoration(color: data[index]['color'],borderRadius: BorderRadius.all(Radius.circular(30))),
      // alignment: Alignment.center,
      child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(radius: 18),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data[index]['Title'].toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                Text("15 May 2025",
                                    style: TextStyle(color: Colors.white70)),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_outward_rounded,
                                color: Colors.white),
                          ],
                        ),
                        Spacer(),
                                                   Image(image: AssetImage(data[index]['image'].toString(),),width: 300,height: 300,),

                        Spacer(),
                        Text("What to do?",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(data[index]['Description'].toString(),
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(12)),
                            child: Text("14.12",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    ),
                  ),
    );
  });

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CardSwiper(
      controller: controller,
      cardsCount: cards.length,
      onSwipe: _onSwipe,
      onUndo: _onUndo,
      numberOfCardsDisplayed: 3,
      backCardOffset: const Offset(40, 40),
      padding: const EdgeInsets.all(24.0),
      cardBuilder: (
        context,
        index,
        horizontalThresholdPercentage,
        verticalThresholdPercentage,
      ) =>
          GestureDetector(onTap: () =>     Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ServiceListingScreen(image:data[index])),
      ),
            child: cards[index]),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}

 List<Map<String, dynamic>> data = [
  {
    "Title": "Machine Cleaning",
    "Description": "Clean the internal and external parts of machinery.",
    "image": "assets/machine_one.png",
    "color":Colors.red
  },
  {
    "Title": "Valve Inspection",
    "Description": "Inspect the valve for leaks and corrosion.",
    "image": "assets/pngegg (5).png",
        "color":Colors.green

  },
  {
    "Title": "Oil Replacement",
    "Description": "Replace used oil to ensure machine efficiency.",
    "image": "assets/pngegg (6) (2).png",
            "color":Colors.yellow

  },
  {
    "Title": "Filter Maintenance",
    "Description": "Check and replace filters in machinery.",
    "image": "assets/pngegg (8) (1).png",
            "color":Colors.red

  },
];