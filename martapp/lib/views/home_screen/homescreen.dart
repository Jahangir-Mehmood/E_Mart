import 'package:get/get.dart';
import 'package:martapp/consts/consts.dart';
import 'package:martapp/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    return Scaffold(bottomNavigationBar: Obx(() {
      return Column(
        children: [
          Expanded(child: controller.navBody.elementAt(controller.currentIndex.value)),
          BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            items: controller.navItems,
            onTap: (value) {
              controller.currentIndex.value = value;
            },
          ),
        ],
      );
    }));
  }
}
