import 'package:martapp/widget_common/applogo_widget.dart';
import 'package:martapp/widget_common/bg_widget.dart';
import 'package:martapp/widget_common/custom_textfield.dart';
import 'package:martapp/widget_common/our_button.dart';

import 'package:martapp/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Log in to $appname'
                .text
                .white
                .fontFamily(semibold)
                .size(18)
                .make(),
            10.heightBox,
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
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createAccount.text.color(fontGrey).make(),
                ourButton(
                        color: lightGolden,
                        title: signUp,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make()
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make(),
          ],
        ),
      ),
    ));
  }
}
