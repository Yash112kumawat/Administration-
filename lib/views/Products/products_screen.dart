import 'package:get/get.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/Products/add_product.dart';
import 'package:yami_seller/views/Products/product_detail.dart';
import 'package:yami_seller/views/widgets/appbar_widget.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class Products_Screen extends StatelessWidget {
  const Products_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {
          Get.to(() => AddProduct());
        },
        child: Icon(
          Icons.add,
          color: white,
        ),
      ),
      appBar: appbarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                20,
                (index) => Card(
                      child: ListTile(
                        onTap: () {
                          Get.to(() => ProductDetails());
                        },
                        leading: Image.asset(
                          imgproduct,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        title: boldText(
                          text: "Product title",
                          color: fontGrey,
                        ),
                        subtitle: Row(
                          children: [
                            normalText(text: "\$500.0", color: darkGrey),
                            10.widthBox,
                            boldText(text: "Featured", color: green)
                          ],
                        ),
                        trailing: VxPopupMenu(
                            child: Icon(Icons.more_vert_rounded),
                            menuBuilder: () => Column(
                                  children: List.generate(
                                    popupMenuTitles.length,
                                    (index) => Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: [
                                            Icon(popupMenuIcons[index]),
                                            10.widthBox,
                                            normalText(
                                                text: popupMenuTitles[index],
                                                color: darkGrey)
                                          ],
                                        ).onTap(() {})),
                                  ),
                                ).box.white.roundedSM.width(200).make(),
                            clickType: VxClickType.singleClick),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
