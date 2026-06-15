import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Authentication/presentation/widget/custom_input_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // create input controller for each field
    TextEditingController inputUsernameController = TextEditingController(
      text: "",
    );
    TextEditingController inputPasswordController = TextEditingController(
      text: "",
    );
    TextEditingController inputEmailController = TextEditingController(
      text: "",
    );
    TextEditingController inputPhoneNumberController = TextEditingController(
      text: "",
    );
    TextEditingController inputFirstNameController = TextEditingController(
      text: "",
    );
    TextEditingController inputLastNameController = TextEditingController(
      text: "",
    );

    return Stack(
      fit: StackFit.expand,
      children: [
        // create children for brush background color
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                customColor.goodStart!.withOpacity(0.5),
                customColor.goodEnd!.withOpacity(0.5),
              ],
            ),
          ),
        ),

        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Image.asset(
            "assets/images/to-do-logo.png",
            width: 270,
            height: 270,
          ),
        ),

        // create main input
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: customColor.cardBackgroundColor2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(-2, 3),
                  blurRadius: 12,
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(2, 3),
                  blurRadius: 12,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Register To Do App",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle,
                  ),
                ),
                SizedBox(height: 28),
                CustomInputWidget(
                  textEditing: inputUsernameController,
                  textLabel: "Username",
                  isPassword: false,
                ),
                SizedBox(height: 12),
                CustomInputWidget(
                  textEditing: inputPasswordController,
                  textLabel: "Password",
                  isPassword: true,
                ),
                SizedBox(height: 12),
                CustomInputWidget(
                  textEditing: inputEmailController,
                  textLabel: "Email",
                  isPassword: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 12),
                CustomInputWidget(
                  textEditing: inputPhoneNumberController,
                  textLabel: "Phone Number",
                  isPassword: false,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 12),
                CustomInputWidget(
                  textEditing: inputFirstNameController,
                  textLabel: "First Name",
                  isPassword: false,
                ),
                SizedBox(height: 12),
                CustomInputWidget(
                  textEditing: inputLastNameController,
                  textLabel: "Last Name",
                  isPassword: false,
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // cancle button
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                        backgroundColor: customColor.averageEnd,
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                      ),
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                        backgroundColor: customColor.excellentStart,
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // create children for top container
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(left: 32),
            padding: EdgeInsetsGeometry.only(
              left: 12,
              right: 12,
              bottom: 22,
              top: 48,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  customColor.averageStart!.withOpacity(0.7),
                  customColor.averageEnd!.withOpacity(0.7),
                ],
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: Offset(-3, 2),
                  blurRadius: 40,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcome On Board",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Register with your valid credential",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: customColor.textTitle,
                  ),
                ),
              ],
            ),
          ),
        ),

        // create main input on center
      ],
    );
  }
}
