import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

Widget Button({
  title,
  color = purpleColor,
  onpress,
}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(12),
          backgroundColor: purpleColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      onPressed: onpress,
      child: boldText(text: title, size: 16.0));
}
