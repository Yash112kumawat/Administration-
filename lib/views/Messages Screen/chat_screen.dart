import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/colors.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/const/strings.dart';
import 'package:yami_seller/views/Messages%20Screen/components/chat_bubble.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
        title: boldText(text: chat, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return chatBubble();
              },
            )),
            10.heightBox,
            SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          isDense: true,
                          hintText: "Enter message",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: purpleColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: purpleColor))),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: purpleColor,
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
