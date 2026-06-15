import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Authentication/presentation/widget/custom_input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // create controller for input
    final usernameTextInputController = TextEditingController();
    final passwordTextInputController = TextEditingController();

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [customColor.averageStart!, customColor.averageEnd!],
            ),
          ),
        ),

        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Image.asset(
            "assets/images/to-do-logo.png",
            width: 450,
            height: 450,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, -4),
                  blurRadius: 16,
                ),
              ],
              color: customColor.cardBackgroundColor2,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "To Do App",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: customColor.textTitle,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Sign In With Your Previous Account,",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: customColor.textTitle,
                    ),
                  ),
                  SizedBox(height: 48),
                  // username input
                  CustomInputWidget(
                    textEditing: usernameTextInputController,
                    textLabel: "Username",
                    isPassword: false,
                  ),
                  SizedBox(height: 16),
                  CustomInputWidget(
                    textEditing: passwordTextInputController,
                    textLabel: "Password",
                    isPassword: true,
                  ),
                  SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "not have account yet?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: customColor.textTitle,
                        ),
                      ),
                      SizedBox(width: 2),
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 2,
                          ),
                          shape: LinearBorder.bottom(
                            side: BorderSide(
                              color: customColor.textTitle!,
                              width: 2.0,
                            ),
                          ),
                        ),
                        onPressed: () {
                          // navigate to register
                          context.push("/register");
                        },
                        child: Text(
                          "register",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: customColor.textTitle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  TextButton(
                    onPressed: () {
                      // login button
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(8),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 24,
                      ),
                      backgroundColor: customColor.excellentStart,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: customColor.textTitle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
