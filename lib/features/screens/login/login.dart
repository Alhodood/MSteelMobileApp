import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msteelmobileapp/features/router/router.dart';
import 'package:msteelmobileapp/features/screens/employess/screen/employes_dashboard.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isShowLoading = false;
  bool isShowConfetti = false;
  // late SMITrigger error;
  // late SMITrigger success;
  // late SMITrigger reset;

  // late SMITrigger confetti;

  // void _onCheckRiveInit(Artboard artboard) {
  //   StateMachineController? controller =
  //       StateMachineController.fromArtboard(artboard, 'State Machine 1');

  //   artboard.addController(controller!);
  //   error = controller.findInput<bool>('Error') as SMITrigger;
  //   success = controller.findInput<bool>('Check') as SMITrigger;
  //   reset = controller.findInput<bool>('Reset') as SMITrigger;
  // }

  // void _onConfettiRiveInit(Artboard artboard) {
  //   StateMachineController? controller =
  //       StateMachineController.fromArtboard(artboard, "State Machine 1");
  //   artboard.addController(controller!);

  //   confetti = controller.findInput<bool>("Trigger explosion") as SMITrigger;
  // }

  void singIn(BuildContext context) {
    // confetti.fire();
    setState(() {
      isShowConfetti = true;
      isShowLoading = true;
    });
    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (_formKey.currentState!.validate()) {
          // success.fire();
          Future.delayed(
            const Duration(seconds: 2),
            () {
              setState(() {
                isShowLoading = false;
              });
              // confetti.fire();
              // Navigate & hide confetti
              Future.delayed(const Duration(seconds: 1), () {
                // Navigator.pop(context);
                if (!context.mounted) return;
                String role = "";
                if (emailController.text.trim() == "admin@gmail.com") {
                  role = "admin";
                } else if (emailController.text.trim() == "user@gmail.com") {
                  role = "user";
                } else {
                  role = "guest";
                }

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => EntryPoint(role: role),
                //   ),
                // );
              });
            },
          );
        } else {
          // error.fire();
          Future.delayed(
            const Duration(seconds: 2),
            () {
              setState(() {
                isShowLoading = false;
              });
              // reset.fire();
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 16),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.email, color: Colors.teal),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 16),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.lock, color: Colors.teal),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 24),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // singIn(context);
                        Routes.push(screen: SignUp());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        minimumSize: const Size(double.infinity, 56),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                          ),
                        ),
                      ),
                      icon: const Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                      ),
                      label: const Text("Sign In"),
                    ),
                  ),
                ],
              ),
            ),
            // isShowLoading
            //     ? CustomPositioned(
            //         child: RiveAnimation.asset(
            //           'assets/RiveAssets/check.riv',
            //           fit: BoxFit.cover,
            //           onInit: _onCheckRiveInit,
            //         ),
            //       )
            //     : const SizedBox(),
            // isShowConfetti
            //     ? CustomPositioned(
            //         scale: 6,
            //         child: RiveAnimation.asset(
            //           "assets/RiveAssets/confetti.riv",
            //           onInit: _onConfettiRiveInit,
            //           fit: BoxFit.cover,
            //         ),
            //       )
            //     : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key, this.scale = 1, required this.child});

  final double scale;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: 100,
            width: 100,
            child: Transform.scale(
              scale: scale,
              child: child,
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}