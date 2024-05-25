import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

Widget productDropDown() {
  return DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              hint: normalText(text: "Choose Category", color: fontGrey),
              value: null,
              isExpanded: true,
              items: const [],
              onChanged: (value) {}))
      .box
      .white
      .roundedSM
      .padding(EdgeInsets.symmetric(horizontal: 4))
      .make();
}
