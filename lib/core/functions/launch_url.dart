
import 'package:book_app/core/functions/custom_show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String url) async {
Uri uri = Uri.parse(url);
if (await canLaunchUrl(uri)) {
  await launchUrl(uri);
}
else{
  showSnack(context, 'cannot launch');
}
}
