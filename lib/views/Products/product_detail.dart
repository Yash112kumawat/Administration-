import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/colors.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

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
        title: boldText(text: "Product title", color: fontGrey, size: 16.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VxSwiper.builder(
                autoPlay: true,
                height: 350,
                itemCount: 3, //data['P_img'].length,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imgproduct,
                    // data['P_img'][index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
              ),

              10.heightBox,
              //  title!.text
              //    .size(16)
              //    .color(darkFontGrey)
              //      .fontFamily(semibold)
              //    .make(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(
                        text: "Product title", color: fontGrey, size: 16.0),
                    10.heightBox,
                    Row(
                      children: [
                        boldText(text: "Category", color: fontGrey, size: 16.0),
                        20.widthBox,
                        normalText(
                            text: "Subcategory", color: fontGrey, size: 16.0)
                      ],
                    ),
                    10.heightBox,
                    VxRating(
                      isSelectable: false,
                      value: 3.0,
                      // value: double.parse(data['P_ratings']),
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: false,
                      maxRating: 5,
                    ),

                    10.heightBox,

                    boldText(text: "Rs- 300.0", color: red, size: 18.0),
                    // "Rs"
                    //     "${data['P_price']}"
                    //  .text
                    //  .color(fontGrey)
                    //   .size(18)
                    //   .fontFamily(bold)
                    //   .make(),

//color section

                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: normalText(text: "Color", color: fontGrey),
                              //   child: "Size:".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                3,
                                //data['P_colors'].length,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    // .color(Color(
                                    //     data['P_colors']
                                    //      [index])
                                    // .withOpacity(1.0))
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .make()
                                    .onTap(() {
                                  // controller.changeColorIndex(index);
                                }),
                              ),
                            )
                          ],
                        ),
                        10.heightBox,
                        Row(children: [
                          SizedBox(
                            width: 100,
                            child:
                                normalText(text: "Quantity", color: fontGrey),
                            //  child: "Quantity:".text.color(textfieldGrey).make(),
                          ),
                          normalText(text: "50 items", color: red),
                          1.widthBox,
                        ])

                        //total row
                      ],
                    ).box.white.padding(EdgeInsets.all(8.0)).make(),
                    Divider(),

                    10.heightBox,

                    boldText(text: "Description", color: fontGrey),
                    //    "Description"
                    //     .text
                    //    .color(darkFontGrey)
                    //    .fontFamily(semibold)
                    //      .make(),
                    10.heightBox,

                    normalText(
                        text: "Description of this item ", color: fontGrey)

                    //  "${data['P_dersc']}"
                    //     .text
                    //    .color(darkFontGrey)
                    //    .fontFamily(bold)
                    //   .size(18)
                    // .make(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
