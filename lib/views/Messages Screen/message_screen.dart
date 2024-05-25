import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/Messages%20Screen/chat_screen.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class Messagescreen extends StatelessWidget {
  const Messagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: darkGrey,
            )),
        title: boldText(text: messages, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                  20,
                  (index) => ListTile(
                        onTap: () {
                          Get.to(() => ChatScreen());
                        },
                        leading: CircleAvatar(
                            backgroundColor: purpleColor,
                            child: Icon(
                              Icons.person,
                              color: white,
                            )),
                        title: boldText(text: "Username", color: fontGrey),
                        subtitle: normalText(
                            text: "Last Message...", color: darkGrey),
                        trailing: normalText(text: "10.45pm", color: darkGrey),
                      )),
            )),
      ),
    );
  }
}
