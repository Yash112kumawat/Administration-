import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

AppBar appbarWidget(title) {
  return AppBar(
      backgroundColor: white,
      automaticallyImplyLeading: false,
      title: boldText(text: products, color: darkGrey, size: 16.0),
      actions: [
        Center(
          child: normalText(
            text: intl.DateFormat('EEE,MMM,d' 'yy').format(DateTime.now()),
            color: purpleColor,
          ),
        )
      ]);
}
