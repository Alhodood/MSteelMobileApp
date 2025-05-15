import 'package:flutter/material.dart';
import 'package:msteelmobileapp/features/router/router.dart';
import 'package:msteelmobileapp/widget/dailog_widget.dart';



class ServiceListingScreen extends StatelessWidget {
   ServiceListingScreen({super.key, required this.image});
Map<String, String> image;
  @override

  // TO SHOW DIALOG BOX
  Future<void> showDialogBox({
    required String title,
    required String messege,
    required Color color,
    required IconData icon,

    required BuildContext ctx,
    VoidCallback? action,
    VoidCallback? backbuttonAction,
    String denyText = 'No',
    String allowText = 'Yes',
    bool isPopup = false,
    required String contact,
    VoidCallback? onAllow,
  }) async {
    // rootScaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    await showDialog(
      context: ctx,
      builder:
          (ctx) => AlertDialog(
            contentPadding: EdgeInsets.all(0),
            backgroundColor: Colors.white,
            // title: Text(
            //   title,
            // ),
            titleTextStyle: const TextStyle(fontSize: 24, color: Colors.black),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // vSpaceMedium,
                Text(title, ),
                // vSpaceSmall,
                Divider(color: color),
                // vSpaceSmall,

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Text("PreMart"),
                        // vSpaceSmall,

                        // Text("Floor No.3", style: AppText.b2),
                        // vSpaceSmall,
                        Text(
                          "Zakhir Business Center,\nNear Abu hail metro station",
                          // style: AppText.b2,
                          textAlign: TextAlign.center,
                        ),
                        // vSpaceSmall,
                        Text(
                          messege,
                          // style: AppText.b2!.copyWith(color: color),
                          textAlign: TextAlign.center,
                        ),
                        // vSpaceMin,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(icon, color: color, size: 20),
                            Text(
                              contact,
                              // style: AppText.b2!.copyWith(color: color),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // vSpaceSmall,
                Divider(color: color),
                GestureDetector(onTap: () {
                  Routes.back();
                },
                  child: Text("Close", 
                  // style: AppText.b1!.copyWith(color: color)
                  )),
                // vSpaceSmall,
              ],
            ),
            contentTextStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
            // actions: [
            //   TextButton(
            //     onPressed: backbuttonAction,
            //     child: Text(
            //       denyText,
            //       style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //     ),
            //   ),
            //   if (isPopup == false)
            //     TextButton(
            //       onPressed: action,
            //       child: Text(
            //         allowText,
            //         style:
            //             const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //       ),
            //     ),
            // ],
          ),
    );
  }
  Widget build(BuildContext context) {
    print(image);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            size: 30,
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title:  Text(
          image["Title"].toString(),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(249, 48, 1, 103),
      ),
      body: Column(
        children: [
          SizedBox(width: double.infinity,height: 200,child: Image.asset(image['image'].toString()),),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                itemCount: 10,
                itemBuilder: (context, index) {
                  final isOdd = index.isOdd;
                  final slideOffset = isOdd ? const Offset(-1, 0) : const Offset(1, 0);
              
                  return TweenAnimationBuilder<Offset>(
                    tween: Tween(begin: slideOffset, end: Offset.zero),
                    duration: Duration(milliseconds: 500 + index * 100),
                    curve: Curves.easeOut,
                    builder: (context, offset, child) {
                      return Transform.translate(
                        offset: Offset(offset.dx * 200, 0),
                        child: child,
                      );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 6, horizontal: 20.0),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 80,
                            color: Colors.white,
                            child: Row(
                              children: isOdd
                                  ? _buildLeftIconLayout(index)
                                  : _buildRightIconLayout(index),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
        onTap: (){
showDialogBox(icon: Icons.dangerous,title: "asfae",messege: "jhas",color: Colors.red,ctx: context,action:(){},backbuttonAction: () {
  
}, contact: "wef");        },
        child: Container(
          height: 54,
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.teal),
          child: Center(child: Text("Strat", )),
        ),
            ),
      ),
    );

    
  }

  List<Widget> _buildLeftIconLayout(index) {
    return [
      _iconBox(),
      Expanded(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _content(index),
      )),
      // const Icon(Icons.arrow_forward_ios, color: Colors.green),
    ];
  }

  List<Widget> _buildRightIconLayout(index) {
    return [
      // const Icon(Icons.arrow_forward_ios, color: Colors.green),
      Expanded(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _content(index),
      )),
      const SizedBox(width: 10),
      _iconBox(),
    ];
  }

  Widget _iconBox() {
    return Container(
      color: const Color.fromARGB(248, 48, 1, 103),
      width: 70,
      height: 80,
      child: const Center(
        child: Icon(Icons.arrow_forward,color: Colors.white,)
      ),
    );
  }

  Widget _content(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text(
          "Step ${index}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          "Service Description",
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ],
    );
  }
  
}



