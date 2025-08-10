import 'package:wtoolboxweb/translation/wtw_translations.dart';
import 'resumebuilderuser_me_mne_translations.dart';
import 'resumebuilderuser_en_us_translations.dart';

class ResumeBuilderUserTranslations extends WTWTranslations {

  @override
  Map<String, Map<String, String>> get keys => {
    'me_MNE': ResumeBuilderUserMeMneTranslations().keys['me_MNE']!,
    'en_US':  ResumeBuilderUserEnUsTranslations().keys['en_US']!,
  };

}