import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

Widget customTextField({
  label,
  hint,
  controller,
  isDesc = false,
}) {
  return TextFormField(
    maxLines: isDesc ? 4 : 1,
    decoration: InputDecoration(
        isDense: true,
        label: normalText(text: label),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: white)),
        hintText: hint,
        hintStyle: TextStyle(color: lightGrey)),
  );
}
