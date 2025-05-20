import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:msteelmobileapp/features/router/router.dart';
import 'package:msteelmobileapp/features/screens/employess/controller/employees_controller.dart';
import 'package:msteelmobileapp/features/screens/employess/screen/employes_dashboard.dart';
import 'package:msteelmobileapp/widget/dailog_widget.dart';
import 'package:provider/provider.dart';



class ServiceListingScreen extends StatelessWidget {
   ServiceListingScreen({super.key, required this.image});
Map<String, dynamic> image;
  @override

  // TO SHOW DIALOG BOX
  Future<void> showDialogBox({
    required String title,
    required String messege,
    required Color color,
    required String  image,

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
                 SizedBox(height: 10,),
                Text(title, ),
                 SizedBox(height: 10,),
                // vSpaceSmall,
                Divider(color: color),
                // vSpaceSmall,

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),

                        // Text("Floor No.3", style: AppText.b2),
                        // vSpaceSmall,
                        Text(
                          "Before start your work please confirm you are machines are OFF!",
                          // style: AppText.b2,
                          textAlign: TextAlign.center,
                        ),   SizedBox(height: 10,),
Image.asset(image)
,
 SizedBox(height: 10,),
                        // vSpaceSmall,
                        // Text(
                        //   messege,
                        //   // style: AppText.b2!.copyWith(color: color),
                        //   textAlign: TextAlign.center,
                        // ),
                        // vSpaceMin,
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     // Icon(image, color: color, size: 20),
                        //     Text(
                        //       contact,
                        //       // style: AppText.b2!.copyWith(color: color),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
 SizedBox(height: 10,),
                // vSpaceSmall,
                Divider(color: color),
                GestureDetector(onTap: () {
                  Routes.back();
                },
                  child: Text("Close", 
                  // style: AppText.b1!.copyWith(color: color)
                  )),
                   SizedBox(height: 10,),
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
  Future<dynamic> alertDialog( BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your Task is Done'),
          content:Lottie.asset("assets/Animation - 1747379801221.json") ,
          actions: <Widget>[
            ElevatedButton(
              child: Text('Ok'),
              onPressed: () {Routes.pushRemoveUntil(screen: SignUp());

              },
            ),
          ],
        );
      });
}

void showFullScreenWarningDialog(BuildContext context, int count) {
  final controller=Provider.of<EmployeesController>(context,listen: false);
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.3),
    builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.teal.shade50,
        body: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    SizedBox(height: 60),
                    Text(
                      '⚠️ Step $count',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '📌 Please double-check all maintenance configurations.\n\n'
                      '🛠️ Changes you apply here could affect critical machine behavior.\n\n'
                      '🚨 Make sure you have admin rights before proceeding.\n\n'
                      '📂 Log data will be overwritten if not saved.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                    
                  
                    SizedBox(height: 40),
                  GestureDetector(onTap: ()async {

                    if(count==3){

  final ImagePicker _picker = ImagePicker();
   final XFile? pickedFile = await _picker.pickImage(
              source: ImageSource.camera);
controller.count=0;
alertDialog(context);

                    }else{
                      Navigator.of(context).pop();
                    }
                  },
                    child: Container(
                              height: 54,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.teal),
                              child: Center(child: Text("OK".toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold), )),
                            ),
                  ),
                  
                  ],
                ),
              ),
            ),

            /// Close (X) Button
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
  Widget build(BuildContext context) {
    print(image);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Routes.back();
          },
          icon: const Icon(
            size: 30,
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title:  Text(
          image["Title"].toString(),
          style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.white,
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
      floatingActionButton: Consumer<EmployeesController>(
        builder: (context,value,_) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
            onTap: (){
              if(value.startWork== false){
          
          showDialogBox(image: "assets/employe/pngegg (2).png",title: "Warnning",messege: "jhas",color: Colors.red,ctx: context,action:(){},backbuttonAction: () {}
          , contact: "wef");
          value.changeStatus(true);
              }else{
                value.changeCount();
              showFullScreenWarningDialog(context,value.count);
          
              }  
          },
            child: Container(
              height: 54,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.teal),
              child: Center(child: Text(value.count==0?"Strat":value.count==3?"Done":"Next".toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold), )),
            ),
                ),
          );
        }
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
      color:  Colors.teal,
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



