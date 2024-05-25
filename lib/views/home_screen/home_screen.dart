import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/widgets/appbar_widget.dart';
import 'package:yami_seller/views/widgets/dashboard_button.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(dashboard),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dashboardButton(context,
                      title: products, count: "75", icon: icproducts),
                  dashboardButton(context,
                      title: orders, count: "15", icon: icorders)
                ],
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dashboardButton(context,
                      title: rating, count: "75", icon: icstar),
                  dashboardButton(context,
                      title: totalsales, count: "15", icon: icorders)
                ],
              ),
              10.heightBox,
              const Divider(),
              10.heightBox,
              boldText(text: polpular, color: darkGrey, size: 20.0),
              20.heightBox,
              ListView(
                shrinkWrap: true,
                children: List.generate(
                    8,
                    (index) => ListTile(
                          onTap: () {},
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
                          subtitle: normalText(text: "\$40.0", color: darkGrey),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
