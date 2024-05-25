import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:yami_seller/Controllers/Home_controller.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/GeneralSettings/settings_screen.dart';
import 'package:yami_seller/views/Orders/order_screen.dart';
import 'package:yami_seller/views/Products/products_screen.dart';
import 'package:yami_seller/views/home_screen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navScreen = [
      const Home_Screen(),
      const Products_Screen(),
      const Orders_Screen(),
      const Settings()
    ];

    var bottomNavbar = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: dashboard),
      BottomNavigationBarItem(
          icon: Image.asset(
            icproducts,
            color: darkGrey,
            width: 24,
          ),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(
            icorders,
            color: darkGrey,
            width: 24,
          ),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(
            icgeneralSetting,
            color: darkGrey,
            width: 24,
          ),
          label: settings)
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (index) {
              controller.navIndex.value = index;
            },
            currentIndex: controller.navIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: purpleColor,
            unselectedItemColor: darkGrey,
            items: bottomNavbar),
      ),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,

      //   title: boldText(text: dashboard, color: fontGrey, size: 18.0),
      // ),

      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: navScreen.elementAt(controller.navIndex.value),
            ),
          ],
        ),
      ),
    );
  }
}
