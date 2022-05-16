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
      'hi': 'OTP भेजें',
      'mr': 'OTP पाठवा',
      'or': 'OTP ପଠାନ୍ତୁ |',
      'te': 'OTPని పంపండి',
    },
    'rpbpkpdq': {
      'en': 'AgroAID',
      'hi': 'एग्रोएड',
      'mr': 'AgroAID',
      'or': 'AgroAID',
      'te': 'AgroAID',
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
      'hi': 'कृपया ओटीपी दर्ज करें',
      'mr': 'कृपया OTP टाका',
      'or': 'ଦୟାକରି OTP ପ୍ରବେଶ କରନ୍ତୁ |',
      'te': 'దయచేసి OTPని నమోదు చేయండి',
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
      'hi': 'सत्यापित करना',
      'mr': 'सत्यापित करा',
      'or': 'ଯାଞ୍ଚ କରନ୍ତୁ |',
      'te': 'ధృవీకరించండి',
    },
    'fk7s8nz3': {
      'en': 'Re-send OTP',
      'hi': 'ओटीपी पुनः भेजें',
      'mr': 'OTP पुन्हा पाठवा',
      'or': 'OTP ପୁନ Re ପଠାନ୍ତୁ |',
      'te': 'OTP ను మళ్ళీ పంపు',
    },
    'qqzem8i6': {
      'en': 'AgroAID',
      'hi': 'ऍग्रोएड',
      'mr': 'ऍग्रोएड',
      'or': 'ऍग्रोएड',
      'te': 'ఆగ్రోఎయిడ్',
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
      'hi': 'नीरूकोन्डा',
      'mr': 'नीरुकोंडा',
      'or': 'ନେରୁକୋଣ୍ଡା |',
      'te': 'నీరుకొండ',
    },
    'jivmila9': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुख्यपृष्ठ',
      'or': 'ଘର',
      'te': 'హోమ్',
    },
    'i0m11pq4': {
      'en': 'Chat',
      'hi': 'बात करना',
      'mr': 'गप्पा',
      'or': 'ଚାଟ୍ କରନ୍ତୁ |',
      'te': 'చాట్',
    },
    '1ehpij38': {
      'en': 'Get Your \nsoil Tested \nnow!!',
      'hi': 'अब अपनी\n मिट्टी की \nजांच करवाएं\n !!',
      'mr': 'आत्ताच तुमची \nमाती चाचणी \nकरा!!',
      'or': 'ବର୍ତ୍ତମାନ\n ତୁମର ମାଟି \nପରୀକ୍ଷା କର !!',
      'te': 'మీ మట్టిని \nఇప్పుడే\n పరీక్షించుకోం\nడి!!',
    },
    'rqoy5rpg': {
      'en': 'Talk with agro experts                      ',
      'hi': 'कृषि विशेषज्ञों से बात करें',
      'mr': 'कृषी तज्ज्ञांशी चर्चा करा',
      'or': 'ଏଗ୍ରୋ ବିଶେଷଜ୍ଞମାନଙ୍କ ସହିତ କଥାବାର୍ତ୍ତା |',
      'te': 'వ్యవసాయ నిపుణులతో మాట్లాడండి',
    },
    'wa5ymcb9': {
      'en': 'News',
      'hi': 'समाचार',
      'mr': 'बातम्या',
      'or': 'ସମ୍ବାଦ',
      'te': 'వార్తలు',
    },
    '3stm02hn': {
      'en':
          'Wheat prices, which had decreased following rumours about India likely to curb wheat exports ..',
      'hi':
          'गेहूं के निर्यात पर अंकुश लगाने की भारत की अफवाहों के बाद घटी थी गेहूं की कीमतें..',
      'mr':
          'भारताच्या गव्हाच्या निर्यातीवर अंकुश येण्याची शक्यता असलेल्या अफवांमुळे गव्हाच्या किमती घसरल्या होत्या..',
      'or':
          'ଗହମ ମୂଲ୍ୟ, ଯାହା ଭାରତ ଗହମ ରପ୍ତାନିକୁ ରୋକିବା ସମ୍ଭାବନା ବିଷୟରେ ଗୁଜବ ପରେ ହ୍ରାସ ପାଇଥିଲା ..',
      'te':
          'గోధుమల ఎగుమతులను అరికట్టే అవకాశం భారత్‌పై వస్తున్న వదంతుల నేపథ్యంలో తగ్గిన గోధుమల ధరలు..',
    },
    'wyl8hljp': {
      'en':
          'The government has revised\n downwards the estimate for \nwheat production by 5.7 per \ncent to 105 million tonnes in \nthe 2021-22  crop year ending June \n\n',
      'hi':
          'सरकार ने जून में समाप्त होने वाले फसल वर्ष 2021-22 में गेहूं उत्पादन का अनुमान 5.7 प्रतिशत घटाकर 105 करोड़ टन कर दिया है।',
      'mr':
          'सरकारने जूनमध्ये संपलेल्या 2021-22 पीक वर्षात गव्हाच्या उत्पादनाचा अंदाज 5.7 टक्क्यांनी कमी करून 105 दशलक्ष टन केला आहे.',
      'or':
          'ଜୁନ୍ ଶେଷ ହେଉଥିବା 2021-22 ଫସଲ ବର୍ଷରେ ଗହମ ଉତ୍ପାଦନ ପାଇଁ ସରକାର 5.7 ପ୍ରତିଶତରୁ 105 ନିୟୁତ ଟନକୁ ହ୍ରାସ କରିଛନ୍ତି।',
      'te':
          'జూన్‌తో ముగిసే 2021-22 పంట సంవత్సరంలో గోధుమ ఉత్పత్తి అంచనాను 5.7 శాతం తగ్గించి 105 మిలియన్ టన్నులకు ప్రభుత్వం సవరించింది.',
    },
    'jmxxyn63': {
      'en':
          'Sugar production in India has \nincreased by 14 per cent to \n34.2 million tonnes (MT) so far \nin\n the ongoing 2021-22 marketing year, \nand is expected to touch a record \nof 35.5 MT, cooperative body \nNFCSF said on Thursday.\n\n',
      'hi':
          'सहकारी संस्था एनएफसीएसएफ ने गुरुवार को कहा कि भारत में चीनी उत्पादन 2021-22 के विपणन वर्ष में अब तक 14 प्रतिशत बढ़कर 34.2 मिलियन टन (एमटी) हो गया है, और 35.5 मीट्रिक टन के रिकॉर्ड को छूने की उम्मीद है।',
      'mr':
          'चालू 2021-22 मार्केटिंग वर्षात आतापर्यंत भारतात साखर उत्पादन 14 टक्क्यांनी वाढून 34.2 दशलक्ष टन (MT) झाले आहे आणि 35.5 MT च्या विक्रमाला स्पर्श करेल अशी अपेक्षा आहे, NFCSF ने गुरुवारी सांगितले.',
      'or':
          'ଚାଲୁଥିବା 2021-22 ମାର୍କେଟିଂ ବର୍ଷରେ ଭାରତରେ ଚିନି ଉତ୍ପାଦନ 14% ବୃଦ୍ଧି ହୋଇ 34.2 ନିୟୁତ ଟନ୍ (MT) ରେ ପହଞ୍ଚିଛି ଏବଂ ଏହା 35.5 MT ରେକର୍ଡ ଛୁଇଁବ ବୋଲି ଆଶା କରାଯାଉଛି ବୋଲି ସହଯୋଗୀ ସଂସ୍ଥା NFCSF ଗୁରୁବାର ଦିନ କହିଛି।',
      'te':
          'కొనసాగుతున్న 2021-22 మార్కెటింగ్ సంవత్సరంలో ఇప్పటివరకు భారతదేశంలో చక్కెర ఉత్పత్తి 14 శాతం పెరిగి 34.2 మిలియన్ టన్నులకు (MT) పెరిగింది మరియు 35.5 MT రికార్డును తాకగలదని సహకార సంస్థ NFCSF గురువారం తెలిపింది.',
    },
    'swq0beck': {
      'en': 'View all',
      'hi': 'सभी देखें',
      'mr': 'सर्व पहा',
      'or': 'ସମସ୍ତ ଦେଖନ୍ତୁ |',
      'te': 'అన్నీ చూడండి',
    },
    '3i0fpq1d': {
      'en': 'AgroAid',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'outg841c': {
      'en': 'Crop Information ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l1ay71x8': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pbz0uccf': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'v0hqh4f5': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ootygo7c': {
      'en': 'News',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uz1q4a1z': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '24ev3qxl': {
      'en': 'Vendors',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6iug14jz': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j1oeue4b': {
      'en': 'Products',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'npmd66xm': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6obefen0': {
      'en': 'Hire Machinery',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l9rjctd2': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'kbplx8z7': {
      'en': 'FAQs ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3kxafaoj': {
      'en': '',
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
      'hi': 'कृपया अपना विवरण दर्ज करें',
      'mr': 'कृपया तुमचे तपशील एंटर करा',
      'or': 'ଦୟାକରି ଆପଣଙ୍କର ସବିଶେଷ ତଥ୍ୟ ପ୍ରବେଶ କରନ୍ତୁ |',
      'te': 'దయచేసి మీ వివరాలను నమోదు చేయండి',
    },
    '4uqvxnl9': {
      'en': 'Name',
      'hi': 'नाम',
      'mr': 'नाव',
      'or': 'ନାମ',
      'te': 'పేరు',
    },
    '5qonxkvi': {
      'en': '                                  ',
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
    'zyyydeni': {
      'en': 'State',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zz6q4g3v': {
      'en': '                                  ',
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
    'weptftea': {
      'en': ' ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qe05vrsp': {
      'en': 'District',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dlclb1vb': {
      'en': '                              ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'avxeas0z': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2818s920': {
      'en': ' ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jski3wsy': {
      'en': 'Address ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cmammhi2': {
      'en': '                                  ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7xz0msa9': {
      'en': 'Address',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3vu7hign': {
      'en': ' ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8um6jy16': {
      'en': 'Pin code ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qg81b09n': {
      'en': '                                       ',
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
    '7n5dz40q': {
      'en': 'Aadhaar ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2ah5kukb': {
      'en': '                              ',
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
    'j8lusv0u': {
      'en': 'AgroAID',
      'hi': 'ऍग्रोएड',
      'mr': 'ऍग्रोएड',
      'or': 'ऍग्रोएड',
      'te': 'ఆగ్రోఎయిడ్',
    },
    'clz6f90b': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // CROPINFO
  {
    'xg85vcay': {
      'en': 'Crop Information ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'k1s3j4l1': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'u2j7hqix': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8ohtw2dt': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '85r95slh': {
      'en': 'News',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3pdjxhar': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    's16qinor': {
      'en': 'Vendors',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'xte7gz4z': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ii5hua5z': {
      'en': 'Share',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'k0akj1va': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'e9eu6dzg': {
      'en': 'Hire Machinery',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'skdyer86': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1hizsvwt': {
      'en': 'FAQs ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gplludf5': {
      'en': '',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2v5sbddr': {
      'en': '    CROP INFORMATION',
      'hi': 'फसल की जानकारी',
      'mr': 'क्रॉप माहिती',
      'or': 'କ୍ରପ୍ ସୂଚନା',
      'te': 'పంట సమాచారం',
    },
    'mwtd2opc': {
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
      'hi': 'गेहूँ',
      'mr': 'गहू',
      'or': 'WHEAT',
      'te': 'గోధుమ',
    },
    'mfoe5avk': {
      'en': 'Introduction',
      'hi': 'परिचय',
      'mr': 'परिचय',
      'or': 'ପରିଚୟ',
      'te': 'పరిచయం',
    },
    '6inic88f': {
      'en':
          'Wheat a cereal which is the most important \nkind grown in temperate countries, the grain \nof which is  ground to make flour for bread, pasta,\n pastry, etc.\n',
      'hi':
          'गेहूँ एक अनाज जो समशीतोष्ण देशों में उगाया जाता है, जिसका अनाज रोटी, पास्ता, पेस्ट्री आदि के लिए आटा बनाने के लिए होता है।',
      'mr':
          'गहू हे तृणधान्य जे समशीतोष्ण देशांमध्ये पिकवले जाणारे सर्वात महत्वाचे प्रकार आहे, ज्याचे धान्य ब्रेड, पास्ता, पेस्ट्री इत्यादीसाठी पीठ बनवते.',
      'or':
          'ଗହମ ଏକ ଶସ୍ୟ ଯାହାକି ତାପମାତ୍ରା ଦେଶରେ ବ grown ଼ୁଥିବା ସବୁଠାରୁ ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ପ୍ରକାର, ଯାହାର ଶସ୍ୟ ରୁଟି, ପାସ୍ତା, ପେଷ୍ଟ୍ରି ଇତ୍ୟାଦି ପାଇଁ ମଇଦା ତିଆରି କରିବା ପାଇଁ ଭୂମି ଅଟେ |',
      'te':
          'గోధుమలు సమశీతోష్ణ దేశాలలో పండించే అత్యంత ముఖ్యమైన రకం తృణధాన్యాలు, రొట్టె, పాస్తా, పేస్ట్రీ మొదలైన వాటి కోసం పిండిని తయారు చేయడానికి ధాన్యం పిండి చేయబడుతుంది.',
    },
    'uc4ibsc3': {
      'en': 'Climate ',
      'hi': 'जलवायु',
      'mr': 'हवामान',
      'or': 'ଜଳବାୟୁ',
      'te': 'వాతావరణం',
    },
    '2u8pdm2w': {
      'en':
          'Wheat grows best when the temperatures are\n warm, around from 21° to 24° C/ 70° to 75° F, but \nare not too hot. Wheat also needs a lot of sunshine,\n especially when the grains are beginning\n to fill out. Wheat grows best in temperatures\n between21ºC/70ºF and 24ºC/75º F.',
      'hi':
          'जब तापमान 21° से 24°C/70° से 75° F के आसपास गर्म होता है, तो गेहूं सबसे अच्छा बढ़ता है, लेकिन बहुत गर्म नहीं होता है। गेहूं को भी धूप की बहुत जरूरत होती है, खासकर जब अनाज भरने लगे हों। गेहूँ 21ºC/70ºF और 24ºC/75º F के बीच तापमान में सबसे अच्छा बढ़ता है।',
      'mr':
          '21° ते 24° C/ 70° ते 75° F पर्यंत तापमान उबदार असताना गहू उत्तम वाढतो, परंतु जास्त गरम नसतो. गव्हालाही भरपूर सूर्यप्रकाशाची गरज असते, विशेषत: जेव्हा दाणे भरू लागतात. 21ºC/70ºF आणि 24ºC/75ºF या तापमानात गहू उत्तम वाढतो.',
      'or':
          'ତାପମାତ୍ରା ଗରମ ହେଲେ ଗହମ ସର୍ବୋତ୍ତମ ବ ows େ, ପ୍ରାୟ 21 ° ରୁ 24 ° C / 70 ° ରୁ 75 ° F, କିନ୍ତୁ ଅତ୍ୟଧିକ ଗରମ ନୁହେଁ | ଗହମ ମଧ୍ୟ ଅନେକ ସୂର୍ଯ୍ୟକିରଣ ଆବଶ୍ୟକ କରେ, ବିଶେଷତ when ଯେତେବେଳେ ଶସ୍ୟ ଭରିବା ଆରମ୍ଭ କରେ | ଗହମ 21ºC / 70ºF ରୁ 24ºC / 75º F ମଧ୍ୟରେ ତାପମାତ୍ରାରେ ସର୍ବୋତ୍ତମ ବ ows େ |',
      'te':
          'ఉష్ణోగ్రతలు 21° నుండి 24° C/ 70° నుండి 75° F వరకు వెచ్చగా ఉన్నప్పుడు గోధుమలు బాగా పెరుగుతాయి, కానీ చాలా వేడిగా ఉండవు. గోధుమలకు కూడా చాలా సూర్యరశ్మి అవసరం, ముఖ్యంగా గింజలు పూరించడానికి ప్రారంభించినప్పుడు. గోధుమలు 21ºC/70ºF మరియు 24ºC/75º F మధ్య ఉష్ణోగ్రతలలో బాగా పెరుగుతాయి.',
    },
    '5ndak5ob': {
      'en': 'Soil Type ',
      'hi': 'मिट्टी के प्रकार',
      'mr': 'मातीचा प्रकार',
      'or': 'ମୃତ୍ତିକା ପ୍ରକାର |',
      'te': 'నేల రకం',
    },
    'jrtic7u7': {
      'en':
          'Soils with a clay loam or loam texture,\n good structure and moderate water holding \ncapacity are ideal for wheat cultivation.',
      'hi':
          'मिट्टी दोमट या दोमट बनावट, अच्छी संरचना और मध्यम जल धारण क्षमता वाली मिट्टी गेहूं की खेती के लिए आदर्श होती है।',
      'mr':
          'चिकणमाती किंवा चिकणमाती पोत, चांगली रचना आणि मध्यम पाणी धरून ठेवण्याची क्षमता असलेली माती गव्हाच्या लागवडीसाठी आदर्श आहे.',
      'or':
          'ଗହମ ଚାଷ ପାଇଁ ଏକ ମାଟିର ଲୋମ୍ କିମ୍ବା ଲୋମ୍ ଟେକ୍ସଚର୍, ଭଲ ଗଠନ ଏବଂ ମଧ୍ୟମ ଜଳ ଧାରଣ କ୍ଷମତା ବିଶିଷ୍ଟ ମୃତ୍ତିକା |',
      'te':
          'బంకమట్టి లేదా లోమ్ ఆకృతి, మంచి నిర్మాణం మరియు మితమైన నీటిని పట్టుకునే సామర్థ్యం కలిగిన నేలలు గోధుమ సాగుకు అనువైనవి.',
    },
    '3pmer6do': {
      'en': 'Fertilizer',
      'hi': 'उर्वरक',
      'mr': 'खत',
      'or': 'ସାର',
      'te': 'ఎరువులు',
    },
    '2atnkhcx': {
      'en':
          'Muriate of potash and potassium sulphate \nare the only potassic fertilizers presently available\n in the market. Both are equally good for wheat.',
      'hi':
          'वर्तमान में बाजार में उपलब्ध पोटाश और पोटेशियम सल्फेट के म्यूरेट ही एकमात्र पोटाश उर्वरक हैं। दोनों गेहूं के लिए समान रूप से अच्छे हैं।',
      'mr':
          'म्युरिएट ऑफ पोटॅश आणि पोटॅशियम सल्फेट हेच पोटॅशिक खते सध्या बाजारात उपलब्ध आहेत. दोन्ही गव्हासाठी तितकेच चांगले आहेत.',
      'or':
          'ବର୍ତ୍ତମାନ ବଜାରରେ ଉପଲବ୍ଧ ପୋଟାଶ୍ ଏବଂ ପୋଟାସିୟମ୍ ସଲଫେଟ୍ ର ଏକମାତ୍ର ପୋଟାସିସ୍ ସାର | ଗହମ ପାଇଁ ଉଭୟ ସମାନ ଭାବରେ ଭଲ |',
      'te':
          'మ్యూరేట్ ఆఫ్ పొటాష్ మరియు పొటాషియం సల్ఫేట్ మాత్రమే ప్రస్తుతం మార్కెట్‌లో అందుబాటులో ఉన్న పొటాషిక్ ఎరువులు. గోధుమలకు రెండూ సమానంగా సరిపోతాయి.',
    },
    '13hfxwh0': {
      'en': 'Weed Control ',
      'hi': 'खरपतवार नियंत्रण',
      'mr': 'तण नियंत्रण',
      'or': 'ତୃଣକ ନିୟନ୍ତ୍ରଣ |',
      'te': 'కలుపు నియంత్రణ',
    },
    'zrzez4qk': {
      'en':
          'Effective weed management is one of many \ncritical components of successful wheat\n production.\nWeeds compete with wheat for light, nutrients,\n water, and space while often harboring\n deleterious insects and diseases. Severe weed \ninfestations \ncan essentially eliminate wheat production \nand/or harvest efficiency while also creating \nweedy plant fragments, often \nreducing food and feed value.\nWinter annual broadleaf weeds such as \nwild radish, chickweed, and henbit; perennials\n such as wild\ngarlic and curly dock; and annual ryegrass are\n often the most problematic\n weeds in wheat.\nAlthough each of these pests can be problematic, \nit is ryegrass that poses the greatest threat to\nwheat production. Ryegrass populations have\n been confirmed to be resistant to all currently\n labeled\neffective postemergence herbicides and are\n becoming more common. Growers must\n implement\nmanagement programs to delay the development \nor spread of resistant ryegrass',
      'hi':
          'प्रभावी खरपतवार प्रबंधन सफल गेहूं उत्पादन के कई महत्वपूर्ण घटकों में से एक है। खरपतवार गेहूं के साथ प्रकाश, पोषक तत्वों, पानी और स्थान के लिए प्रतिस्पर्धा करते हैं जबकि अक्सर हानिकारक कीड़ों और बीमारियों को आश्रय देते हैं। गंभीर खरपतवार संक्रमण अनिवार्य रूप से गेहूं के उत्पादन और/या फसल की दक्षता को समाप्त कर सकते हैं, साथ ही वेडी पौधों के टुकड़े भी बना सकते हैं, अक्सर भोजन और फ़ीड मूल्य को कम कर सकते हैं। जंगली मूली, चिकवीड और हेनबिट जैसे शीतकालीन वार्षिक चौड़ी पत्ती वाले खरपतवार; बारहमासी जैसे जंगली लहसुन और घुंघराले गोदी; और वार्षिक राईग्रास अक्सर गेहूं में सबसे अधिक समस्याग्रस्त खरपतवार होते हैं। हालांकि इनमें से प्रत्येक कीट समस्याग्रस्त हो सकता है, यह राईग्रास है जो गेहूं के उत्पादन के लिए सबसे बड़ा खतरा है। राईग्रास आबादी को वर्तमान में लेबल किए गए सभी प्रभावी पोस्टमर्जेंस जड़ी-बूटियों के प्रतिरोधी होने की पुष्टि की गई है और यह अधिक आम हो रही है। प्रतिरोधी राईग्रास के विकास या प्रसार में देरी करने के लिए उत्पादकों को प्रबंधन कार्यक्रमों को लागू करना चाहिए',
      'mr':
          'प्रभावी तण व्यवस्थापन हा गव्हाच्या यशस्वी उत्पादनातील अनेक महत्त्वाच्या घटकांपैकी एक आहे. तण प्रकाश, पोषक, पाणी आणि जागेसाठी गव्हाशी स्पर्धा करतात आणि अनेकदा हानिकारक कीटक आणि रोगांना आश्रय देतात. गंभीर तणांचा प्रादुर्भाव मूलत: गव्हाचे उत्पादन आणि/किंवा कापणीची कार्यक्षमता नष्ट करू शकतो आणि तणयुक्त वनस्पतींचे तुकडे देखील तयार करू शकतो, ज्यामुळे अन्न आणि खाद्य मूल्य कमी होते. हिवाळ्यातील वार्षिक ब्रॉडलीफ तण जसे की जंगली मुळा, चिकवीड आणि हेनबिट; बारमाही जसे की जंगली लसूण आणि कुरळे डॉक; आणि वार्षिक राईग्रास बहुतेकदा गव्हातील सर्वात समस्याप्रधान तण असतात. जरी यापैकी प्रत्येक कीटक समस्याप्रधान असू शकते, परंतु राईग्रास हा गहू उत्पादनास सर्वात मोठा धोका आहे. रायग्रास लोकसंख्या सध्या लेबल केलेल्या सर्व प्रभावी पोस्टमेर्जन्स तणनाशकांना प्रतिरोधक असल्याची पुष्टी केली गेली आहे आणि ते अधिक सामान्य होत आहेत. प्रतिरोधक राईग्रासचा विकास किंवा प्रसार होण्यास विलंब करण्यासाठी उत्पादकांनी व्यवस्थापन कार्यक्रम राबवले पाहिजेत',
      'or':
          'ସଫଳ ଗହମ ଉତ୍ପାଦନର ଅନେକ ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ଉପାଦାନ ମଧ୍ୟରୁ ପ୍ରଭାବଶାଳୀ ତୃଣକ ପରିଚାଳନା | ତୃଣକ ହାଲୁକା, ପୁଷ୍ଟିକର ଖାଦ୍ୟ, ଜଳ ଏବଂ ସ୍ଥାନ ପାଇଁ ଗହମ ସହିତ ପ୍ରତିଦ୍ୱନ୍ଦ୍ୱିତା କରୁଥିବାବେଳେ ଅନେକ ସମୟରେ ବିଲୋପକାରୀ କୀଟପତଙ୍ଗ ଏବଂ ରୋଗ ଧାରଣ କରିଥାଏ | ଘାସ ତୃଣକ ସଂକ୍ରମଣ ଗହମ ଉତ୍ପାଦନ ଏବଂ / କିମ୍ବା ଅମଳର ଦକ୍ଷତାକୁ ଦୂର କରିପାରିବ ଏବଂ ତୃଣକ ଉଦ୍ଭିଦ ଖଣ୍ଡଗୁଡିକ ସୃଷ୍ଟି କରେ, ପ୍ରାୟତ food ଖାଦ୍ୟ ଏବଂ ଫିଡ୍ ମୂଲ୍ୟ ହ୍ରାସ କରେ | ଶୀତ ବାର୍ଷିକ ବ୍ରଡଲିଫ୍ ତୃଣକ ଯେପରିକି ବଣୁଆ ମୂଳା, କୁକୁଡ଼ା, ଏବଂ ହେନବିଟ୍; ଚିରାଚରିକ ବର୍ଷ ଯେପରିକି ବଣୁଆ ରସୁଣ ଏବଂ କୁଞ୍ଚିତ ଡକ୍; ଏବଂ ବାର୍ଷିକ ରାଇଗ୍ରାସ୍ ଗହମରେ ଅଧିକାଂଶ ସମସ୍ୟାଜନିତ ତୃଣକ | ଯଦିଓ ଏହି କୀଟନାଶକଗୁଡିକ ମଧ୍ୟରୁ ପ୍ରତ୍ୟେକଟି ସମସ୍ୟା ସୃଷ୍ଟି କରିପାରେ, ଏହା ଗହମ ଉତ୍ପାଦନ ପାଇଁ ସବୁଠାରୁ ବଡ ବିପଦ | ରାଇଗ୍ରାସ୍ ଜନସଂଖ୍ୟା ନିଶ୍ଚିତ ଭାବରେ ସମସ୍ତ ପ୍ରଭାବଶାଳୀ ପୋଷ୍ଟମେରୋଜେନ୍ସ ହରବାଇସିଡ୍ ନାମକ ପ୍ରତିରୋଧକ ଏବଂ ଏହା ସାଧାରଣ ହେବାରେ ଲାଗିଛି | ପ୍ରତିରୋଧକ ରାଇଗ୍ରାସର ବିକାଶ କିମ୍ବା ବିସ୍ତାରରେ ବିଳମ୍ବ କରିବାକୁ କୃଷକମାନେ ନିଶ୍ଚିତ ଭାବରେ ପରିଚାଳନା ପ୍ରୋଗ୍ରାମ କାର୍ଯ୍ୟକାରୀ କରିବେ |',
      'te':
          'విజయవంతమైన గోధుమ ఉత్పత్తి యొక్క అనేక కీలకమైన భాగాలలో సమర్థవంతమైన కలుపు నిర్వహణ ఒకటి. కలుపు మొక్కలు కాంతి, పోషకాలు, నీరు మరియు స్థలం కోసం గోధుమలతో పోటీపడతాయి, అయితే తరచుగా హానికరమైన కీటకాలు మరియు వ్యాధులను కలిగి ఉంటాయి. తీవ్రమైన కలుపు ముట్టడి తప్పనిసరిగా గోధుమ ఉత్పత్తిని మరియు/లేదా పంట సామర్థ్యాన్ని తొలగిస్తుంది, అదే సమయంలో కలుపు మొక్కల శకలాలు కూడా సృష్టించబడతాయి, తరచుగా ఆహారం మరియు ఫీడ్ విలువను తగ్గిస్తాయి. అడవి ముల్లంగి, చిక్‌వీడ్ మరియు హెన్‌బిట్ వంటి శీతాకాలపు వార్షిక విశాలమైన కలుపు మొక్కలు; అడవి వెల్లుల్లి మరియు గిరజాల డాక్ వంటి శాశ్వత మొక్కలు; మరియు వార్షిక రైగ్రాస్ తరచుగా గోధుమలలో అత్యంత సమస్యాత్మకమైన కలుపు మొక్కలు. ఈ తెగుళ్లలో ప్రతి ఒక్కటి సమస్యాత్మకంగా ఉన్నప్పటికీ, గోధుమ ఉత్పత్తికి గొప్ప ముప్పుగా ఉండే రైగ్రాస్. రైగ్రాస్ జనాభా ప్రస్తుతం లేబుల్ చేయబడిన ప్రభావవంతమైన పోస్ట్‌మెర్జెన్స్ హెర్బిసైడ్‌లన్నింటికీ నిరోధకతను కలిగి ఉన్నట్లు నిర్ధారించబడింది మరియు ఇవి సర్వసాధారణంగా మారుతున్నాయి. నిరోధక రైగ్రాస్ అభివృద్ధి లేదా వ్యాప్తిని ఆలస్యం చేయడానికి సాగుదారులు తప్పనిసరిగా నిర్వహణ కార్యక్రమాలను అమలు చేయాలి',
    },
    'aq42ohup': {
      'en': 'Irrigation ',
      'hi': 'सिंचाई',
      'mr': 'सिंचन',
      'or': 'ଜଳସେଚନ',
      'te': 'నీటిపారుదల',
    },
    'bhwvzqoj': {
      'en':
          'Form beds of size 10 m2 or 20 m2.\n The irrigation channels are to be provided \nsufficiently. The crop requires 4 - 6 irrigations \ndepending on the soil type and rainfall.\nWheat crop requires minimum of 5 irrigations \nat the following critical stages.\n\n            I – Immediately after sowing\n            II – Crown root intiation        : 15-20 DAS\n            III- Active tillering stage        : 35-40 DAS\n            IV- Flowering stage              : 50-55 DAS\n            V- Grain filling stage             : 70-75 DAS\n\nCrown root initiation and flowering are the most \ncritical stages.\nWater stagnation should be avoided at the time \nof germination.',
      'hi':
          'आकार 10 m2 या 20 m2 के फार्म बेड। सिंचाई चैनलों को पर्याप्त रूप से उपलब्ध कराया जाना है। मिट्टी के प्रकार और वर्षा के आधार पर फसल को 4-6 सिंचाई की आवश्यकता होती है। गेहूं की फसल को निम्नलिखित महत्वपूर्ण चरणों में न्यूनतम 5 सिंचाई की आवश्यकता होती है। I - बुवाई के तुरंत बाद II - क्राउन रूट इंशिएशन: 15-20 DAS III- सक्रिय जुताई अवस्था: 35-40 DAS IV- फूल अवस्था: 50-55 DAS V- अनाज भरने का चरण: 70-75 DAS क्राउन रूट दीक्षा और फूलना है सबसे महत्वपूर्ण चरण। अंकुरण के समय पानी के ठहराव से बचना चाहिए।',
      'mr':
          '10 m2 किंवा 20 m2 आकाराचे बेड तयार करा. सिंचन वाहिन्या पुरेशा प्रमाणात उपलब्ध करायच्या आहेत. पिकाला जमिनीचा प्रकार आणि पर्जन्यमानानुसार ४ ते ६ पाणी द्यावे लागते. गहू पिकाला खालील गंभीर टप्प्यांवर किमान 5 सिंचनाची आवश्यकता असते. I – पेरणीनंतर लगेच II – मुकुट मुळांची सुरुवात : 15-20 DAS III- सक्रिय मशागतीची अवस्था : 35-40 DAS IV- फुलांची अवस्था : 50-55 DAS V- दाणे भरण्याची अवस्था : 70-75 DAS मुकुट मुळांची सुरुवात आणि फुले सर्वात गंभीर टप्पे. उगवणाच्या वेळी पाणी साचणे टाळावे.',
      'or':
          '10 m2 କିମ୍ବା 20 m2 ଆକାରର ଶଯ୍ୟା ଗଠନ କରନ୍ତୁ | ଜଳସେଚନ ଚ୍ୟାନେଲଗୁଡିକ ପର୍ଯ୍ୟାପ୍ତ ପରିମାଣରେ ଯୋଗାଇ ଦିଆଯିବ | ମୃତ୍ତିକାର ପ୍ରକାର ଏବଂ ବର୍ଷା ଉପରେ ନିର୍ଭର କରି ଫସଲରେ 4 - 6 ଜଳସେଚନ ଆବଶ୍ୟକ | ଗହମ ଫସଲ ନିମ୍ନ ଜଟିଳ ପର୍ଯ୍ୟାୟରେ ସର୍ବନିମ୍ନ ଜଳସେଚନ ଆବଶ୍ୟକ କରେ | ମୁଁ - II ବୁଣିବା ପରେ ସଙ୍ଗେ ସଙ୍ଗେ - ମୁକୁଟ ମୂଳ ଅନ୍ତରୀକ୍ଷ: 15-20 DAS III- ସକ୍ରିୟ ଟିଲିରିଙ୍ଗ୍ ପର୍ଯ୍ୟାୟ: 35-40 DAS IV- ଫୁଲର ପର୍ଯ୍ୟାୟ: 50-55 DAS V- ଶସ୍ୟ ଭରିବା ପର୍ଯ୍ୟାୟ: 70-75 DAS ମୁକୁଟ ମୂଳ ଆରମ୍ଭ ଏବଂ ଫୁଲ | ସବୁଠାରୁ ଜଟିଳ ପର୍ଯ୍ୟାୟ | ଅଙ୍କୁର ସମୟରେ ଜଳ ସ୍ଥିରତାକୁ ଏଡାଇବା ଉଚିତ୍ |',
      'te':
          '10 m2 లేదా 20 m2 పరిమాణంలో బెడ్‌లను ఏర్పరుచుకోండి. నీటిపారుదల మార్గాలను తగినంతగా అందించాలి. నేల రకం మరియు వర్షపాతం ఆధారంగా పంటకు 4 - 6 నీటిపారుదల అవసరం. కింది క్లిష్టమైన దశల్లో గోధుమ పంటకు కనీసం 5 నీటిపారుదల అవసరం. I – విత్తిన వెంటనే II – క్రౌన్ రూట్ ఇనిషియేషన్ : 15-20 DAS III- యాక్టివ్ టిల్లరింగ్ దశ : 35-40 DAS IV- పుష్పించే దశ : 50-55 DAS V- ధాన్యం నింపే దశ : 70-75 DAS క్రౌన్ రూట్ దీక్ష మరియు పుష్పించేవి అత్యంత క్లిష్టమైన దశలు. అంకురోత్పత్తి సమయంలో నీటి స్తబ్దతను నివారించాలి.',
    },
    'kncoffj7': {
      'en': 'Harvesting ',
      'hi': 'फसल काटने वाले',
      'mr': 'कापणी',
      'or': 'ଅମଳ',
      'te': 'హార్వెస్టింగ్',
    },
    'w5es4dgc': {
      'en':
          'A combine is used to harvest the crop. \nThis machine combines reaping, threshing,\n and winnowing. The edible wheat is put into the \nback of the combine. It is then put into a grain cart,\n and then into a semi truck where it is transported \nto be stored in a grain elevator.',
      'hi':
          'फसल की कटाई के लिए एक कंबाइन का उपयोग किया जाता है। यह मशीन कटाई, थ्रेसिंग और विनोइंग को जोड़ती है। खाने योग्य गेहूं को कंबाइन के पिछले हिस्से में डाल दिया जाता है। फिर इसे एक अनाज गाड़ी में डाल दिया जाता है, और फिर एक अर्ध ट्रक में जहां इसे अनाज लिफ्ट में संग्रहीत करने के लिए ले जाया जाता है।',
      'mr':
          'पीक काढण्यासाठी कंबाइनचा वापर केला जातो. हे यंत्र कापणी, मळणी आणि विनोईंग एकत्र करते. खाण्यायोग्य गहू कंबाईनच्या मागील बाजूस टाकला जातो. नंतर ते धान्याच्या गाडीत टाकले जाते आणि नंतर अर्ध ट्रकमध्ये ठेवले जाते जिथे ते धान्य लिफ्टमध्ये ठेवण्यासाठी नेले जाते.',
      'or':
          'ଫସଲ ଅମଳ ପାଇଁ ଏକ ମିଶ୍ରଣ ବ୍ୟବହୃତ ହୁଏ | ଏହି ମେସିନ୍ ଅମଳ, ଶସ୍ୟ, ଏବଂ ୱିନ୍ନିଙ୍ଗ୍ ମିଶ୍ରଣ କରେ | ଖାଇବା ଗହମକୁ ମିଶ୍ରଣର ପଛ ଭାଗରେ ରଖାଯାଏ | ଏହା ପରେ ଏକ ଶସ୍ୟ କାର୍ଟରେ ରଖାଯାଏ, ଏବଂ ପରେ ଏକ ସେମି ଟ୍ରକରେ ରଖାଯାଏ ଯେଉଁଠାରେ ଏହାକୁ ଏକ ଶସ୍ୟ ଲିଫ୍ଟରେ ରଖିବା ପାଇଁ ପରିବହନ କରାଯାଏ |',
      'te':
          'పంటను కోయడానికి మిశ్రమాన్ని ఉపయోగిస్తారు. ఈ యంత్రం కోత కోయడం, నూర్పిడి చేయడం మరియు గెలుపొందడం వంటివి మిళితం చేస్తుంది. తినదగిన గోధుమలను మిళితం వెనుక భాగంలో ఉంచారు. అది ఒక ధాన్యపు బండిలో ఉంచబడుతుంది, ఆపై దానిని ధాన్యం ఎలివేటర్‌లో నిల్వ చేయడానికి రవాణా చేయబడిన సెమీ ట్రక్కులో ఉంచబడుతుంది.',
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
    'j1d3u80i': {
      'en': 'GROUND NUT ',
      'hi': 'मूंगफली',
      'mr': 'शेंगदाणे',
      'or': 'ଗ୍ରାଉଣ୍ଡ ବାଦାମ |',
      'te': 'GROUND NUT',
    },
    'snuvvv0s': {
      'en': 'Introduction ',
      'hi': 'परिचय',
      'mr': 'परिचय',
      'or': 'ପରିଚୟ',
      'te': 'పరిచయం',
    },
    '7cj6k82f': {
      'en':
          'The peanut also known as the groundnut,\n goober, pindar or monkey nut, is a legume crop \ngrown mainly for its edible seeds. It is widely \ngrown in the tropics and subtropics, being\n important to both small and large commercial \nproducers',
      'hi':
          'मूंगफली को मूंगफली, गूबर, पिंडर या मंकी नट के रूप में भी जाना जाता है, यह मुख्य रूप से अपने खाने योग्य बीजों के लिए उगाई जाने वाली फलीदार फसल है। यह उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्रों में व्यापक रूप से उगाया जाता है, जो छोटे और बड़े वाणिज्यिक उत्पादकों दोनों के लिए महत्वपूर्ण है',
      'mr':
          'भुईमूग, गोबर, पिंडर किंवा माकड नट म्हणून ओळखले जाणारे शेंगदाणे हे मुख्यतः त्याच्या खाण्यायोग्य बियाण्यांसाठी घेतले जाणारे शेंगाचे पीक आहे. हे उष्णकटिबंधीय आणि उपोष्णकटिबंधीय प्रदेशांमध्ये मोठ्या प्रमाणावर घेतले जाते, लहान आणि मोठ्या व्यावसायिक उत्पादकांसाठी ते महत्त्वाचे आहे',
      'or':
          'କଦଳୀକୁ ଭୂମି ବାଦାମ, ଗୋବର, ପିଣ୍ଡର କିମ୍ବା ମାଙ୍କଡ଼ ବାଦାମ ମଧ୍ୟ କୁହାଯାଏ, ଏହା ଏକ ଖାଇବା ଫସଲ ଯାହା ମୁଖ୍ୟତ its ଏହାର ଖାଇବା ମଞ୍ଜି ପାଇଁ ବ grown ିଥାଏ | ଟ୍ରପିକ୍ ଏବଂ ସବଟ୍ରୋପିକ୍ସରେ ଏହା ବହୁଳ ଭାବରେ ବ grown ଼ିଥାଏ, ଉଭୟ ଛୋଟ ଏବଂ ବଡ଼ ବ୍ୟବସାୟିକ ଉତ୍ପାଦକମାନଙ୍କ ପାଇଁ ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ |',
      'te':
          'వేరుశెనగను వేరుశెనగ, గూబెర్, పిండార్ లేదా కోతి గింజ అని కూడా పిలుస్తారు, ఇది ప్రధానంగా తినదగిన విత్తనాల కోసం పండించే పప్పుధాన్యాల పంట. ఇది ఉష్ణమండల మరియు ఉపఉష్ణమండలంలో విస్తృతంగా పెరుగుతుంది, ఇది చిన్న మరియు పెద్ద వాణిజ్య ఉత్పత్తిదారులకు ముఖ్యమైనది.',
    },
    'tjwpk4jg': {
      'en': 'Climate ',
      'hi': 'जलवायु',
      'mr': 'हवामान',
      'or': 'ଜଳବାୟୁ',
      'te': 'వాతావరణం',
    },
    'clg05jvj': {
      'en':
          'The temperature of the area should be around \n27-30˚C for good germination and growth. \nThe minimum annual rainfall required for the \ncrops is in between 450 to 1250 mm. High altitudes, \ncold and frost are not suitable for groundnut \nfarming. Exclusively long warm climate is good \nfor cultivating groundnuts.',
      'hi':
          'अच्छे अंकुरण और वृद्धि के लिए क्षेत्र का तापमान लगभग 27-30˚C होना चाहिए। फसलों के लिए आवश्यक न्यूनतम वार्षिक वर्षा 450 से 1250 मिमी के बीच होती है। मूंगफली की खेती के लिए अधिक ऊंचाई, ठंड और पाला उपयुक्त नहीं है। मूंगफली की खेती के लिए विशेष रूप से लंबी गर्म जलवायु अच्छी होती है।',
      'mr':
          'चांगल्या उगवण आणि वाढीसाठी क्षेत्राचे तापमान 27-30˚C च्या आसपास असावे. पिकांसाठी किमान वार्षिक पाऊस 450 ते 1250 मिमी दरम्यान आवश्यक आहे. जास्त उंची, थंडी आणि दंव भुईमूग शेतीसाठी योग्य नाही. शेंगदाणे लागवडीसाठी केवळ लांब उबदार हवामान चांगले आहे.',
      'or':
          'ଭଲ ଅଙ୍କୁର ଏବଂ ବୃଦ୍ଧି ପାଇଁ ଏହି ଅଞ୍ଚଳର ତାପମାତ୍ରା ପ୍ରାୟ 27-30˚C ହେବା ଉଚିତ | ଫସଲ ପାଇଁ ସର୍ବନିମ୍ନ ବାର୍ଷିକ ବୃଷ୍ଟିପାତ 450 ରୁ 1250 ମିଲିମିଟର ମଧ୍ୟରେ | ଉଚ୍ଚ ଉଚ୍ଚତା, ଥଣ୍ଡା ଏବଂ ଥଣ୍ଡା ଭୂମି ବାଦାମ ଚାଷ ପାଇଁ ଉପଯୁକ୍ତ ନୁହେଁ | ବିଶେଷ ଭାବରେ ଲମ୍ବା ଉଷ୍ମ ଜଳବାୟୁ ଭୂମି ବାଦାମ ଚାଷ ପାଇଁ ଭଲ |',
      'te':
          'మంచి అంకురోత్పత్తి మరియు పెరుగుదల కోసం ప్రాంతం యొక్క ఉష్ణోగ్రత 27-30˚C ఉండాలి. పంటలకు కనీస వార్షిక వర్షపాతం 450 నుండి 1250 మిమీ మధ్య ఉంటుంది. ఎత్తైన ప్రాంతాలు, చలి మరియు మంచు వేరుశెనగ సాగుకు అనుకూలం కాదు. వేరుశెనగ సాగుకు ప్రత్యేకంగా పొడవైన వెచ్చని వాతావరణం అనుకూలం.',
    },
    '0moxqslc': {
      'en': 'Soil type ',
      'hi': 'मिट्टी के प्रकार',
      'mr': 'मातीचा प्रकार',
      'or': 'ମୃତ୍ତିକା ପ୍ରକାର |',
      'te': 'నేల రకం',
    },
    'sqa5izsm': {
      'en':
          'Groundnut plants need well drained sandy loam\n or clay loam soil for better performance. \nThe soil should be deep and the pH of the soil \nshould be around 5.5 to 7 with high fertility index',
      'hi':
          'मूंगफली के पौधों को बेहतर प्रदर्शन के लिए अच्छी जल निकासी वाली बलुई दोमट या चिकनी दोमट मिट्टी की आवश्यकता होती है। मिट्टी गहरी होनी चाहिए और उच्च उर्वरता सूचकांक के साथ मिट्टी का पीएच 5.5 से 7 के आसपास होना चाहिए',
      'mr':
          'भुईमुगाच्या रोपांना चांगल्या कामगिरीसाठी चांगला निचरा होणारी वालुकामय चिकणमाती किंवा चिकणमाती मातीची गरज असते. माती खोल असावी आणि उच्च सुपीकता निर्देशांकासह मातीचा pH सुमारे 5.5 ते 7 असावा.',
      'or':
          'ଉତ୍ତମ କାର୍ଯ୍ୟଦକ୍ଷତା ପାଇଁ ଗ୍ରାଉଣ୍ଡନାଟ୍ ଉଦ୍ଭିଦଗୁଡିକ ଭଲଭାବେ ନିଷ୍କାସିତ ବାଲୁକା ଲୋମ୍ କିମ୍ବା ମାଟି ଲୋମ୍ ମାଟି ଆବଶ୍ୟକ କରନ୍ତି | ମାଟି ଗଭୀର ହେବା ଉଚିତ ଏବଂ ଉଚ୍ଚ ଉର୍ବରତା ସୂଚକାଙ୍କ ସହିତ ମାଟିର pH ପ୍ରାୟ 5.5 ରୁ 7 ହେବା ଉଚିତ |',
      'te':
          'వేరుశెనగ మొక్కలు మెరుగైన పనితీరు కోసం బాగా ఎండిపోయిన ఇసుక లోవామ్ లేదా మట్టి లోవామ్ నేల అవసరం. నేల లోతుగా ఉండాలి మరియు నేల యొక్క pH అధిక సంతానోత్పత్తి సూచికతో 5.5 నుండి 7 వరకు ఉండాలి.',
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
          'NPK @ 40:40:60 kg/ha as basal.\nApply borax @ 10 kg/ha as basal.\nApply gypsum @ 200 kg/ha at peg formation \nstage.',
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
          'Pre-sowing: Fluchloralin at 2.0 l/ha soil applied\n and incorporatede followed by light irrigation.\nPre-emergence: Fluchloralin 2.0 l/ha or \nPendimethalin @ 3.3l/ha applied on third day\n after sowing through flat fan nozzle with 500 l of \nwater/ha followed by irrigation. After 35 - 40 days \none hand weeding may be given.\nSpray Imazethapyr @ 750 ml/ha at 20-30 days \nafter sowing based on weed density as post\n emergence sprayIf no herbicide is applied two \nhand hoeing and weeding are given on 20th\n and 40th day after sowing.\nApply, PE Oxyfluorfen @ 200 g/ha on 3rd DAS\n and followed by one hand weeding on 40-45 DAS\nApply, PE Oxadiazon @ 0.8 kg ha-1 followed\n by one earthing up using hoes (or) working\n star type weeder\nApply, PE Metalachlor @ 1.0 kg ha-1 followed\n by one hand weeding on 40 DAS.',
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
          'Sowing or pre-sowing\nLife irrigation, 4 - 5 days \nafter sowing 20 days after sowing\nAt flowering give two irrigations\nAt pegging stage give one or two irrigations\nIn pod development stage, 2 - 3 irrigations\n depending on the soil type     ',
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
          'The harvest of the pods begins from 100 \ndays to 6 months after the sowing begins.\n The entire plant is dug up and most of the soil \nis carefully removed. To get a good harvest,\n it takes 120 to 140 days without frost. Groundnuts\n are harvested in the fall, around October.',
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
    'y8ak18yi': {
      'en': 'CORN ',
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
          'Maize, also known as corn, is a cereal grain \nfirst domesticated by indigenous peoples \nin southern Mexico about 10,000 years ago. \nThe leafy stalk of the plant produces pollen \ninflorescences and separate ovuliferous\n inflorescences called ears that when fertilized\n yield kernels or seeds, which are fruits.',
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
          'Corn does best with warm, sunny growing weather\n (75–86° F), well-distributed intermittent moderate \nrains, or irrigation (15 or more inches during the\n growing season), and 130 or more frost-free days.',
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
          'The ideal soil for corn is well drained and fertile, \nwith a pH of 6.0-6.8. As a general rule, plant early\n corn in light soil (sand or loam) and later corn \nin heavier soil (silt or clay), when there is an option. \nLight soils warm up faster than heavy soils, \nso seed germinates more readily.',
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
          'Pre-planting fertilizers for corn should have NPK \nratios of 1-4-0, 1-3-1, 1-3-3, or 1-1-1 to ensure \nthey don\'t contain too much nitrogen. \nThis will ensure they develop a healthy root system\n and have strong stems and foliage. \nCorn is a heavy feeder and needs a high quantity \nof nitrogen to thrive once it is established.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qmgmvl1m': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3t51ef9g': {
      'en':
          'Apply herbicide when there is sufficient moisture \nin the soil. Do not disturb the soil after herbicide \napplication. If pulse crop is to be raised as intercrop,\n do not use Atrazine. Spray Pendimethalin \n@0.75 kg/ha as pre emergence on 3-5 DAS.',
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
          'Corn uses very little water during the seedling \nstage. If early season precipitation and stored \nsoil moisture are adequate for seedling \nemergence and early plant development,\n irrigation is not recommended immediately\n following planting.',
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
          'After it matures, corn is harvested in the fall with\n a grain combine. Combines have row dividers \nthat pick up the corn stalks as the combine \nmoves through the field. The corn ears are broken \noff from the corn stalk and dragged into the\n combine, and the stalks are dropped back on the \nground. Inside the combine a machine seperates\n the husks, kernels, and cob. The cob and husks \nare spit back onto the ground and the kernals\n are stored. The corn material left on the ground \nprotects the soil from erosion and returns \nplant mater to the ecosystem.',
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
    'fjhakv07': {
      'en': ' COTTON ',
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
          'Cotton is a soft, fluffy staple fiber that grows\n in a boll, or protective case, around the seeds \nof the cotton plants of the genus Gossypium in \nthe mallow family Malvaceae. The fiber is almost \npure cellulose, and can contain minor percentages \nof waxes, fats, pectins, and water',
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
          'Cotton is a plant that needs a long frost-free period,\n a lot of heat and plenty of sunshine. It prefers \nwarm and humid climate. Cotton seeds will have \na small germination rate, if the soil temperature \nis below 60°F (15°C). During active growth, the\n ideal air temperature is 70 to 100°F (21-37°C).',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j1q7f5hv': {
      'en': 'Soil Type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'sg4tf227': {
      'en':
          'The major soil types suitable for cotton cultivation \nare alluvial, clayey and red sandy loam. Cotton\n is grown both under irrigated and rain fed \nconditions.',
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
          'As a first rule of thumb, cotton plant consumes\n Nitrogen (N) at a double quantity compared \nto Phosphorus (P) and Potassium (K). Consequently,\n a N-P-K 20-10-10 fertilizer is more suitable, \nif a soil analysis is impossible.\n A common fertilization schedule applied by many\n cotton growers is adding 440 lbs. (200 kg) of\n N-P-K 20-10-10 per hectare during \nsowing (through the sowing machine), and 440 lbs. \n(200 kg) of N-P-K 20-10-10 per hectare during\n flowering (early summer). Keep in mind that\n 1 hectare = 10.000 square meters = 2,47 acres.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fd6oc6dy': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'l4i38l17': {
      'en':
          'The first measures against weeds are taken with\n the first tillage, well before the sowing of seeds.\n Then, according to each field texture and the \nweeds most commonly found in each area,\n farmers often spray with various chemicals\n until the plants are well established\n (ask a licensed agronomist in your area). \nA very important step towards effective \nweed control is the frequent tillage of the area\n between the rows of the plants. This distance\n ranges from 2 to 4 feet and the farmer must be\n careful not to destroy any part of the cotton plant\n as he/she performs the tillage. Plowing the area \nbetween the planting rows not only destroys \nany newly developed weeds, but also increases\n aeration of the field.',
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
          'Cotton growers typically plant on beds which \nrun from the highest elevation point in the field \nto the lowest elevation point. Once the crop is \nestablished, irrigation water is typically introduced \nto the field through a pipe system from which\n irrigation water runs gravimetrically down the\n furrows to the end of the row.',
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
          '5,5 to 6,5 months after sowing, cotton is normally\n ready to be harvested. As it happens in any \nother crop, knowing exactly which day to harvest\n requires years of experience. We harvest during \nautumn (September – October in most areas of US)\n with cotton harvesting machines. These machines\n are typically very big tractors that strip the fibers \nfrom the plants and collect the bolls. Immediately \nafter the harvest, it is good to destroy the \nremaining of cotton plants with a shredder \nand then make a very good plowing of our field.',
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
    '3qqw0ihe': {
      'en': '  MILLETES ',
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
          'Millet is a cereal grain that belongs to the \nPoaceae family, commonly known as the grass \nfamily . It\'s widely consumed in developing \ncountries throughout Africa and Asia. While it may \nlook like a seed, millet\'s nutritional profile is similar \nto that of sorghum and other cereals',
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
          'A warm, temperate climate is essential for the\n sprouting and germination of the millet seeds \nto keep the soil temperature cozy since they\n are susceptible to damage by cold weather\n and frosts. The sustainable temperature for millet \ngrowth is 20-30 degrees Celsius.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2hune06t': {
      'en': 'Soil Type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'hd2gypil': {
      'en':
          'Millet has wide adaptability to different soil\n from very poor to very fertile and can tolerate\n a certain degree of alkalinity. The best soils are \nalluvial, loamy and sandy soil with good drainage.',
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
          'Application of 40 kg N + 20 kg P2O5/ha for arid \nregions and 60 kg N/ha + 30 kg P2O5/ha for \nsemi-arid regions is recommended for sole pearl \nmillet as well as intercropping system. In light soils\n (sandy loams) the applied nitrogen may be lost \ndue to leaching with heavy rains.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uqh2kc6h': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2qynlzxu': {
      'en':
          'Critical period for crop weed competition is\n 20 to 35 days after sowing (DAS). First \nintercultivation should be before 20 days \nafter sowing and the second before 35 days \nafter sowing. Herbicides are not, generally, \nused for weed control in foxtail millet.',
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
          'Pearl millet is mainly grown under rainfed\n situation. Only about 8% of pearl millet area\n is irrigated in India.\nPearl millet crop is exposed to drought conditions \nvery often during its growth and consequently\n the yields are lower than the potential yield.\n So, if the farmers want higher pearl millet yields \neven during the rainy season, the answer is\n irrigation, if water is available.',
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
          'Harvest the millet when the grasses and \nseed heads have turned golden brown. \nMillet can be harvested either by hand or \nwith the use of a mechanical thresher. \nTo save seeds cut the mature seed cluster \nfrom the stem....the mature seeds will be swollen \nand release easily from the cluster by simple \nrubbing.',
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
    'l9lvkfic': {
      'en': 'BARLEY ',
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
          'Barley is a cereal grain. People often eat the grain \nas food. Some people also use the grain to make\n medicine. Barley is most commonly used for heart \ndisease and high cholesterol.',
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
          'Barley may be grown in subtropical climatic\n condition. The crop requires around 12-15 C \nduring growing period and around 30 C at\n maturity. It can not tolerate frost at any stage of\n growth and incidence of frost at flowering at \nhighly detrimental for yield.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '93fzcvc4': {
      'en': 'Soil Type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'kuvcscc0': {
      'en':
          'Barley is being grown in three distinct type of \nsoil groups mainly Sandy Loam, Loam and Medium \n& Heavy Black Soils. Sandy to moderately heavy\n loam soils of Indo-Gangetic plains having neutral\n to saline reaction and medium fertility are \nthe most suitable type for barley cultivation.',
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
          'Barley requires adequate nitrogen (N) for good \nyields, but because grain protein in excess \nof industry limits often results in rejection of the \ncrop as malting grade, and because excess N may\n lead to smaller kernel size, the line between \nadequate N and excessive N is fine.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ly7d5tcj': {
      'en': 'Weed Control',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jk9pdvx6': {
      'en':
          'With emerging resistance issues and relatively\n few products registered for use against barley\n grass, its control should be part of a broader \nintegrated weed management program.\nBarley grass usually occurs in areas that also \nrequire annual ryegrass control, so Sakura – \nwhich is highly effective against both weeds –\n has quickly become a key product in the \npre-emergent rotation to prevent their \nrapid germination.',
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
          'Generally Barley crop require 2 to 3 irrigations \nfor better yield. Depending opon the water\n availability, suitable stages for irrigation \nshould be identified.',
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
          'The simplest and most common harvesting\n method for barley is to wait until the grain has\n ripened and dried to a moisture content of \nless than 12% so that it can be delivered directly\nto the receival point. Once the crop is ripe,\n harvest as soon as possible to reduce the\n potential losses from wind damage or weathering',
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
    'a86yqlt8': {
      'en': 'JUTE  ',
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
          'Jute is a bast fibre crop and can be harvested \nat any stage after a certain period of vegetative \ngrowth, usually between 100 to 150 days.',
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
          'The suitable climate for growing jute is a warm \nand wet climate, which is offered by the monsoon \nclimate during the fall season, immediately \nfollowed by summer. Temperatures ranging to \nmore than 25 °C and relative humidity of 70%–90%\n are favorable for successful cultivation.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zw4oyvbo': {
      'en': 'Soil Type',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'uuiuyb3r': {
      'en':
          'Jute can be raised on all kinds of soils from clay\n to sandy loam, but loamy alluvial are best suited.\n Laterite and gravel soils are not suitable for this\n crop. The new grey alluvial soils of good depth\n, receiving silt from the annual floods are the best \nfor jute cultivation.',
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
          'During periods of drought and fertilizer shortage,\n spray 8 kg of urea as 2 per cent urea solution \n(20 g urea in one litre of water) on jute foliage on \n40 - 45 as well as 70 - 75 DAS.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '52qfpdwx': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'myv0mgyl': {
      'en':
          'Hand weeding twice on 20 - 25 DAS and\n 35 - 40 DAS. Fluchloralin can be sprayed at 3 days \nafter sowing at the rate of 1.5 kg per hectare and is \nfollowed by irrigation. Further one hand weeding \ncan be taken up at 30 - 35 DAS',
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
          'Jute crop requires 500 mm of water. First irrigation\n is to be given after sowing and life irrigation \non fourth day after sowing. Afterwards irrigation\n can be given once in 15 days.',
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
          'jute cultivation. Jute is a rainy season crop,\n sown from March to May according to rainfall and \ntype of land. It is harvested from\n June to September depending upon whether \nthe sowings are early or late. Jute requires a warm \nand humid climate with temperature between\n 24° C to 37° C.',
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
    '47qr0ld7': {
      'en': ' LINSEED  ',
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
          'Linseed (Linum usitatissimum L.) is an annual \noil crop that is grown either for its fiber (fiber flax)\n or for its oil (oilseed flax)',
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
          'Linseed is purely a cool season rabi crop. \nTemperate and cool climate conditions are best \nsuited for growth. The minimum temperature\n regime is 10C while the maximum is 38 C. \nThus, the main season for sowing linseed is\n October to November depending upon the\n availability of soil moisture.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'suyhb34d': {
      'en': 'Soil Type',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jnvq1dyk': {
      'en':
          'Linseed is a cool season crop and requires \nmoderate to cool temperature. It is grown best\n in well drained, fertile, medium and heavy soils\n especially silty loam, clay loam and silty clays. \nThis crop is under cultivation in three ecosystems \nnamely utera, rainfed and irrigated.',
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
          'Linseed responds well to fertilizers. Fertilizer\n recommendation dose vary between \nagro-eco-regions. Fertilizers should be applied \nat the time of sowing. Under rainfed conditions, \nthe fertilizer dose of 30 kg of N and 15 kg of P per ha \nis given. The deep placement of fertilizer at sowing\n in the case of the rainfed crop gives better results. \nNitrogen is applied in two splits, half the dose \nas basal and the other half at 40 to 50 days after\n sowing. The relay crop is fertilized at the rate of \n10 kg of N per ha applied at the time of sowing. \nAn application of 5t FYM/ha can save 25% \nof inorganic fertilizer. NPK fertilizers are applied \n5 to 10 cm away and below the seed in moist \nsoil layers, especially under dryland cultivation.\nDepending on the soil type, about 40 kg P2O5 /ha\n is recommended for linseed. About K2O kg/ha is\n suggested. In the Indian subcontinent the general\n recommendations are 20 to 60 kg N, 10 to 30 kg \nP2O5 and 30 to 60 kg K2O per ha. The NPK demand\n of linseed is more at bud formation to peak\n flowering. In S deficient soils, 30 S kg/ha is given \nthrough gypsum. Linseed is considered\n moderately susceptible to B and Zn deficiency. \nHence soil application of 1.0 to 1.5 kg B and \n20 to 25 kg ZnSO4 per ha to calcareous soils \nor recently limed soil has been suggested.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '1wza4iyg': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5f8fkxr6': {
      'en':
          'To ensure clean cultivation, cuscuta seeds \nshould be separated before sowing. Other weeds\n could be managed by post emergence\n application of weedicides isoproturon \n@1.00kg/ha at 30-35 DAS. However, 2,4-D (Na)\n @0.5kg/ha may also be mixed in the tank with \nIsoproturon if broad leaf weeds are also problem.',
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
          '1. Generally linseed crop is taken as rainfed crop \non the residual moisture.\n2. If sufficient moisture is not available in soil at \nthe time of sowing, pre-soaking irrigation should \nbe given.\n3. If irrigation facilities are available than two\n irrigations may be given.\n4. One at flowering stage and another at seed \ndeveloping stage.',
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
          'Crop should be harvested by sickle when the \nleaves are dry, the capsules have turned brown\n and seeds become shiny.\n\nYield\n\nRainfed condition – 800-1000 kg/ha\nIrrigated condition – 1600-2000 kg/ha\nProtective irrigated condition – 1200-1500 kg/ha',
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
    'fc4ov8id': {
      'en': 'MUSTARD ',
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
          'The mustard plant is any one of several plant\n species in the genera Brassica and Sinapis in \nthe family Brassicaceae. Mustard seed is used as\n a spice. Grinding and mixing the seeds with water,\n vinegar, or other liquids creates the yellow\n condiment known as prepared mustard. ',
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
          'Climatic requirements for Mustard \nFarming:- Mustard is grown in subtropical climate.\n Mustard thrives well in dry and cool climate,\n therefore mustard mostly grown as Rabi\n season crop. Mustard crop requires the\n temperatures between 10°C to 25°C. Mustard crop\n is grown in the areas receiving 625 -1000 mm\n yearly rainfall.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5v7ed1rs': {
      'en': 'Soil Type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'cxekc73j': {
      'en':
          'Sandy loam to clay loam soils but thrive best on \nlight loam soils. Do not tolerate water logging\n conditions or heavy soils Soil having neutral pH \nis ideal for their proper growth and development.',
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
          'Nitrogen (N) is essential for vigorous growth, \nhigh yield and quality of mustard. Nitrogen is\n essential in the production of plant proteins and\n chlorophyll, and is needed in the greatest amount \ncompared to the other macronutrients.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'foppplga': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'vjavswir': {
      'en':
          'The Field should be free from weeds to procure \na high yield. Weeds if present in the field not only\n consume fertilizer and water but also light, air and \nspace and so the production of the mustard crop \nreduces drastically.',
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
          'Mustard requires about 31-40 cms of water. \nThe first irrigation should be given at the flowering \nstage which is about 30 days after sowing. \nThe second irrigation should be given at the pod \nformation stage which is about 60-65 days after\n sowing. When mustard is grown as mixed crop\n it is irrigated as maincrop.',
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
          'Crop takes 110 to 140 days to mature, depending \nvariety. Harvest crop when pods turn yellow\n and seed become hard. To avoid shattering loss\n carried out harvesting in morning hours. With the\n help of sickle, cut crops close to ground.',
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
    'cfh794q9': {
      'en': ' RICE ',
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
          'Rice is the seed of the grass species Oryza sativa \nor less commonly Oryza glaberrima. The name \nwild rice is usually used for species of the genera\n Zizania and Porteresia, both wild and \ndomesticated, although the term may also be \nused for primitive or uncultivated varieties of\n Oryza.',
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
          'Rice crop needs a hot and humid climate. It is best\n suited to regions which have high humidity,\n prolonged sunshine and an assured supply of\n water. The average temperature required\n throughout the life period of the crop ranges\n from 21 to 37º C. Maximum temp which the crop \ncan tolerate 400C to 42 C.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mo6fp348': {
      'en': 'Soil Type',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mc75uqa6': {
      'en':
          'Clay or clay loams are most suited for rice \ncultivation. Such soils are capable of holding \nwater for long and sustain crop. Rice being a\n semi-aquatic crop, grows best under sub-merge \nconditions. Rice is cultivated in almost all types of\n soils with varying productivity.\n',
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
          'Chemical fertilizers are the main input for \nhigh-yielding rice cultivation globally. Nitrogen (N), \nphosphorus (P), and potassium (K) are the most \napplied nutrient for rice production.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3w3xszqx': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'n3sa7lvn': {
      'en':
          'In transplanted rice, hand weeding twice on \n15 - 20 DAT and 45 DAT will control the weeds\n effectively (or) Pendimethalin 3.0 lit/ha at 8 DAT \nwith optimum moisture condition and one hand\n weeding on 45 DAT.',
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
          'Irrigation is an important stage in paddy crop. \nSufficient availability of irrigation is very important\n for paddy crop. In food grain crops, it requires\n more water rather than other crops. In paddy crop, \n1500-2500 mm water is required. Direct sowing\n varieties require less water than transplanting \nvarieties.',
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
          'Rice is manually threshed, then cleaned with a \nmachine thresher. A reaper cuts and lays the crop\n in a line. Threshing and cleaning can then be\n performed manually or by machine. The combine \nharvester combines all operations from paddy \nharvesting to rice extraction - cutting, handling, \nthreshing and cleaning.',
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
    '0ckgaiu7': {
      'en': ' SUGARCANE ',
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
          'Sugarcanes belong to the grass family, Poaceae,\n an economically important flowering plant family \nthat includes maize, wheat, rice, and sorghum, \nand many forage crops.',
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
          'Sugarcane cultivation requires a tropical or \nsubtropical climate, with a minimum of 60 cm \n(24 in) of annual moisture. It is one of the most\n efficient photosynthesizers in the plant kingdom.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3fna0qph': {
      'en': 'Soil Type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'obu6l2fn': {
      'en':
          'Sugarcane is grown in various kinds of soils,\n such as red volcanic soils and alluvial soils of\n rivers. The ideal soil is a mixture of sand, silt, \nand clay particles, with a measure of organic\n material.',
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
          'Nitrogen should be applied at 60 to 100 pounds\n per acre (27 to 45 kilos/. 40 ha). The lower amount\n is for lighter soil while the higher amount is in\n heavy soils. Phosphorus is the other \nmacronutrient sugarcane fertilizer should contain.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9z2l9dz2': {
      'en': 'Weed Control ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9iewc08g': {
      'en':
          'It is important to control the weeds in sugarcane\n fields at their germination stage itself. \nPre-emergence atrazine at a dosage of around\n 2.0 kg a.i./ha gives very good control of both \nbroad leaf weeds and grasses germinating \nfrom seeds. It does not control weeds that grow \nfrom vegetative parts.',
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
          'Irrigate the crop depending upon the need during \ndifferent phases of the crop. Germination phase \n(0 - 35 days): Provide shallow wetting with\n 2 to 3 cm depth of water at shorter intervals \nespecially for sandy soil for enhancing the \ngermination.',
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
          ' Sugarcane matures in 10-12 month in North India \nand 18-20 month in South India. Brix value is 16-18 \nin Dec and Jan at or below 200 C. Different \nIndicators of harvesting are leaves become yellow, \nplants stops growing and arrows come out, \ncane produces metallic sounds, buds swell out \nand eyes start sprouting.',
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
    's0qa49wn': {
      'en': ' TOMATO ',
      'hi': 'टमाटर',
      'mr': 'टोमॅटो',
      'or': 'TOMATO',
      'te': 'టొమాటో',
    },
    'js0yu90e': {
      'en': 'Introduction ',
      'hi': 'परिचय',
      'mr': 'परिचय',
      'or': 'ପରିଚୟ',
      'te': 'పరిచయం',
    },
    'ihf714be': {
      'en':
          'The tomato is the edible berry of the plant\n Solanum lycopersicum, commonly known as the\n tomato plant. The species originated in \nwestern South America and Central America. \nThe Mexican Nahuatl word tomatl gave rise to the \nSpanish word tomate, from which the English word \ntomato derived.',
      'hi':
          'टमाटर सोलनम लाइकोपर्सिकम पौधे का खाने योग्य बेरी है, जिसे आमतौर पर टमाटर के पौधे के रूप में जाना जाता है। प्रजातियों की उत्पत्ति पश्चिमी दक्षिण अमेरिका और मध्य अमेरिका में हुई थी। मैक्सिकन नहुआट्ल शब्द टोमैटल ने स्पेनिश शब्द टोमेट को जन्म दिया, जिससे अंग्रेजी शब्द टमाटर निकला।',
      'mr':
          'टोमॅटो हे सोलॅनम लाइकोपर्सिकम या वनस्पतीचे खाद्य बेरी आहे, सामान्यतः टोमॅटो वनस्पती म्हणून ओळखले जाते. प्रजाती पश्चिम दक्षिण अमेरिका आणि मध्य अमेरिका मध्ये उद्भवली आहे. मेक्सिकन नाहुआट्ल शब्द tomatl याने स्पॅनिश शब्द टोमेटला जन्म दिला, ज्यावरून टोमॅटो हा इंग्रजी शब्द आला.',
      'or':
          'ଟମାଟୋ ହେଉଛି ଉଦ୍ଭିଦ ସୋଲାନମ୍ ଲାଇକୋପରସିକମ୍ ର ଖାଇବା ବିରି, ଯାହା ସାଧାରଣତ the ଟମାଟୋ ପ୍ଲାଣ୍ଟ ଭାବରେ ଜଣାଶୁଣା | ଏହି ପ୍ରଜାତି ପଶ୍ଚିମ ଦକ୍ଷିଣ ଆମେରିକା ଏବଂ କେନ୍ଦ୍ରୀୟ ଆମେରିକାରେ ଉତ୍ପନ୍ନ | ମେକ୍ସିକାନ୍ ନାହୁଆଟ୍ ଶବ୍ଦ ଟମାଟଲ୍ ସ୍ପେନୀୟ ଶବ୍ଦ ଟମାଟେକୁ ସୃଷ୍ଟି କଲା, ଯେଉଁଠାରୁ ଇଂରାଜୀ ଶବ୍ଦ ଟମାଟୋ ଉତ୍ପନ୍ନ ହେଲା |',
      'te':
          'టొమాటో అనేది సోలనమ్ లైకోపెర్సికమ్ అనే మొక్క యొక్క తినదగిన బెర్రీ, దీనిని సాధారణంగా టొమాటో ప్లాంట్ అని పిలుస్తారు. ఈ జాతులు పశ్చిమ దక్షిణ అమెరికా మరియు మధ్య అమెరికాలో ఉద్భవించాయి. మెక్సికన్ Nahuatl పదం tomatl స్పానిష్ పదం tomate పుట్టుకొచ్చింది, దీని నుండి ఆంగ్ల పదం tomato ఉద్భవించింది.',
    },
    '5krx1awy': {
      'en': 'Climate ',
      'hi': 'जलवायु',
      'mr': 'हवामान',
      'or': 'ଜଳବାୟୁ',
      'te': 'వాతావరణం',
    },
    'a8ppx66m': {
      'en':
          'Tomato is a warm season crop. The best \nfruit colour and quality is obtained at a \ntemperature range of 21-24°C. Temperatures \nabove 32o C adversely affects the fruit set and \ndevelopment. The plants cannot withstand frost\n and high humidity.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'b95aoq4g': {
      'en': 'Soil Type ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8qx3es5l': {
      'en':
          'Tomato can be grown on a wide range of soils \nfrom sandy to heavy clay. However, well-drained,\n sandy or red loam soils rich in organic matter with\n a pH range of 6.0-7.0 are considered as ideal. \nTomato is a warm season crop.',
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
          'If your soil is correctly balanced or high in nitrogen, \nyou should use a fertilizer that is slightly lower \nin nitrogen and higher in phosphorus, such as a\n 5-10-5 or a 5-10-10 mixed fertilizer. If you are \nslightly lacking in nitrogen, use a balanced\n fertilizer like 8-8-8 or 10-10-10.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qy2erpm5': {
      'en': 'Weed Control',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pvzrd5zm': {
      'en':
          'The critical period of weed competition in tomato\n is the first 30 days after transplanting. For the\n control of annual grasses, pre-planting soil\n incorporation of Trifluralin 3 to 5 kg/ha or Nitralin \n3 to 5 kg/ha or Diphenamid 2 to 4 kg/ha is best.\n Similar application of EPTC 2 to 3 kg/ha controls\n nut grass.',
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
          'The depth of irrigation is directly associated \nwith the depth of the tomato root system. \nOut of all the roots, 80% of the feeding roots\n remain in the 20cm-30cm depth. Precision\n irrigation prevents leaching of fertilizers beyond \nthe feeding root zone. Fertilizer use efficiency \nresults in increased tomato yield.',
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
          'Once the tomato reaches a stage when it\'s about\n ½ green and ½ pink (called the \'breaker stage\'),\n the tomato can be harvested and ripened off\n the vine with no loss of flavor, quality or nutrition.',
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
      'hi': 'परीक्षण पैकेज \n\$20',
      'mr': 'चाचणी पॅकेज\n \$20',
      'or': 'ଟ୍ରାଏଲ୍ ପ୍ୟାକେଜ୍ \n\$ 20 |',
      'te': 'ట్రయల్ ప్యాకేజీ \n\$20',
    },
    'lgaug4j4': {
      'en': 'soil sample analysis for 6 parameters :',
      'hi': '6 मापदंडों के लिए मिट्टी का नमूना विश्लेषण:',
      'mr': '6 पॅरामीटर्ससाठी माती नमुना विश्लेषण:',
      'or': '6 ଟି ପାରାମିଟର ପାଇଁ ମୃତ୍ତିକା ନମୁନା ବିଶ୍ଳେଷଣ:',
      'te': '6 పారామితుల కోసం నేల నమూనా విశ్లేషణ:',
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
      'hi': 'कार्बनिक कार्बन (सी)',
      'mr': 'सेंद्रिय कार्बन (C)',
      'or': 'ଜ Organ ବ ଅଙ୍ଗାରକାମ୍ଳ (C)',
      'te': 'సేంద్రీయ కార్బన్ (C)',
    },
    'be0j0t2u': {
      'en': 'Electrical conductivity (Ec)',
      'hi': 'विद्युत चालकता (ईसी)',
      'mr': 'विद्युत चालकता (ईसी)',
      'or': 'ବ Elect ଦ୍ୟୁତିକ କଣ୍ଡକ୍ଟିଭିଟି (ଇକ୍)',
      'te': 'విద్యుత్ వాహకత (Ec)',
    },
    '0gygkccs': {
      'en': 'Nitrogen (N)',
      'hi': 'नाइट्रोजन (एन)',
      'mr': 'नायट्रोजन (N)',
      'or': 'ନାଇଟ୍ରୋଜେନ୍ (N)',
      'te': 'నైట్రోజన్ (N)',
    },
    'isxngucd': {
      'en': 'Phosporous(P)',
      'hi': 'फास्फोरस (पी)',
      'mr': 'स्फुरद (P)',
      'or': 'ଫସପୋରସ୍ (P)',
      'te': 'భాస్వరం(పి)',
    },
    'rs2pk8by': {
      'en': 'Pottasium(K)',
      'hi': 'पोटेशियम (के)',
      'mr': 'पोटॅशियम(के)',
      'or': 'ପୋଟାସିୟମ୍ (କେ)',
      'te': 'పొటాషియం(కె)',
    },
    'g24521ww': {
      'en': 'BUY NOW ',
      'hi': 'अभी खरीदें',
      'mr': 'आता खरेदी करा',
      'or': 'ବର୍ତ୍ତମାନ କିଣ |',
      'te': 'ఇప్పుడే కొనండి',
    },
    'i1yu7jnm': {
      'en': 'Basic package                                \$100',
      'hi': 'बेसिक पैककेज \n\$100',
      'mr': 'मूळ पॅकेज \n\$100',
      'or': 'ମ Basic ଳିକ ପ୍ୟାକେଜ୍ \n\$ 100 |',
      'te': 'ప్రాథమిక ప్యాకేజీ\n \$100',
    },
    'e9ow1itx': {
      'en': 'soil sample analysis for 14 elements :',
      'hi': '14 तत्वों के लिए मृदा नमूना विश्लेषण:',
      'mr': '14 घटकांसाठी माती नमुना विश्लेषण:',
      'or': '14 ଉପାଦାନ ପାଇଁ ମୃତ୍ତିକା ନମୁନା ବିଶ୍ଳେଷଣ:',
      'te': '14 మూలకాల కోసం నేల నమూనా విశ్లేషణ:',
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
      'hi': 'कार्बनिक कार्बन (ओसी)',
      'mr': 'सेंद्रिय कार्बन (OC)',
      'or': 'ଜ Organ ବିକ କାର୍ବନ (OC)',
      'te': 'సేంద్రీయ కార్బన్ (OC)',
    },
    '97shccc2': {
      'en': 'Electrical conductivity (Ec)',
      'hi': 'विद्युत चालकता (ईसी)',
      'mr': 'विद्युत चालकता (ईसी)',
      'or': 'ବ Elect ଦ୍ୟୁତିକ କଣ୍ଡକ୍ଟିଭିଟି (ଇକ୍)',
      'te': 'విద్యుత్ వాహకత (Ec)',
    },
    'ooif4nd9': {
      'en': 'Nitrogen(N)',
      'hi': 'नाइट्रोजन (एन)',
      'mr': 'नायट्रोजन(N)',
      'or': 'ନାଇଟ୍ରୋଜେନ୍ (N)',
      'te': 'నైట్రోజన్(N)',
    },
    '2i0iwqm3': {
      'en': 'Phosporous(P)',
      'hi': 'फास्फोरस (पी)',
      'mr': 'स्फुरद (P)',
      'or': 'ଫସପୋରସ୍ (P)',
      'te': 'భాస్వరం(పి)',
    },
    'cifzwmvw': {
      'en': 'Pottasium (K)',
      'hi': 'पोटेशियम (के)',
      'mr': 'पोटॅशियम (के)',
      'or': 'ପୋଟାସିୟମ୍ (କେ)',
      'te': 'పొటాషియం (కె)',
    },
    'md6tu8fs': {
      'en': 'calcium (Ca)',
      'hi': 'कैल्शियम (सीए)',
      'mr': 'कॅल्शियम (Ca)',
      'or': 'କ୍ୟାଲସିୟମ୍ (Ca)',
      'te': 'కాల్షియం (Ca)',
    },
    'gphiyezj': {
      'en': 'Magnesium (Mg)',
      'hi': 'मैग्नीशियम (एमजी)',
      'mr': 'मॅग्नेशियम (मिग्रॅ)',
      'or': 'ମ୍ୟାଗ୍ନେସିୟମ୍ (Mg)',
      'te': 'మెగ్నీషియం (Mg)',
    },
    'oee1tfyz': {
      'en': 'Sulfur (S)',
      'hi': 'सल्फर (एस)',
      'mr': 'सल्फर (एस)',
      'or': 'ଗନ୍ଧକ (S)',
      'te': 'సల్ఫర్ (S)',
    },
    'sa4yhjgl': {
      'en': 'Zink(Zn)',
      'hi': 'जिंक (Zn)',
      'mr': 'Zink(Zn)',
      'or': 'ଜିଙ୍କ୍ (Zn)',
      'te': 'జింక్(Zn)',
    },
    '06oh33go': {
      'en': 'Mnaganese (Mn)',
      'hi': 'मैगनीज (Mn)',
      'mr': 'Mnaganese (Mn)',
      'or': 'Mnaganese (Mn)',
      'te': 'మ్నాగనీస్ (Mn)',
    },
    'brd87f6l': {
      'en': 'Iron (Fe)',
      'hi': 'लोहा (Fe)',
      'mr': 'लोह (Fe)',
      'or': 'ଲ Iron ହ (Fe)',
      'te': 'ఇనుము (Fe)',
    },
    'y54oyh3g': {
      'en': 'Copper (Cu)',
      'hi': 'कॉपर (घन)',
      'mr': 'तांबे (Cu)',
      'or': 'ତମ୍ବା (Cu)',
      'te': 'రాగి (Cu)',
    },
    'bup2imxb': {
      'en': 'Boron (B)',
      'hi': 'बोरॉन (बी)',
      'mr': 'बोरॉन (B)',
      'or': 'ବୋରନ୍ (ବି)',
      'te': 'బోరాన్ (బి)',
    },
    'cxctj9g5': {
      'en': 'BUY NOW ',
      'hi': 'अभी खरीदें',
      'mr': 'आता खरेदी करा',
      'or': 'ବର୍ତ୍ତମାନ କିଣ |',
      'te': 'ఇప్పుడే కొనండి',
    },
    'odqaj3q8': {
      'en': 'Standered  package                      \$500',
      'hi': 'स्टैंडर्ड पैककेज \$500',
      'mr': 'स्टँडर्ड पॅकेज \$500',
      'or': 'ଷ୍ଟାଣ୍ଡାର୍ଡ ପ୍ୟାକେଜ୍ \$ 500 |',
      'te': 'స్టాండర్డ్ ప్యాకేజీ \$500',
    },
    'cg7v9p5i': {
      'en': 'soil sample analysis for 15 elements :',
      'hi': '15 तत्वों के लिए मृदा नमूना विश्लेषण :',
      'mr': '15 घटकांसाठी माती नमुना विश्लेषण:',
      'or': '15 ଉପାଦାନ ପାଇଁ ମୃତ୍ତିକା ନମୁନା ବିଶ୍ଳେଷଣ:',
      'te': '15 మూలకాల కోసం నేల నమూనా విశ్లేషణ:',
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
    '3bgncgrr': {
      'en': 'Soil Testing',
      'hi': 'ऍग्रोएड',
      'mr': 'ऍग्रोएड',
      'or': 'ऍग्रोएड',
      'te': 'ఆగ్రోఎయిడ్',
    },
    'wljwgox0': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // News
  {
    'tppoel03': {
      'en': ' NEWS',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    's5wgi2zm': {
      'en':
          'Citing threat to food security,\n the Government has “prohibited”\n export of wheat. The decision \nwas taken on Friday, in view of\n the “sudden spike in the global\n prices of wheat arising \n\n',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '2ws5kbcx': {
      'en':
          'Sugar production this season, \nwhich will end in September, \nis estimated to be 350 lakh tonnes,\n after taking into consideration \n34 lakh tonnes of sugar \nequivalent for ethanol production.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5wv08e6j': {
      'en':
          'The price tag of tomatoes, \nwhich was ₹60 a kg last week at\n the vegetable markets in \nRayalaseema districts, all of a \nsudden jumped to an unnerving\n ₹100-plus on Saturday. ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8mrk9cqb': {
      'en':
          'The Central government has \nhiked the minimum price that \nsugar mills must pay to cane \nfarmers by ₹5 a quintal, setting\n the fair and remunerative price\n (FRP) at ₹290 a quintal for the 2021-22 ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5yqh7670': {
      'en':
          'A new variety of groundnut seed \nis likely to offer some \nencouragement to farmers even\n as acreage of the groundnut\n crop has witnessed a drastic \ndecline',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'llyl6255': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // ecomm_home
  {
    '98pdxo53': {
      'en': 'Recommended Products',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8ssdcn1r': {
      'en': 'Search events here...',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '7iek45eh': {
      'en': 'Today\'s Deals',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wbbd0b1k': {
      'en': 'Recommended for you',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ph6kv137': {
      'en': 'View All',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'umic7lzk': {
      'en': 'Criyagen 00-52-34',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'mpveedq0': {
      'en': '₹270.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'r42zoywh': {
      'en': 'Criyagen 12-61-00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dbqi4uoj': {
      'en': '₹200.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qq66meei': {
      'en': 'Criyagen Amino-G Bucket ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'biboz9qu': {
      'en': '₹685.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'r282ry3k': {
      'en': 'Criyagen ZnSO4 21% ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'eoq1sz0j': {
      'en': '₹1050.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ixuqdd52': {
      'en': 'Criyagen MgSO4 9.6%',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'w14o9moq': {
      'en': '₹250.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wbdgiiuh': {
      'en': 'Criyagen Zen Bio - fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'lga1vyt8': {
      'en': '₹700.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8vreg284': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // ecomm_cart
  {
    'ujk96z7z': {
      'en': 'Back',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '3yigbldt': {
      'en': 'Cart',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'peax4woj': {
      'en': 'Criyagen Zen Bio Fertilizer ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm9cy60oe': {
      'en': '₹700.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'hdg2mjn6': {
      'en': 'Quanity: 1',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'x8ahzw19': {
      'en': 'Criyagen 12-61-00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0cqbsnwn': {
      'en': '₹200.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9iwbgbvo': {
      'en': 'Quanity: 1',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'eltkp4p9': {
      'en': 'Base Price',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0k749p1r': {
      'en': '₹900.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '6phrqdca': {
      'en': 'Total',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'k1apium1': {
      'en': '₹900.00',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'znv36olc': {
      'en': 'Checkout (₹900.00)',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'p59aqxp4': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // search_vendors
  {
    '36g69kai': {
      'en': 'Vendors Details',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'iymnjxrm': {
      'en': 'Type to search here...',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4ndd7hhj': {
      'en': 'Ram Singh',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tyiaqijg': {
      'en': 'Wheat | Rice | Maize ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'sc0ncard': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ajw5ojyn': {
      'en': '0123456789',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tb4o1gmh': {
      'en': 'Neerukonda, Guntur',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '5vodm3x7': {
      'en': 'Bablu Naik',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gvgs7jnu': {
      'en': 'Sugarcane | Maize | barley | Millets ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'svwpbg6r': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'no33m65f': {
      'en': '8974525832',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    's7rzzokg': {
      'en': 'Sundargarh. Odisha',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'pnj17fvy': {
      'en': 'Mahendra Sharma',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zjoimuq9': {
      'en': 'Tomato | Potato | Rice | Wheat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'q804mkzl': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jlfubmtg': {
      'en': '9864527872',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j00t39kj': {
      'en': 'Pendurthi, Vizag',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '32g3wjli': {
      'en': 'Shyam Sharma',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'g0l7oqha': {
      'en': 'Groundnut | Jute | Mustard | Linseed',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jf96g4xd': {
      'en': 'Chat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'gea0amsu': {
      'en': '7845637936',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'qegsmemr': {
      'en': 'Saraipali, Chattisgarh',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // myfriends
  {
    '3nl8gatq': {
      'en': 'My Team',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ogi2iwxw': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // chatMain
  {
    'iejhld1g': {
      'en': 'Chats',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'up75bdxk': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // chatDetails
  {
    '5uze4f4w': {
      'en': 'Job Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '63mf1wxn': {
      'en': 'Employed Since',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dw2xvp9i': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // add_crop1
  {
    'ae2674ec': {
      'en': 'Add Crop : ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8z1qsoni': {
      'en': 'Wheat',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9ge7eclv': {
      'en': 'Rice ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9thewt7e': {
      'en': 'Maize ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'f6kdvuva': {
      'en': 'Milletes',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dwq84f6r': {
      'en': 'Tomato',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jlebhlck': {
      'en': 'Ground nut',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tg355a97': {
      'en': 'Corn',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'y8iwrhcf': {
      'en': 'Cotton',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'dda8zm6e': {
      'en': 'Barley',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ok6t5488': {
      'en': 'Jute',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    't1isjtxt': {
      'en': 'Linseed',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zg11je6e': {
      'en': 'Mustard',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '8wen9f75': {
      'en': 'Select Crop',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '0x2ugdvt': {
      'en': 'Add Quantity : ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fe42wjye': {
      'en': '1 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'o9r7fw4x': {
      'en': '2 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'n2a11vpf': {
      'en': '3 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'rshyplf7': {
      'en': '4 hc ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'hjjl3ek7': {
      'en': '5 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '17hshla9': {
      'en': '6 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9vgd8u3o': {
      'en': '7 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '38fw56s5': {
      'en': '8 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'sjvrtl75': {
      'en': '9 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4barpphy': {
      'en': '10 hc',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zlgi2m3r': {
      'en': 'Select Quantiyt ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    't294v30k': {
      'en': 'Search Vendors ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'x0xza3t6': {
      'en': '[User Name]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'abirande': {
      'en': '[username@domain.com]',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // faqs
  {
    'dub1k3em': {
      'en': 'What is AGRO-AID ? ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'y57b2wjo': {
      'en':
          'AGRO-AID is an app to carry out farming \nhaving adequate knowledge and resources \nand to be able adequate knowledge and \nresources and to be able, to sell crops to right \nvendor.  ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'nxwip7q5': {
      'en': 'How does it work ?',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'n8oqy5ey': {
      'en':
          'After login, you can check the hire \nmachineries, check weather and also add \nyour crops and select vendors to sell your \ncrop. ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'e9gcym5h': {
      'en': 'What are the major challenges \nAGRO-AID address ?',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'nl1jgq7h': {
      'en':
          'The major challenges AGRO-AID adresses\n are : \navailability of higher machinaries, adequate \nknowledge about crops and weather and \nselling the crops at right price to the right \nvendor. ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'a1ohm8tu': {
      'en': 'How can I be a part of AGRO-AID ? ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tq10cy8x': {
      'en':
          'Login to the app by a new phone number\n and you\\will be a part of the family.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'a7chfgtw': {
      'en': 'For more queries\n contact us on \nagroaid@gmail.com',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'jx0fxp48': {
      'en': 'FAQ\'s',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'r7xfnobk': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // hire_machineries
  {
    'pmg7w0pj': {
      'en': 'Hire Machineries ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'tlcnssvv': {
      'en': 'Combine Harvester',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'x8vz4y7z': {
      'en': 'Used for cutting and threshing grains.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'i9p9uqke': {
      'en': 'Rs. 700/hr',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'es3byatp': {
      'en': 'Rotavator ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'v8pgblcz': {
      'en':
          'Used to churn and aerate the soil prior to the area being seeded or having turf laid.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ieyuyl69': {
      'en': 'Rs. 900/hr',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '65kpecos': {
      'en': 'Plough',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'm5suze0k': {
      'en':
          'Used to turn and break up soil, to bury crop residues, and to help control weeds.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'rlg49eik': {
      'en': 'Rs. 200/hr',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wg0k2vnw': {
      'en': 'Tractor ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    't2xm9pfn': {
      'en':
          'Used  alongside machinery to perform implements like ploughing, tilling, sowing, and harrowing.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'wtias7xv': {
      'en': 'Rs. 1200/hr ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'plc3w3b8': {
      'en': 'Power Harrow ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '4ypjxbdq': {
      'en':
          'Used to turn, break, refine and even distribution of soil over the entire working width to create a perfect seed bed.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '82c21h5t': {
      'en': 'Rs. 500/hr ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'zwtri5ot': {
      'en': 'Leveler',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9i63mh13': {
      'en':
          'It improves crop establishment, crop stand, crop maturation and water coverage of the field.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'r13iqm4z': {
      'en': 'Rs. 400/hr',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'haeuyx08': {
      'en': 'Water Bowser ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'haeicggr': {
      'en':
          'Used for storage of water for irrigation, agriculture and as a fire extinguisher during fire hazards and for many other applications.',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'j8ez0kas': {
      'en': 'Rs. 1000/hr ',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    '9r5pgupr': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // myProfile
  {
    'pbafs0mo': {
      'en': 'Account Settings',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'enu6cs0s': {
      'en': 'Edit Profile',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'hfvtyuyi': {
      'en': 'Back',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
  // editProfile
  {
    'jzkx344o': {
      'en': 'Edit Profile',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'ne1uwpzi': {
      'en': 'Email Address',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'k3ptjmaf': {
      'en': 'Full Name',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'g0zqkpis': {
      'en': 'Job Title',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'fik10uzb': {
      'en': 'Save Changes',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
    'agqg6mmo': {
      'en': 'Home',
      'hi': '',
      'mr': '',
      'or': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
