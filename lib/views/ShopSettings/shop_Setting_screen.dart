import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/colors.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/const/strings.dart';
import 'package:yami_seller/views/widgets/custom_textfield.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class ShopSettingsScreen extends StatelessWidget {
  const ShopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: white,
            )),
        title: boldText(
          text: shopSettings,
          size: 16.0,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: normalText(text: save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(label: shopname, hint: nameHint),
            10.heightBox,
            customTextField(label: address, hint: shopAddressHint),
            10.heightBox,
            customTextField(label: mobile, hint: shopMobileHint),
            10.heightBox,
            customTextField(label: website, hint: shopWebsiteHint),
            10.heightBox,
            customTextField(
                isDesc: true, label: description, hint: shopDescHint),
          ],
        ),
      ),
    );
  }
}
