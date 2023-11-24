import 'package:get/get.dart';
import 'package:martapp/consts/consts.dart';
import 'package:martapp/controllers/home_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    return Scaffold(
      bottomNavigationBar: Column(
        children: [
          Obx(() {
            return Expanded(child: controller.navBody.elementAt(controller.currentIndex.value));
          }),
          Obx(() {
            return BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              selectedItemColor: redColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              items: controller.navItems,
              onTap: (value) {
                controller.currentIndex.value = value;
              },
            );
          }),
        ],
      ),
    );
  }
}
