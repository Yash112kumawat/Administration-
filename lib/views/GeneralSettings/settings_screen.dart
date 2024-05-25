import 'package:get/get.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/GeneralSettings/edit_profile_screen.dart';
import 'package:yami_seller/views/Messages%20Screen/message_screen.dart';
import 'package:yami_seller/views/ShopSettings/shop_Setting_screen.dart';

import 'package:yami_seller/views/widgets/text_style.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => EditProfileScreen());
              },
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              )),
          TextButton(
            onPressed: () {},
            child: normalText(text: logout),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imgproduct)
                .box
                .roundedFull
                .clip(Clip.antiAlias)
                .make(),
            title: boldText(text: "Vendor Name"),
            subtitle: normalText(text: "vendoremail@.com"),
          ),
          Divider(),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: List.generate(
                    profileButtonTitles.length,
                    (index) => ListTile(
                          onTap: () {
                            switch (index) {
                              case 0:
                                Get.to(() => ShopSettingsScreen());

                                break;
                              case 1:
                                Get.to(() => Messagescreen());
                                break;
                              default:
                            }
                          },
                          leading: Icon(
                            profileButtonIcons[index],
                            color: white,
                          ),
                          title: normalText(text: profileButtonTitles[index]),
                        ))),
          ),
        ],
      ),
    );
  }
}
