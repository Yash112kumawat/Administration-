import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/colors.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/Orders/components/order_placed.dart';
import 'package:yami_seller/views/widgets/button.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

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
        title: boldText(text: "Order Details", color: fontGrey, size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: Button(color: green, onpress: () {}, title: "Confirm Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
//order delivery status section

              Visibility(
                child: Column(
                  children: [
                    boldText(
                        text: "Order Status:", color: fontGrey, size: 16.0),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: "Placed", color: fontGrey),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: "Confrimed", color: fontGrey),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: false,
                      onChanged: (value) {},
                      title: boldText(text: "on Delivery", color: fontGrey),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: false,
                      onChanged: (value) {},
                      title: boldText(text: "Delivered", color: fontGrey),
                    )
                  ],
                )
                    .box
                    .padding(EdgeInsets.all(8.0))
                    .outerShadowMd
                    .white
                    .border(color: lightGrey)
                    .roundedSM
                    .make(),
              ),

              //order detail section
              Column(
                children: [
                  orderPlacedDetails(
                      d1: "data['order_code']",
                      d2: "data['shipping_method']",
                      title1: "Order Code",
                      title2: "Shipping Method"),
                  orderPlacedDetails(
                      d1: DateTime.now(),
                      //d1: intl.DateFormat().add_ymd().format((data['order_date'].toDate())),
                      d2: "data['payment_method']",
                      title1: "Order Date",
                      title2: "Payment Method"),
                  orderPlacedDetails(
                      d1: "Unpaid",
                      d2: "Order Placed",
                      title1: "Payment Status",
                      title2: "Delivery Status"),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText(
                                text: "Shipping Address", color: purpleColor),
                            // "Shipping Address".text.fontFamily(semibold).make(),
                            "{data['order_by_name']}".text.make(),
                            "{data['order_by_email']}".text.make(),
                            "{data['order_by_address']}".text.make(),
                            "{data['order_by_city']}".text.make(),
                            "{data['order_by_state']}".text.make(),
                            "{data['order_by_phonenumber']}".text.make(),
                            "{data['order_by_postalcode']}".text.make()
                          ],
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              boldText(
                                  text: "Total Amount", color: purpleColor),
                              boldText(text: "\$300.0", color: red, size: 16.0),
                              //  "Total Amount"
                              //      .text
                              //      .fontFamily(semibold)
                              //     .color(redColor)
                              //    .make(),
                              //  "${data['total_amount']}"
                              //      .text
                              //    .fontFamily(bold)
                              //   .color(redColor)
                              //   .make()
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
                  .box
                  .outerShadowMd
                  .white
                  .border(color: lightGrey)
                  .roundedSM
                  .make(),
              Divider(),
              10.heightBox,
              boldText(text: "Ordered Product", color: fontGrey, size: 16.0),
              //    "Ordered Product"
              //       .text
              //      .fontFamily(semibold)
              //     .color(darkGrey)
              //   .size(16)
              //      .makeCentered(),
              10.heightBox,
              ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(3,
                          // data['orders'].length,
                          (index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            orderPlacedDetails(
                                title1: "data['orders'][index]['title']",
                                title2: "data['orders'][index]['tprice']",
                                d1: "{data['orders'][index]['qty']}x",
                                d2: "Non Refudable"),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                  width: 30,
                                  height: 20,
                                  color:
                                      purpleColor //Color(data['orders'][index]['color']),
                                  ),
                            ),
                            const Divider(),
                          ],
                        );
                      }).toList())
                  .box
                  .outerShadowSm
                  .white
                  .margin(EdgeInsets.only(bottom: 4))
                  .make(),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
