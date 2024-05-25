import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/const/images.dart';
import 'package:yami_seller/const/strings.dart';
import 'package:yami_seller/views/widgets/custom_textfield.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(
          text: editProfile,
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
            Image.asset(
              imgproduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: white),
                onPressed: () {},
                child: normalText(text: changeImage, color: fontGrey)),
            10.heightBox,
            //Divider(),
            10.heightBox,
            customTextField(label: username, hint: "ex.yash kuamwat"),
            10.heightBox,
            customTextField(label: password, hint: passwordHint),
            10.heightBox,
            customTextField(label: confirmedPassword, hint: passwordHint)
          ],
        ),
      ),
    );
  }
}
