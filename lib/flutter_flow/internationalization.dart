import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'hi', 'mr', 'or', 'te'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String hiText = '',
    String mrText = '',
    String orText = '',
    String teText = '',
  }) =>
      [enText, hiText, mrText, orText, teText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // enter_language
  {
    'hfhoyrqs': {
      'en': 'Login',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jzlflwox': {
      'en': 'AgroAID',
      'hi': 'ऍग्रोएड',
      'mr': 'ऍग्रोएड',
      'or': 'ऍग्रोएड',
      'te': 'ఆగ్రోఎయిడ్',
    },
    '2fgnwyj5': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // enter_phonenumber
  {
    'yssrvxry': {
      'en': 'Enter your Phone number',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uyqassmk': {
      'en': 'Enter Phone Number',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ogog7m3l': {
      'en': '+91 -',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '62b9gh96': {
      'en': 'Send OTP',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6hnqj92z': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // verify_otp
  {
    'cg0gk864': {
      'en': 'Please enter the OTP',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'evyignf0': {
      'en': 'Enter Code',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0x79bp2j': {
      'en': 'Verify\n',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm6z7aaqi': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // landing_page
  {
    'zsfq7wwb': {
      'en': 'Neerukonda',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jivmila9': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'i0m11pq4': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'rqoy5rpg': {
      'en': 'Talk with agro \nexperts directly !!',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wa5ymcb9': {
      'en': 'News',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3stm02hn': {
      'en':
          'Wheat prices, which had decreased following rumours about India likely to curb wheat exports ..',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wyl8hljp': {
      'en':
          'The government has revised\n downwards the estimate for \nwheat production by 5.7 per \ncent to 105 million tonnes in \nthe 2021-22  crop year ending June \n\n',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jmxxyn63': {
      'en':
          'Sugar production in India has \nincreased by 14 per cent to \n34.2 million tonnes (MT) so far in\n the ongoing 2021-22 marketing year, \nand is expected to touch a record \nof 35.5 MT, cooperative body \nNFCSF said on Thursday.\n\n',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'z8rouubz': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // new_reg_details
  {
    'yzv03626': {
      'en': 'PLEASE ENTER YOUR DETAILS ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5qonxkvi': {
      'en': '                                   NAME ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'edqcfm5k': {
      'en': 'Please enter name',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zz6q4g3v': {
      'en': '                                    STATE',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4n51t2a9': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dlclb1vb': {
      'en': '                                       DISTRICT ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'avxeas0z': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cmammhi2': {
      'en': '                                        ADDRESS',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7xz0msa9': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qg81b09n': {
      'en': '                                        PIN CODE',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '10gvmvxx': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2ah5kukb': {
      'en': '                               AADHAAR NUMBER ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tthz4hru': {
      'en': '[Some hint text...]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1z0cnwqq': {
      'en': 'UPLOAD PHOTO',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9r24zj56': {
      'en': 'SUBMIT ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'clz6f90b': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // side_drawer
  {
    'ge46b3e1': {
      'en': 'Crop Information ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gdkdw4s6': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2edug73a': {
      'en': 'Weather ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm0uvz0dp': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lt1o3xop': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6ou5vmop': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zgjouc68': {
      'en': 'Notification',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm3fmmai5': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'w5bs3rtc': {
      'en': 'News',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    's623pi2j': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'owa6g8k5': {
      'en': 'Vendors',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9y4km18f': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jq5atwm8': {
      'en': 'Share',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6jzli0ji': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '97pj2512': {
      'en': 'Hire Machinery',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ojwv2thp': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'p1miry66': {
      'en': 'Hire Labour',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ructz9gl': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ii72bt1u': {
      'en': 'FAQs ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    't9dggow7': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'szw3eih7': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8pwpalpn': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // CROPINFO
  {
    '2v5sbddr': {
      'en': '    CROP INFORMATION',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mwtd2opc': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // rough
  {
    '8d90k710': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4aj9nnlv': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // side_drawerCopy
  {
    'onu6abns': {
      'en': 'Crop Information ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gquumlul': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2vp2omvu': {
      'en': 'Weather ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1udd3sa5': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5rrduwz0': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dlnjdhce': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8n7kegnx': {
      'en': 'Notification',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wzlnnth7': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'joyqc15x': {
      'en': 'News',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ij4mf332': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'g07y45z9': {
      'en': 'Vendors',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fty3964g': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'aw8hz0mv': {
      'en': 'Share',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'oad02ggl': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'w490pek3': {
      'en': 'Hire Machinery',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ty19e3mt': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tddwqj6j': {
      'en': 'Hire Labour',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'q6znfay3': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'xh96a17d': {
      'en': 'FAQs ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2n6h3nhn': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'flk5uifn': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // crop1
  {
    '7ii6dyoa': {
      'en': 'WHEAT',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mfoe5avk': {
      'en': 'Introduction',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6inic88f': {
      'en':
          'Wheat a cereal which is the most important \nkind grown in temperate countries, the grain \nof which is  ground to make flour for bread, pasta, pastry, etc.\n',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uc4ibsc3': {
      'en': 'climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2u8pdm2w': {
      'en':
          'Wheat grows best when the temperatures are warm\n, around from 21° to 24° C/ 70° to 75° F, but are not \ntoo hot. Wheat also needs a lot of sunshine,\n especially when the grains are beginning to fill out. \nWheat grows best in temperatures between\n21ºC/70ºF and 24ºC/75º F.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5ndak5ob': {
      'en': 'soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jrtic7u7': {
      'en':
          'Soils with a clay loam or loam texture,\n good structure and moderate water holding \ncapacity are ideal for wheat cultivation.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3pmer6do': {
      'en': 'fertilizer',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2atnkhcx': {
      'en':
          'Muriate of potash and potassium sulphate \nare the only potassic fertilizers presently available\n in the market. Both are equally good for wheat.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '13hfxwh0': {
      'en': 'weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zrzez4qk': {
      'en':
          'this is the appnjnhbvnvfbhdbfjnffefeiefh\nvucccyy ctucycucttuujjcu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'aq42ohup': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'bhwvzqoj': {
      'en':
          'Form beds of size 10 m2 or 20 m2.\n The irrigation channels are to be provided \nsufficiently. The crop requires 4 - 6 irrigations \ndepending on the soil type and rainfall.\nWheat crop requires minimum of 5 irrigations \nat the following critical stages.\n\n            I – Immediately after sowing\n            II – Crown root intiation        : 15-20 DAS\n            III- Active tillering stage        : 35-40 DAS\n            IV- Flowering stage              : 50-55 DAS\n            V- Grain filling stage             : 70-75 DAS\n\nCrown root initiation and flowering are the most \ncritical stages.\nWater stagnation should be avoided at the time \nof germination.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'kncoffj7': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'w5es4dgc': {
      'en':
          'qwertyuiokjhgfd\nmnbvcxasdfghjkl\niuyyxcvcbisdhcuyfyuwertyuiokjhgfdxcvbnjht',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'hapa135t': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop2
  {
    '0zk4lb12': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j1d3u80i': {
      'en': 'CROP 2',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'snuvvv0s': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7cj6k82f': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveuv',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tjwpk4jg': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'clg05jvj': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0moxqslc': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'sqa5izsm': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dk5nfbid': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'siyf0t8k': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2y2xzsiw': {
      'en': 'Weed control',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3mapa1q1': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jzcaixme': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fjrueh7p': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9myd98bv': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ga2qoudb': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'aa0jrckt': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop3
  {
    'dbusc1uo': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'y8ak18yi': {
      'en': 'Crop 3 ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3ib9dhm3': {
      'en': 'Intoduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8m3cnd1p': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mtpzsc03': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'icam4c1d': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qo9xlxry': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lsz9e0bj': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ssxow786': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l43lpu5d': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qmgmvl1m': {
      'en': 'weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3t51ef9g': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0mstrokg': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pk4hxcln': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'z0d2wwwr': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'v65rcqmz': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1dobp20u': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop4
  {
    '3flpkz2q': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fjhakv07': {
      'en': 'CROP 4 ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '20m1jy04': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qpr1rdb5': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lydr1bf6': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8z4ujy3e': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j1q7f5hv': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'sg4tf227': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'av0524sk': {
      'en': 'Fertlizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mde8xh20': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fd6oc6dy': {
      'en': 'Weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l4i38l17': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'r38ydtu8': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tlcjlpz3': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ayzi3o2y': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'knweko1l': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'nfkyq7gk': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop5
  {
    'kqtw8sex': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3qqw0ihe': {
      'en': 'Crop 5 ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ohmegtq0': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9soaim57': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fp85llfg': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qkgrhqa1': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2hune06t': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'hd2gypil': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3vfm23n0': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'i70970ue': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uqh2kc6h': {
      'en': 'Weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2qynlzxu': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'n58yai7b': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gzwcz6u2': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'w4zymafe': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0tok0wmy': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pv1k37ym': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop6
  {
    '564ex4s2': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l9lvkfic': {
      'en': 'CROP6',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7p7flycm': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dp2pgld3': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm1gsqnhq': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'y1j4nyiq': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '93fzcvc4': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'kuvcscc0': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'o8h8739q': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8tfjah2z': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ly7d5tcj': {
      'en': 'Weed control',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jk9pdvx6': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lortln8a': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ixzxx9o4': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '967ap41m': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm76fo4sd': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'laec3xba': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop7
  {
    'm6w97tkj': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'a86yqlt8': {
      'en': 'CROP7 ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'f9ve857r': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4525f6re': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3y6b7elt': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '47nu28hz': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zw4oyvbo': {
      'en': 'Soil type',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uuiuyb3r': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'bqfykb9f': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lb7mbh0p': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '52qfpdwx': {
      'en': 'Weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'myv0mgyl': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'km3elghv': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'p8sww8h0': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '88rx2auy': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'e9notpji': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'picwn99v': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop8
  {
    '3z2irj05': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '47qr0ld7': {
      'en': 'CROP8 ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6hdeu0bl': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6vdtfqid': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6a7h8t6k': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gn3vc0ka': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'suyhb34d': {
      'en': 'Soil type',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jnvq1dyk': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3yzbxb0n': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pgupdpke': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1wza4iyg': {
      'en': 'weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5f8fkxr6': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'xhgq42gb': {
      'en': 'Irrigation',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cvcjok9r': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1h0khevj': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1krhhja3': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zxtngolb': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop9
  {
    '6j95xvid': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fc4ov8id': {
      'en': 'CROP9',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'z4yt5o7j': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uq0h3uhd': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'enbpqx1j': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mxn686oo': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5v7ed1rs': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cxekc73j': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    't7hcrxkn': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'vw940gm2': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'foppplga': {
      'en': 'Weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'vjavswir': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7716hm2q': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'beplnklc': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wu4ogc3y': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4ez2wa7z': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'd8u265rk': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop10
  {
    '1fp2ve1i': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cfh794q9': {
      'en': 'CROP10',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zms5znmu': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'g15vp6yq': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'rlg90q3o': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'flkwbzpe': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mo6fp348': {
      'en': 'Soil type',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mc75uqa6': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'srzpv5te': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ecil57z6': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3w3xszqx': {
      'en': 'Weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'n3sa7lvn': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'vncdobc9': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '29cwlx2b': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jazs3efc': {
      'en': 'Harvesing ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9pwwru3d': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tz99jdn0': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop11
  {
    'lh8346az': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0ckgaiu7': {
      'en': 'CROP11',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gbpjx2th': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'esoho1er': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7wagatak': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'h0wxg0y5': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3fna0qph': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'obu6l2fn': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'x7j1dv51': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'telkb0eb': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9z2l9dz2': {
      'en': 'Weed control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9iewc08g': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l7odm4vt': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3y8yhfyi': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5b28if7b': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'vitp3pxm': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0eioyuhc': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Crop12
  {
    'd4gg7oqr': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    's0qa49wn': {
      'en': 'CROP12',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'js0yu90e': {
      'en': 'Introduction ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ihf714be': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5krx1awy': {
      'en': 'Climate ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'a8ppx66m': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'b95aoq4g': {
      'en': 'Soil type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8qx3es5l': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9z5uc98m': {
      'en': 'Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6n67yqbh': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qy2erpm5': {
      'en': 'Weed control',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pvzrd5zm': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cub8cs55': {
      'en': 'Irrigation ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6sq3mqps': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '21w4ngpd': {
      'en': 'Harvesting ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pyw6io2k': {
      'en':
          'h njnobsuvyjidiiqpqowoeijrbrjnfjnvjbvjbfjfnfkoofo\nnincjcdndnvufhifjdidjidjodjfihviffjfifhiuiififooorooooo\nhvb vuifvbiufvveu',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uq10ywnr': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // Soiltesting
  {
    'mt9ffkiw': {
      'en': 'Trial Package                                     \$20',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lgaug4j4': {
      'en': 'soil sample analysis for 6 parameters :',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'iejtr21q': {
      'en': 'pH',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uupv5zbq': {
      'en': 'Organic  carbon (C)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'be0j0t2u': {
      'en': 'Electrical conductivity (Ec)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0gygkccs': {
      'en': 'Nitrogen (N)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'isxngucd': {
      'en': 'Phosporous(P)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'rs2pk8by': {
      'en': 'Pottasium(K)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'g24521ww': {
      'en': 'BUY NOW ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'i1yu7jnm': {
      'en': 'Basic pacakge                                \$100',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'e9ow1itx': {
      'en': 'soil sample analysis for 14 elements :',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1upoi5je': {
      'en': 'pH',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '55wyna54': {
      'en': 'Organic Carbon (OC)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '97shccc2': {
      'en': 'Electrical conductivity (Ec)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ooif4nd9': {
      'en': 'Nitrogen(N)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2i0iwqm3': {
      'en': 'Phosporous(P)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cifzwmvw': {
      'en': 'Pottasium (K)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'md6tu8fs': {
      'en': 'calcium (Ca)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gphiyezj': {
      'en': 'Magnesium (Mg)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'oee1tfyz': {
      'en': 'Sulfur (S)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'sa4yhjgl': {
      'en': 'Zink(Zn)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '06oh33go': {
      'en': 'Mnaganese (Mn)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'brd87f6l': {
      'en': 'Iron (Fe)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'y54oyh3g': {
      'en': 'Copper (Cu)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'bup2imxb': {
      'en': 'Boron (B)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cxctj9g5': {
      'en': 'BUY NOW ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'odqaj3q8': {
      'en': 'Standered  pacakage                      \$500',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cg7v9p5i': {
      'en': 'soil sample analysis for 15 elements :',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'krvkjm1j': {
      'en': 'pH',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ijjkw2em': {
      'en': 'Electrical conductivity (Ec)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mcq988pi': {
      'en': 'Organic carbon (OC)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5w3syzpu': {
      'en': 'Nitrogen (N)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6czer8qr': {
      'en': 'Phosporous (P)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'k2mv28k5': {
      'en': 'potassium ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8410atkc': {
      'en': 'Calcium  ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ri1j36ny': {
      'en': 'Magnesium ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'aigpdj37': {
      'en': 'Sulfur ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7ig2q6ou': {
      'en': 'Zink ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j1vv0ka2': {
      'en': 'Manganese ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'kq432jqv': {
      'en': 'Iron ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zrqtcufo': {
      'en': 'Copper ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'te5w3jgn': {
      'en': 'Boron ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0jylqknv': {
      'en': 'lime requriements / Gypsum requriements ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gq5trm7h': {
      'en': 'BUY NOW ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wljwgox0': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // weather
  {
    'wx6rizik': {
      'en': 'Page Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gylus02j': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
