import 'package:get/get.dart';
import 'package:martapp/consts/consts.dart';
import 'package:martapp/consts/list.dart';
import 'package:martapp/views/splash_Screen/auth_screen/signup.dart';
import 'package:martapp/widget_common/applogo_widget.dart';
import 'package:martapp/widget_common/bg_widget.dart';
import 'package:martapp/widget_common/custom_textfield.dart';
import 'package:martapp/widget_common/our_button.dart';

import '../../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Log in to $appname'.text.white.fontFamily(semibold).size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPasswowd.text.make(),
                  ),
                ),
                5.heightBox,
                ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(Home());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createAccount.text.color(fontGrey).make(),
                ourButton(
                    color: lightGolden,
                    title: signUp,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => SignUpcreen());
                    }).box.width(context.screenWidth - 50).make()
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
            10.heightBox,
            loginWith.text.color(lightGrey).make(),
            5.heightBox,
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ),
                        )))
          ],
        ),
      ),
    ));
  }
}
