import 'package:url_launcher/url_launcher.dart';
launchurl(){
  const url =
      'whatsapp://send?text=Eid Mubarak!\n      '
      'May Allah accept all our good deeds. May Allah bless us tawfeeq to do all those aamaal in coming days with which HE will be pleased. May Allah protect whole humanity in general with this pandemic.'
      '\n      '
      'Wish your friends and families by sharing this link\n       '
      'https://wish-happy-eid.web.app'
      ''
  ;
  launch(url);
}