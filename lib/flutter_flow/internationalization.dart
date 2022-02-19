import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'ml'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String en = '',
    String ml = '',
  }) =>
      [en, ml][languageIndex] ?? '';
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
  // Welcome
  {
    '07hl3mlx': {
      'en': 'Continue as?',
      'ml': 'ആയി തുടരണോ?',
    },
    'vj3x08oo': {
      'en': 'Vendor',
      'ml': 'വെണ്ടർ',
    },
    'vofml9x7': {
      'en': 'Transporter',
      'ml': 'ട്രാൻസ്പോർട്ടർ',
    },
    'tqtcz0jg': {
      'en': 'Customer',
      'ml': 'ഉപഭോക്താവ്',
    },
    '2tgxhxsp': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // GetStarted
  {
    'u4rxuqjz': {
      'en': 'Get Started!',
      'ml': 'തുടങ്ങി!',
    },
    '1fbo4j9g': {
      'en': 'Enter Phone number',
      'ml': 'ഫോൺ നമ്പർ നൽകുക',
    },
    'pgwd7q2t': {
      'en': 'Sign In',
      'ml': 'സൈൻ ഇൻ',
    },
    '7rg9uud1': {
      'en': 'Don\'t have an account?',
      'ml': 'അക്കൗണ്ട് ഇല്ലേ?',
    },
    '81xwnz7v': {
      'en': 'Sign up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുക',
    },
    '2n1xk4tx': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // Verification
  {
    'flsrh0ca': {
      'en': 'Verification',
      'ml': 'സ്ഥിരീകരണം',
    },
    'hn34d9zj': {
      'en':
          'Please enter the 4 digit verification\n                   code we sent you',
      'ml': 'ഞങ്ങൾ നിങ്ങൾക്ക് അയച്ച 4 അക്ക സ്ഥിരീകരണ കോഡ് നൽകുക',
    },
    'qh1snv6i': {
      'en': 'Enter OTP',
      'ml': 'OTP നൽകുക',
    },
    'q17tmdlt': {
      'en': 'Don\'t have an account?',
      'ml': 'അക്കൗണ്ട് ഇല്ലേ?',
    },
    'id8irn2h': {
      'en': ' Resend',
      'ml': 'വീണ്ടും അയയ്ക്കുക',
    },
    'kzn1hrux': {
      'en': 'Confirm',
      'ml': 'സ്ഥിരീകരിക്കുക',
    },
    'onkt0k6a': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // Register
  {
    'ao3p8g75': {
      'en': 'Register',
      'ml': 'രജിസ്റ്റർ ചെയ്യുക',
    },
    'knptriw3': {
      'en': 'Fill in the details to sign up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുന്നതിന് വിശദാംശങ്ങൾ പൂരിപ്പിക്കുക',
    },
    'xbamvbl4': {
      'en': 'ADD YOUR PROFILE PICTURE',
      'ml': 'നിങ്ങളുടെ പ്രൊഫൈൽ ചിത്രം ചേർക്കുക',
    },
    '10deh2kv': {
      'en': '*FULL NAME',
      'ml': '*പൂർണ്ണമായ പേര്',
    },
    'zq4wnl0o': {
      'en': '*PHONE NUMBER',
      'ml': '*ഫോൺ നമ്പർ',
    },
    'm09gqt45': {
      'en': '*DATE OF BIRTH',
      'ml': '*ജനിച്ച ദിവസം',
    },
    'zcgj7bsr': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VerificationRepeat
  {
    'gmaeagft': {
      'en': 'Verification',
      'ml': 'സ്ഥിരീകരണം',
    },
    '2t1x2ui8': {
      'en':
          'Please enter the 4 digit verification\n                   code we sent you',
      'ml': 'ഞങ്ങൾ നിങ്ങൾക്ക് അയച്ച 4 അക്ക സ്ഥിരീകരണ കോഡ് നൽകുക',
    },
    't1gkby2g': {
      'en': 'Enter OTP',
      'ml': 'OTP നൽകുക',
    },
    '659teoro': {
      'en': 'Don\'t have an account?',
      'ml': 'അക്കൗണ്ട് ഇല്ലേ?',
    },
    '01bf7etk': {
      'en': ' Resend',
      'ml': 'വീണ്ടും അയയ്ക്കുക',
    },
    'n5s08cke': {
      'en': 'Confirm',
      'ml': 'സ്ഥിരീകരിക്കുക',
    },
    'jjumk65z': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // SellerInformation
  {
    '9hum03jg': {
      'en': 'Seller Information',
      'ml': 'വിൽപ്പനക്കാരന്റെ വിവരങ്ങൾ',
    },
    '15b5vpay': {
      'en': 'We just need to know, your shop details',
      'ml': 'ഞങ്ങൾക്ക് അറിയേണ്ടത് നിങ്ങളുടെ ഷോപ്പിന്റെ വിശദാംശങ്ങൾ മാത്രമാണ്',
    },
    'g8ie3whp': {
      'en': '*UPLOAD PHOTO OF YOUR SHIOP',
      'ml': '*നിങ്ങളുടെ ഷിപ്പിന്റെ ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യുക',
    },
    '46u8dcuq': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'xffblyl4': {
      'en': 'LOGO ( optonal )',
      'ml': 'ലോഗോ (ഓപ്‌ടോണൽ)',
    },
    'avnp7jj5': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    '56whc172': {
      'en': '*SHOP TYPE',
      'ml': '*ഷോപ്പ് തരം',
    },
    'm5y1r9oi': {
      'en': 'Electronics',
      'ml': 'ഇലക്ട്രോണിക്സ്',
    },
    'qa3n0fif': {
      'en': 'Clothing and Accessories',
      'ml': 'വസ്ത്രങ്ങളും അനുബന്ധ ഉപകരണങ്ങളും',
    },
    '56ujfdm6': {
      'en': 'Health and Beauty',
      'ml': 'ആരോഗ്യവും സൗന്ദര്യവും',
    },
    'bso4hjag': {
      'en': 'Groceries',
      'ml': 'പലചരക്ക് സാധനങ്ങൾ',
    },
    'ubi6l16u': {
      'en': 'Fruits and Vegetables',
      'ml': 'പഴങ്ങളും പച്ചക്കറികളും',
    },
    '0bxal6ia': {
      'en': 'Books',
      'ml': 'പുസ്തകങ്ങൾ',
    },
    'z9xwmynd': {
      'en': 'Home and Kitchen',
      'ml': 'വീടും അടുക്കളയും',
    },
    't46jkw9f': {
      'en': 'Sports and Outdoors',
      'ml': 'സ്പോർട്സും ഔട്ട്ഡോറുകളും',
    },
    'hnazhwur': {
      'en': 'Handicrafts',
      'ml': 'കരകൗശലവസ്തുക്കൾ',
    },
    'gfhyp6kv': {
      'en': 'Dairy and Beverages',
      'ml': 'പാലും പാനീയങ്ങളും',
    },
    'khs4pbqg': {
      'en': 'Packed Food',
      'ml': 'പായ്ക്ക് ചെയ്ത ഭക്ഷണം',
    },
    'ert9e8c3': {
      'en': 'Baby and Kids',
      'ml': 'കുഞ്ഞും കുട്ടികളും',
    },
    '136idrg1': {
      'en': 'Footwear',
      'ml': 'പാദരക്ഷകൾ',
    },
    'bburc6v4': {
      'en': 'Stationary',
      'ml': 'നിശ്ചലമായ',
    },
    'lb63m5sw': {
      'en': '*SHOP NAME ( as per your GST Certificate )',
      'ml': '*ഷോപ്പ് പേര് (നിങ്ങളുടെ GST സർട്ടിഫിക്കറ്റ് അനുസരിച്ച്)',
    },
    'ei2hrlzn': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // TaxDetails
  {
    'xa274k0k': {
      'en': 'Tax Details',
      'ml': 'നികുതി വിശദാംശങ്ങൾ',
    },
    '08wb1woc': {
      'en': 'Enter your Tax Details accurately',
      'ml': 'നിങ്ങളുടെ നികുതി വിശദാംശങ്ങൾ കൃത്യമായി നൽകുക',
    },
    'd5g2uxc7': {
      'en': '*GST Number',
      'ml': '*ജിഎസ്ടി നമ്പർ',
    },
    'j72n8scg': {
      'en': '*PAN Number',
      'ml': '*പാൻ നമ്പർ',
    },
    'owbzzipw': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // AlmostDone
  {
    '5wtrqxfq': {
      'en': 'Almost done,',
      'ml': 'ഏതാണ്ട് പൂർത്തിയായി,',
    },
    'lryd6cnr': {
      'en': 'What\'s your shop address?',
      'ml': 'നിങ്ങളുടെ കടയുടെ വിലാസം എന്താണ്?',
    },
    '04lx3sto': {
      'en': '*ADDRESS',
      'ml': '*വിലാസം',
    },
    'b3f5hqnd': {
      'en':
          '( Enter the same address as shown on your GST registration certificate )',
      'ml':
          '(നിങ്ങളുടെ GST രജിസ്ട്രേഷൻ സർട്ടിഫിക്കറ്റിൽ കാണിച്ചിരിക്കുന്ന അതേ വിലാസം നൽകുക)',
    },
    'jfrcbung': {
      'en': '*CITY',
      'ml': '*സിറ്റി',
    },
    'v40xcfoz': {
      'en': '*STATE',
      'ml': '*സംസ്ഥാനം',
    },
    'c8jwcwbb': {
      'en': '*PIN CODE',
      'ml': '*പിൻ കോഡ്',
    },
    '5vioqy0x': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // UploadDocuments
  {
    'ojo7o7j6': {
      'en': 'Upload Documents',
      'ml': 'പ്രമാണങ്ങൾ അപ്‌ലോഡ് ചെയ്യുക',
    },
    '7hg1mr93': {
      'en':
          'We need to check that you are really you,\nIt helps us fight fraud and keep your business secure',
      'ml':
          'നിങ്ങൾ യഥാർത്ഥത്തിൽ നിങ്ങളാണെന്ന് ഞങ്ങൾ പരിശോധിക്കേണ്ടതുണ്ട്, ഇത് വഞ്ചനയ്‌ക്കെതിരെ പോരാടാനും നിങ്ങളുടെ ബിസിനസ്സ് സുരക്ഷിതമായി നിലനിർത്താനും ഞങ്ങളെ സഹായിക്കുന്നു',
    },
    '6lgx161q': {
      'en': '*ADHAAR CARD',
      'ml': '*ആധാർ കാർഡ്',
    },
    'a6a62cek': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'vah8wibs': {
      'en': '*PAN CARD',
      'ml': '*പാൻ കാർഡ്',
    },
    'sxounyyn': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'aj060qzq': {
      'en': '*FSSAI CERTIFICATE',
      'ml': '*FSSAI സർട്ടിഫിക്കറ്റ്',
    },
    'fv6w8ld6': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'jxgye1tu': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // BankAccountDetails
  {
    '2qkjiaxf': {
      'en': 'Bank Account Details',
      'ml': 'ബാങ്ക് അക്കൗണ്ട് വിശദാംശങ്ങൾ',
    },
    'd1atu2uz': {
      'en':
          'K-kada needs your bank account details to receive payments. Please provide the details of the bank account you use for your business, which is linked\nto your GST/PAN.',
      'ml':
          'പേയ്‌മെന്റുകൾ സ്വീകരിക്കാൻ കെ-കടയ്ക്ക് നിങ്ങളുടെ ബാങ്ക് അക്കൗണ്ട് വിശദാംശങ്ങൾ ആവശ്യമാണ്. നിങ്ങളുടെ GST/PAN-മായി ലിങ്ക് ചെയ്‌തിരിക്കുന്ന നിങ്ങളുടെ ബിസിനസ്സിനായി നിങ്ങൾ ഉപയോഗിക്കുന്ന ബാങ്ക് അക്കൗണ്ടിന്റെ വിശദാംശങ്ങൾ നൽകുക.',
    },
    'iiiid61t': {
      'en': '*ACCOUNT HOLDER NAME',
      'ml': '*അക്കൗണ്ട് ഹോൾഡറുടെ പേര്',
    },
    'hnhrnq53': {
      'en': '*ACCOUNT TYPE',
      'ml': '*അക്കൗണ്ട് തരം',
    },
    'pz92wqe6': {
      'en': '*ACCOUNT NUMBER',
      'ml': '*അക്കൗണ്ട് നമ്പർ',
    },
    'dshx1peg': {
      'en': '*RE-ENTER ACCOUNT NUMBER',
      'ml': '*അക്കൗണ്ട് നമ്പർ വീണ്ടും നൽകുക',
    },
    'hu0t5z8i': {
      'en': '*IFSC-CODE',
      'ml': '*IFSC-കോഡ്',
    },
    '5ymqva7k': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ThatsIt
  {
    '9mygflgo': {
      'en': 'Thats\'s it!',
      'ml': 'അത്രമാത്രം!',
    },
    'aymq4bc0': {
      'en':
          'Upload your digital signature which will be\n   used on the invoices sent to customer.',
      'ml':
          'ഉപഭോക്താവിന് അയച്ച ഇൻവോയ്സുകളിൽ ഉപയോഗിക്കുന്ന നിങ്ങളുടെ ഡിജിറ്റൽ സിഗ്നേച്ചർ അപ്‌ലോഡ് ചെയ്യുക.',
    },
    'r9qq4lu5': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    '3ay18ze2': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ThankYou
  {
    't2g0clqr': {
      'en': 'Thank you!',
      'ml': 'നന്ദി!',
    },
    'k849y994': {
      'en': 'Verification Pending',
      'ml': 'പരിശോധിച്ചുറപ്പിക്കൽ ശേഷിക്കുന്നു',
    },
    'lymkql9f': {
      'en': 'You will be contacted by the admin soon.',
      'ml': 'ഉടൻ തന്നെ അഡ്മിൻ നിങ്ങളെ ബന്ധപ്പെടും.',
    },
    'qy7szyy9': {
      'en': 'Track Status',
      'ml': 'സ്റ്റാറ്റസ് ട്രാക്ക് ചെയ്യുക',
    },
    'bsifx5h1': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ProfileStatus
  {
    'l5igix9b': {
      'en': 'Profile Status',
      'ml': 'പ്രൊഫൈൽ നില',
    },
    'cp3o361y': {
      'en': 'Verification Requested',
      'ml': 'സ്ഥിരീകരണം അഭ്യർത്ഥിച്ചു',
    },
    'hjxk41e5': {
      'en': 'KYC Pending',
      'ml': 'KYC തീർപ്പാക്കിയിട്ടില്ല',
    },
    'vj19crki': {
      'en': 'Verification Completed',
      'ml': 'പരിശോധന പൂർത്തിയായി',
    },
    '3j8q70cs': {
      'en':
          'We will get back to you once the\nverification process is completed',
      'ml':
          'പരിശോധിച്ചുറപ്പിക്കൽ പ്രക്രിയ പൂർത്തിയായിക്കഴിഞ്ഞാൽ ഞങ്ങൾ നിങ്ങളെ ബന്ധപ്പെടും',
    },
    '0r4gwnht': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VerificationCompleted
  {
    'fay9yvxp': {
      'en': 'Verification\nCompleted!',
      'ml': 'പരിശോധന പൂർത്തിയായി!',
    },
    '4d6c6c8g': {
      'en': '\'ANAND STATIONARY\'',
      'ml': '&#39;ആനന്ദ് സ്റ്റേഷനറി&#39;',
    },
    'v6ouqyxz': {
      'en': 'Set up your store!',
      'ml': 'നിങ്ങളുടെ സ്റ്റോർ സജ്ജമാക്കുക!',
    },
    'gup4eqqu': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // MyStore
  {
    'x5k0grl6': {
      'en': 'Vendor',
      'ml': 'വെണ്ടർ',
    },
    'o68tiyhb': {
      'en': 'MY STORE',
      'ml': 'എന്റെ സ്റ്റോർ',
    },
    'gawo7j1i': {
      'en': 'See Orders',
      'ml': 'ഓർഡറുകൾ കാണുക',
    },
    'a8mh97gf': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // MyAccountDetails
  {
    'avdrirs3': {
      'en': 'My Account',
      'ml': 'എന്റെ അക്കൗണ്ട്',
    },
    'ttrkdvob': {
      'en': 'FIRST NAME',
      'ml': 'പേരിന്റെ ആദ്യഭാഗം',
    },
    'yhbwc7cw': {
      'en': 'LAST NAME',
      'ml': 'പേരിന്റെ അവസാന ഭാഗം',
    },
    'w19ehvb1': {
      'en': 'MOBILE NUMBER',
      'ml': 'മൊബൈൽ നമ്പർ',
    },
    'x5gl27na': {
      'en': 'EMAIL ID  ',
      'ml': 'ഇ - മെയിൽ ഐഡി',
    },
    'jo4jbunk': {
      'en': '(optional)',
      'ml': '(ഓപ്ഷണൽ)',
    },
    'v2vr8m1x': {
      'en': 'DATE OF BIRTH',
      'ml': 'ജനിച്ച ദിവസം',
    },
    'k11vtyig': {
      'en': 'Save Changes',
      'ml': 'മാറ്റങ്ങൾ സൂക്ഷിക്കുക',
    },
    '7sc1dxc3': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // SelectCategory
  {
    'uda4xe0y': {
      'en': 'Select Category',
      'ml': 'വിഭാഗം തിരഞ്ഞെടുക്കൂ',
    },
    'j7dlscvg': {
      'en': 'Your product comes under which category',
      'ml': 'നിങ്ങളുടെ ഉൽപ്പന്നം ഏത് വിഭാഗത്തിലാണ് വരുന്നത്',
    },
    'gfosm9us': {
      'en': 'Electronics',
      'ml': 'ഇലക്ട്രോണിക്സ്',
    },
    'hosqc7vx': {
      'en': 'Clothing and Accessories',
      'ml': 'വസ്ത്രങ്ങളും അനുബന്ധ ഉപകരണങ്ങളും',
    },
    'lr96wp28': {
      'en': 'Health and Beauty',
      'ml': 'ആരോഗ്യവും സൗന്ദര്യവും',
    },
    '380l35ou': {
      'en': 'Groceries',
      'ml': 'പലചരക്ക് സാധനങ്ങൾ',
    },
    'xw35vlvg': {
      'en': 'Fruits and Vegetables',
      'ml': 'പഴങ്ങളും പച്ചക്കറികളും',
    },
    'b299i2fa': {
      'en': 'Books',
      'ml': 'പുസ്തകങ്ങൾ',
    },
    'g9xleood': {
      'en': 'Home and Kitchen',
      'ml': 'വീടും അടുക്കളയും',
    },
    'w4i8cx2u': {
      'en': 'Sports and Outdoors',
      'ml': 'സ്പോർട്സും ഔട്ട്ഡോറുകളും',
    },
    '53jr6cob': {
      'en': 'Handicrafts',
      'ml': 'കരകൗശലവസ്തുക്കൾ',
    },
    '0rz2dadl': {
      'en': 'Dairy and Beverages',
      'ml': 'പാലും പാനീയങ്ങളും',
    },
    'sguv88aj': {
      'en': 'Packed Food',
      'ml': 'പായ്ക്ക് ചെയ്ത ഭക്ഷണം',
    },
    'hfuh38bo': {
      'en': 'Baby and Kids',
      'ml': 'കുഞ്ഞും കുട്ടികളും',
    },
    'wdsfsr6p': {
      'en': 'Footwear',
      'ml': 'പാദരക്ഷകൾ',
    },
    '9yx3v144': {
      'en': 'Stationary',
      'ml': 'നിശ്ചലമായ',
    },
    'rgd7m09l': {
      'en': 'Select',
      'ml': 'തിരഞ്ഞെടുക്കുക',
    },
    'o52138kg': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // MyProducts
  {
    'zp104smn': {
      'en': 'My Products',
      'ml': 'എന്റെ ഉൽപ്പന്നങ്ങൾ',
    },
    'wod930mb': {
      'en': 'Search Product',
      'ml': 'ഉൽപ്പന്നം തിരയുക',
    },
    'sfyyitly': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // NewProduct
  {
    'xuwdzrqd': {
      'en': 'New Product',
      'ml': 'പുതിയ ഉൽപ്പന്നം',
    },
    'iia2mc8q': {
      'en': 'Save',
      'ml': 'രക്ഷിക്കും',
    },
    '6qhycnbc': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // MyOffers
  {
    'vhdy58gx': {
      'en': 'My Offers',
      'ml': 'എന്റെ ഓഫറുകൾ',
    },
    'lfzej5b9': {
      'en': 'Search Product',
      'ml': 'ഉൽപ്പന്നം തിരയുക',
    },
    'zwwjvta4': {
      'en': 'STAT40',
      'ml': 'STAT40',
    },
    'yn7ic6dk': {
      'en': 'Get 40% Off',
      'ml': '40% കിഴിവ് നേടൂ',
    },
    'ajvh7i5h': {
      'en': '40% Off upto Rs.100 on orders above Rs.200',
      'ml': '200 രൂപയ്ക്ക് മുകളിലുള്ള ഓർഡറുകൾക്ക് 100 രൂപ വരെ 40% കിഴിവ്',
    },
    'cirzigqk': {
      'en': 'BOOK20',
      'ml': 'പുസ്തകം20',
    },
    'mbnyi5m0': {
      'en': 'Get 20% Off',
      'ml': '20% കിഴിവ് നേടുക',
    },
    'r8w5pwan': {
      'en': '20% Off upto Rs. 200 on orders for Long Books',
      'ml': 'രൂപ വരെ 20% കിഴിവ്. ലോംഗ് ബുക്കുകൾക്കുള്ള ഓർഡറിൽ 200 രൂപ',
    },
    'za4tdaqt': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderTypes
  {
    'klckqmox': {
      'en': 'Select one of the option below to view orders.',
      'ml': 'ഓർഡറുകൾ കാണുന്നതിന് ചുവടെയുള്ള ഓപ്ഷനുകളിലൊന്ന് തിരഞ്ഞെടുക്കുക.',
    },
    '2dod7hib': {
      'en': 'SELF PICKUP ORDERS',
      'ml': 'സെൽഫ് പിക്കപ്പ് ഓർഡറുകൾ',
    },
    '19yjsvrf': {
      'en': 'SELECT',
      'ml': 'തിരഞ്ഞെടുക്കുക',
    },
    'ice56lud': {
      'en': 'HOME DELIVERY ORDERS',
      'ml': 'ഹോം ഡെലിവറി ഓർഡറുകൾ',
    },
    'tpibyr1r': {
      'en': 'SELECT',
      'ml': 'തിരഞ്ഞെടുക്കുക',
    },
    '2vv9a1ta': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // HomeDelivery
  {
    'o4wjm261': {
      'en': 'Home Delivery',
      'ml': 'വീട്ടില് എത്തിക്കും',
    },
    '2bit5nqz': {
      'en': 'Search Order ID',
      'ml': 'ഓർഡർ ഐഡി തിരയുക',
    },
    'neexzle1': {
      'en': 'New orders',
      'ml': 'പുതിയ ഓർഡറുകൾ',
    },
    'ajwm8s12': {
      'en': 'Packed',
      'ml': 'പാക്ക് ചെയ്തു',
    },
    'axrmyxuo': {
      'en': 'Dispatched',
      'ml': 'അയച്ചു',
    },
    'sngxiojc': {
      'en': 'Delivered',
      'ml': 'എത്തിച്ചു',
    },
    'lho3zzzr': {
      'en': 'Dispatch Requests',
      'ml': 'ഡിസ്പാച്ച് അഭ്യർത്ഥനകൾ',
    },
    '71ncov7f': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // NewOffer
  {
    '1awy6l2j': {
      'en': 'New Offer',
      'ml': 'പുതിയ ഓഫർ',
    },
    'hbo168ib': {
      'en': 'Save',
      'ml': 'രക്ഷിക്കും',
    },
    'kdi2l5ka': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // EditOffer
  {
    'dh4fki50': {
      'en': 'Edit Offer',
      'ml': 'ഓഫർ എഡിറ്റ് ചെയ്യുക',
    },
    'd1smf47p': {
      'en': 'STAT40',
      'ml': 'STAT40',
    },
    'cj54u5j4': {
      'en': 'Get 40% Off',
      'ml': '40% കിഴിവ് നേടൂ',
    },
    'enoszsk8': {
      'en': '40% Off upto Rs.100 on orders above Rs.200',
      'ml': '200 രൂപയ്ക്ക് മുകളിലുള്ള ഓർഡറുകൾക്ക് 100 രൂപ വരെ 40% കിഴിവ്',
    },
    'oy2mk366': {
      'en': 'Save',
      'ml': 'രക്ഷിക്കും',
    },
    'nkqa0exk': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // AboutMyStore
  {
    '3hd18o4j': {
      'en': 'About My Store',
      'ml': 'എന്റെ സ്റ്റോറിനെക്കുറിച്ച്',
    },
    'yl1t6rgj': {
      'en': 'STORE NAME',
      'ml': 'സ്‌റ്റോറിന്റെ പേര്',
    },
    '2txzlwfw': {
      'en': 'Enter Store Name',
      'ml': 'സ്റ്റോർ പേര് നൽകുക',
    },
    'f33llvhz': {
      'en': 'ABOUT STORE',
      'ml': 'സ്റ്റോറിനെ കുറിച്ച്',
    },
    '5qdsr4k7': {
      'en': 'Short Description about sharp',
      'ml': 'മൂർച്ചയെക്കുറിച്ചുള്ള ഹ്രസ്വ വിവരണം',
    },
    '1htpgkzy': {
      'en': 'Save',
      'ml': 'രക്ഷിക്കും',
    },
    'rdwwy6dh': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // CheckList
  {
    '8vuz3jlv': {
      'en': 'Check List',
      'ml': 'പട്ടിക പരിശോധിക്കുക',
    },
    '4ofaughh': {
      'en': 'Items',
      'ml': 'ഇനങ്ങൾ',
    },
    'i5w0uvwh': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderPackedSuccessfully
  {
    'h0mia4yy': {
      'en': 'Order Packed Successfully!',
      'ml': 'ഓർഡർ പാക്ക് ചെയ്തു!',
    },
    'rtf11o8e': {
      'en': 'Go back to orders list',
      'ml': 'ഓർഡർ ലിസ്റ്റിലേക്ക് മടങ്ങുക',
    },
    'n94axyw0': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // SelfPickup
  {
    'ehpt0ac7': {
      'en': 'Self Pickup',
      'ml': 'സ്വയം പിക്കപ്പ്',
    },
    'uew0ll4b': {
      'en': 'Search Order ID',
      'ml': 'ഓർഡർ ഐഡി തിരയുക',
    },
    '712j8u6u': {
      'en': 'New orders',
      'ml': 'പുതിയ ഓർഡറുകൾ',
    },
    'ezt4oryx': {
      'en': 'Packed',
      'ml': 'പാക്ക് ചെയ്തു',
    },
    'r1xsu8mm': {
      'en': 'Pickedup',
      'ml': 'എടുത്തു',
    },
    'rrzld4yo': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // DispatchRequests1
  {
    'jupf102k': {
      'en': 'Dispatch Requests',
      'ml': 'ഡിസ്പാച്ച് അഭ്യർത്ഥനകൾ',
    },
    'uva8dkoz': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // DispatchDetails
  {
    'laqohh7b': {
      'en': 'Dispatch Details',
      'ml': 'ഡിസ്പാച്ച് വിശദാംശങ്ങൾ',
    },
    'dgdreh69': {
      'en': 'Order Id :',
      'ml': 'ഓർഡർ ഐഡി :',
    },
    'v6usbk9k': {
      'en': '0000000',
      'ml': '0000000',
    },
    '8zbuynr7': {
      'en': 'Details',
      'ml': 'വിശദാംശങ്ങൾ',
    },
    'lptq6ad1': {
      'en': 'TRANSPORTER\'S UIN',
      'ml': 'ട്രാൻസ്പോർട്ടർ യുഐഎൻ',
    },
    '7xwt205e': {
      'en': 'Enter Transporter\'s Unique dentification Number',
      'ml': 'ട്രാൻസ്പോർട്ടറുടെ യുണീക്ക് ഡെന്റിഫിക്കേഷൻ നമ്പർ നൽകുക',
    },
    'i8hnkoto': {
      'en': 'TRANSPORTER\'S MOBILE NO',
      'ml': 'ട്രാൻസ്‌പോർട്ടറുടെ മൊബൈൽ നമ്പർ',
    },
    'fc7agqmd': {
      'en': 'Transporter will get an OTP on this mobile ',
      'ml': 'ട്രാൻസ്പോർട്ടർക്ക് ഈ മൊബൈലിൽ OTP ലഭിക്കും',
    },
    'os47vcw3': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VerificationDispatch
  {
    '58qiglby': {
      'en': 'Confirm Dispatch',
      'ml': 'ഡിസ്പാച്ച് സ്ഥിരീകരിക്കുക',
    },
    '738uthk5': {
      'en': 'Verification',
      'ml': 'സ്ഥിരീകരണം',
    },
    'qpfous1c': {
      'en':
          'Please enter the 4 digit verification\n                   code we sent you',
      'ml': 'ഞങ്ങൾ നിങ്ങൾക്ക് അയച്ച 4 അക്ക സ്ഥിരീകരണ കോഡ് നൽകുക',
    },
    '2270kyfw': {
      'en': 'Enter OTP',
      'ml': 'OTP നൽകുക',
    },
    '15b7v9mv': {
      'en': 'Didn\'t receive a code?',
      'ml': 'ഒരു കോഡ് ലഭിച്ചില്ലേ?',
    },
    'bj91b8lh': {
      'en': ' Resend',
      'ml': 'വീണ്ടും അയയ്ക്കുക',
    },
    'bkms36zq': {
      'en': 'Dispatch',
      'ml': 'അയക്കുക',
    },
    '70yzrm08': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderDetailsDeivered
  {
    '1y786ofs': {
      'en': 'Order Details',
      'ml': 'ഓർഡർ വിശദാംശങ്ങൾ',
    },
    'xdteaw7r': {
      'en': '⚫Delivered',
      'ml': '⚫ എത്തിച്ചു',
    },
    '875lganv': {
      'en': 'Delivery Type',
      'ml': 'ഡെലിവറി തരം',
    },
    '4h6b0xwb': {
      'en': 'Payment Details',
      'ml': 'പേയ്മെന്റ് വിശദാംശങ്ങൾ',
    },
    '2a49ks77': {
      'en': 'Item Details',
      'ml': 'ഇനത്തിന്റെ വിശദാംശങ്ങൾ',
    },
    '1uxf42eo': {
      'en': 'Track Status',
      'ml': 'സ്റ്റാറ്റസ് ട്രാക്ക് ചെയ്യുക',
    },
    'pjg1m72q': {
      'en': 'Download Invoice',
      'ml': 'ഇൻവോയ്സ് ഡൗൺലോഡ് ചെയ്യുക',
    },
    'dzhtuicf': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderDetailsPacked
  {
    '01pm3mtu': {
      'en': 'Order Details',
      'ml': 'ഓർഡർ വിശദാംശങ്ങൾ',
    },
    '9tq9qn5c': {
      'en': '⚫Packed',
      'ml': '⚫പാക്ക് ചെയ്തു',
    },
    'uk7tm2ge': {
      'en': 'Delivery Type',
      'ml': 'ഡെലിവറി തരം',
    },
    '7thc2kf0': {
      'en': 'Payment Details',
      'ml': 'പേയ്മെന്റ് വിശദാംശങ്ങൾ',
    },
    'tb4f8h9a': {
      'en': 'Item Details',
      'ml': 'ഇനത്തിന്റെ വിശദാംശങ്ങൾ',
    },
    'g9ru5wp4': {
      'en': 'Track Status',
      'ml': 'സ്റ്റാറ്റസ് ട്രാക്ക് ചെയ്യുക',
    },
    '5veaei5z': {
      'en': 'Download Invoice',
      'ml': 'ഇൻവോയ്സ് ഡൗൺലോഡ് ചെയ്യുക',
    },
    'ffcdo4i6': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderDetailsPickedup
  {
    'twntet69': {
      'en': 'Order Details',
      'ml': 'ഓർഡർ വിശദാംശങ്ങൾ',
    },
    '6cozun0n': {
      'en': '⚫Picked Up',
      'ml': '⚫പിക്കപ്പ് ചെയ്തു',
    },
    'ifgrn9ex': {
      'en': 'Delivery Type',
      'ml': 'ഡെലിവറി തരം',
    },
    'q36ykiea': {
      'en': 'Payment Details',
      'ml': 'പേയ്മെന്റ് വിശദാംശങ്ങൾ',
    },
    'nb7fkbdo': {
      'en': 'Item Details',
      'ml': 'ഇനത്തിന്റെ വിശദാംശങ്ങൾ',
    },
    '47uvbg9k': {
      'en': 'Track Status',
      'ml': 'സ്റ്റാറ്റസ് ട്രാക്ക് ചെയ്യുക',
    },
    '1xknaxog': {
      'en': 'Download Invoice',
      'ml': 'ഇൻവോയ്സ് ഡൗൺലോഡ് ചെയ്യുക',
    },
    'bnuskklc': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderPickedSuccessful
  {
    'hpqa8idq': {
      'en': 'Order Packed Successfully!',
      'ml': 'ഓർഡർ പാക്ക് ചെയ്തു!',
    },
    'qbiblx9o': {
      'en': 'Go back to orders list',
      'ml': 'ഓർഡർ ലിസ്റ്റിലേക്ക് മടങ്ങുക',
    },
    'u9uq4he6': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // GetStartedT
  {
    'ynwq2u3q': {
      'en': 'Get Started!',
      'ml': 'തുടങ്ങി!',
    },
    'r6rtn1ix': {
      'en': 'Enter Phone number',
      'ml': 'ഫോൺ നമ്പർ നൽകുക',
    },
    'zak1z771': {
      'en': 'Sign In',
      'ml': 'സൈൻ ഇൻ',
    },
    'ah7p4ywg': {
      'en': 'Don\'t have an account? ',
      'ml': 'അക്കൗണ്ട് ഇല്ലേ?',
    },
    'pvnz29cy': {
      'en': 'Sign up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുക',
    },
    'kqaaq005': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VerificationT
  {
    'cozhdi3v': {
      'en': 'Verification',
      'ml': 'സ്ഥിരീകരണം',
    },
    '9jbxxjyl': {
      'en':
          'Please enter the 4 digit verification\n                   code we sent you',
      'ml': 'ഞങ്ങൾ നിങ്ങൾക്ക് അയച്ച 4 അക്ക സ്ഥിരീകരണ കോഡ് നൽകുക',
    },
    'aj5pw5e6': {
      'en': 'Enter OTP',
      'ml': 'OTP നൽകുക',
    },
    'vc91r0ft': {
      'en': 'Don\'t have an account?',
      'ml': 'അക്കൗണ്ട് ഇല്ലേ?',
    },
    'm22gn81t': {
      'en': ' Resend',
      'ml': 'വീണ്ടും അയയ്ക്കുക',
    },
    'i09hig98': {
      'en': 'Confirm',
      'ml': 'സ്ഥിരീകരിക്കുക',
    },
    '1yls6o5b': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // RegiosterT
  {
    '6y775v24': {
      'en': 'Register',
      'ml': 'രജിസ്റ്റർ ചെയ്യുക',
    },
    'hlptproo': {
      'en': 'Fill in the details to sign up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുന്നതിന് വിശദാംശങ്ങൾ പൂരിപ്പിക്കുക',
    },
    'nysdr9sj': {
      'en': 'ADD YOUR PROFILE PICTURE',
      'ml': 'നിങ്ങളുടെ പ്രൊഫൈൽ ചിത്രം ചേർക്കുക',
    },
    '8052lqbp': {
      'en': '*FULL NAME',
      'ml': '*പൂർണ്ണമായ പേര്',
    },
    'j2ospoxu': {
      'en': '*PHONE NUMBER',
      'ml': '*ഫോൺ നമ്പർ',
    },
    'gbx7k4mh': {
      'en': '*DATE OF BIRTH',
      'ml': '*ജനിച്ച ദിവസം',
    },
    'h9izy7ni': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // AlmostDoneT
  {
    'jbrx6lqr': {
      'en': 'Almost done,',
      'ml': 'ഏതാണ്ട് പൂർത്തിയായി,',
    },
    'i02q2imr': {
      'en': 'What\'s your shop address?',
      'ml': 'നിങ്ങളുടെ കടയുടെ വിലാസം എന്താണ്?',
    },
    'eqtrmww1': {
      'en': '*ADDRESS',
      'ml': '*വിലാസം',
    },
    '0d7hg1t3': {
      'en':
          '( Enter the same address as shown on your GST registration certificate )',
      'ml':
          '(നിങ്ങളുടെ GST രജിസ്ട്രേഷൻ സർട്ടിഫിക്കറ്റിൽ കാണിച്ചിരിക്കുന്ന അതേ വിലാസം നൽകുക)',
    },
    'zwp5oy19': {
      'en': '*CITY',
      'ml': '*സിറ്റി',
    },
    '0jx0t3i9': {
      'en': '*STATE',
      'ml': '*സംസ്ഥാനം',
    },
    'jg2reci7': {
      'en': '*PIN CODE',
      'ml': '*പിൻ കോഡ്',
    },
    'ee7txanz': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ThatsItT
  {
    '0pzni3lr': {
      'en': 'Thats\'s it!',
      'ml': 'അത്രമാത്രം!',
    },
    '1seox8x3': {
      'en': 'We just need to knoe, what vehicle you own.',
      'ml':
          'നിങ്ങളുടെ ഉടമസ്ഥതയിലുള്ള വാഹനം എന്താണെന്ന് ഞങ്ങൾക്ക് അറിയേണ്ടതുണ്ട്.',
    },
    '2lt08ipd': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // AddVehicleT
  {
    'ys2ovt9o': {
      'en': 'Add Vehicle',
      'ml': 'വാഹനം ചേർക്കുക',
    },
    'iz1upwtb': {
      'en': 'Fill in your vehicle details below',
      'ml': 'നിങ്ങളുടെ വാഹന വിശദാംശങ്ങൾ ചുവടെ പൂരിപ്പിക്കുക',
    },
    'w9ueh930': {
      'en': '*UPLOAD A PHOTO OF YOUR VEHICLE',
      'ml': '*നിങ്ങളുടെ വാഹനത്തിന്റെ ഒരു ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യുക',
    },
    'pak4bhk3': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'cjbjx6ig': {
      'en': '*VEHICLE TYPE',
      'ml': '*വാഹന തരം',
    },
    'x3zb0uip': {
      'en': '2 - WHEELER',
      'ml': '2 - വീലർ',
    },
    'ffxfliay': {
      'en': '3 - WHEELER',
      'ml': '3 - വീലർ',
    },
    '9y1bu7iv': {
      'en': '*NAME',
      'ml': '*NAME',
    },
    'jbezjjbb': {
      'en': '*MODEL',
      'ml': '* മോഡൽ',
    },
    's43pb6l6': {
      'en': '*YEAR',
      'ml': '*വർഷം',
    },
    'c0l52vsi': {
      'en': '*LOADING CAPACITY',
      'ml': '*ലോഡിംഗ് കപ്പാസിറ്റി',
    },
    'k8ytkci4': {
      'en': '*MAXIMUM DELIVERY DISTANCE',
      'ml': '*പരമാവധി ഡെലിവറി ദൂരം',
    },
    'fgeb7qs2': {
      'en': '( In km )',
      'ml': '(കിലോമീറ്ററിൽ)',
    },
    'vm7204no': {
      'en': 'Save',
      'ml': 'രക്ഷിക്കും',
    },
    '06i8187r': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // UploadDocumentsT
  {
    'im6s4ouu': {
      'en': 'Upload Documents',
      'ml': 'പ്രമാണങ്ങൾ അപ്‌ലോഡ് ചെയ്യുക',
    },
    '7vviof0y': {
      'en':
          'We need to check that you are really you,\nIt helps us fight fraud and keep your business secure',
      'ml':
          'നിങ്ങൾ യഥാർത്ഥത്തിൽ നിങ്ങളാണെന്ന് ഞങ്ങൾ പരിശോധിക്കേണ്ടതുണ്ട്, ഇത് വഞ്ചനയ്‌ക്കെതിരെ പോരാടാനും നിങ്ങളുടെ ബിസിനസ്സ് സുരക്ഷിതമായി നിലനിർത്താനും ഞങ്ങളെ സഹായിക്കുന്നു',
    },
    'xjyxfe7q': {
      'en': '*ADHAAR CARD',
      'ml': '*ആധാർ കാർഡ്',
    },
    '4kymui1a': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'herub2l9': {
      'en': '*PAN CARD',
      'ml': '*പാൻ കാർഡ്',
    },
    '8kniqz6f': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'imwwhd6e': {
      'en': '*DRIVER\'S LICENSE',
      'ml': '*ഡ്രൈവറുടെ ലൈസൻസ്',
    },
    'zsfj58ic': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'tr4i4a30': {
      'en': '*REGISTRATION CERTIFICATE',
      'ml': '*രജിസ്ട്രേഷൻ സർട്ടിഫിക്കറ്റ്',
    },
    '9rzdtieo': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'zoewfg6d': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // TakePhoto
  {
    'l2gzpv11': {
      'en': 'Take your photo',
      'ml': 'നിങ്ങളുടെ ഫോട്ടോ എടുക്കുക',
    },
    'axakfar1': {
      'en':
          'Pose with your Driver\'s License and vehicle\n      Registration Certificate in your hand.',
      'ml':
          'നിങ്ങളുടെ കൈയിൽ ഡ്രൈവിംഗ് ലൈസൻസും വാഹന രജിസ്ട്രേഷൻ സർട്ടിഫിക്കറ്റും സഹിതം പോസ് ചെയ്യുക.',
    },
    'hedoz6ae': {
      'en': 'Proceed to Camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    'alj3xhwy': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ThankYouT
  {
    'isqb43y8': {
      'en': 'Thank you!',
      'ml': 'നന്ദി!',
    },
    'kfbazw5r': {
      'en': 'Verification Pending',
      'ml': 'പരിശോധിച്ചുറപ്പിക്കൽ ശേഷിക്കുന്നു',
    },
    'lg7eeate': {
      'en': 'You will be contacted by the admin soon.',
      'ml': 'ഉടൻ തന്നെ അഡ്മിൻ നിങ്ങളെ ബന്ധപ്പെടും.',
    },
    'hdkxfbsh': {
      'en': 'Track Status',
      'ml': 'സ്റ്റാറ്റസ് ട്രാക്ക് ചെയ്യുക',
    },
    '9c1yl0ok': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VerificationCompletedT
  {
    'g9c8116l': {
      'en': 'Verification\nCompleted!',
      'ml': 'പരിശോധന പൂർത്തിയായി!',
    },
    'avcb35sb': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // AnandLoduT
  {
    '9jzij3uy': {
      'en': 'Transporter',
      'ml': 'ട്രാൻസ്പോർട്ടർ',
    },
    'cbv1ikvc': {
      'en': 'Hi Anand,',
      'ml': 'ഹായ് ആനന്ദ്,',
    },
    'o4v3lste': {
      'en': 'See Orders',
      'ml': 'ഓർഡറുകൾ കാണുക',
    },
    'n8th4tzg': {
      'en': 'Dispatch Requests',
      'ml': 'ഡിസ്പാച്ച് അഭ്യർത്ഥനകൾ',
    },
    'd238qwgc': {
      'en': 'Picked Orders',
      'ml': 'തിരഞ്ഞെടുത്ത ഓർഡറുകൾ',
    },
    'm1514zap': {
      'en': 'Delivered',
      'ml': 'എത്തിച്ചു',
    },
    'dtfvr6g8': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // NewOrdersT
  {
    'si0yr0z8': {
      'en': 'New Orders',
      'ml': 'പുതിയ ഓർഡറുകൾ',
    },
    'fv6a3xi4': {
      'en': 'Get your Current location',
      'ml': 'നിങ്ങളുടെ നിലവിലെ സ്ഥാനം നേടുക',
    },
    '08mk0u22': {
      'en': 'Only orders near your current location will be filtered',
      'ml':
          'നിങ്ങളുടെ നിലവിലെ ലൊക്കേഷന് സമീപമുള്ള ഓർഡറുകൾ മാത്രമേ ഫിൽട്ടർ ചെയ്യപ്പെടുകയുള്ളൂ',
    },
    'rjpij9gs': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // DispatchRequestedT
  {
    'f62u3kyb': {
      'en': 'Dispatch Requested',
      'ml': 'ഡിസ്പാച്ച് അഭ്യർത്ഥിച്ചു',
    },
    'bp4kckpc': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // PickedOrdersT
  {
    'vetsb80w': {
      'en': 'Picked Orders',
      'ml': 'തിരഞ്ഞെടുത്ത ഓർഡറുകൾ',
    },
    'w9nwua6x': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ConfirmDeliveryT
  {
    'pk57949z': {
      'en': 'Confirm Delivery',
      'ml': 'ഡെലിവറി സ്ഥിരീകരിക്കുക',
    },
    't84y660u': {
      'en': 'Verification',
      'ml': 'സ്ഥിരീകരണം',
    },
    'ba9x0u02': {
      'en':
          'Please enter the 4 digit verification\n                    code we sent you',
      'ml': 'ഞങ്ങൾ നിങ്ങൾക്ക് അയച്ച 4 അക്ക സ്ഥിരീകരണ കോഡ് നൽകുക',
    },
    'm75604mc': {
      'en': 'Enter OTP',
      'ml': 'OTP നൽകുക',
    },
    '1dkn5a7o': {
      'en': 'Didn\'t receive a code?',
      'ml': 'ഒരു കോഡ് ലഭിച്ചില്ലേ?',
    },
    'r7c6o1fd': {
      'en': ' Resend',
      'ml': 'വീണ്ടും അയയ്ക്കുക',
    },
    'c0lrptn8': {
      'en': 'Confirm',
      'ml': 'സ്ഥിരീകരിക്കുക',
    },
    'k53t3o6n': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // OrderDeliveredSuccessfullyT
  {
    'iz0585nn': {
      'en': 'Order Delivered Successfully!',
      'ml': 'ഓർഡർ ഡെലിവർ ചെയ്‌തു!',
    },
    'mi1qcpi7': {
      'en': 'Go back to Main Page',
      'ml': 'പ്രധാന പേജിലേക്ക് മടങ്ങുക',
    },
    'kivph9gr': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // DeliveredT
  {
    '6dbykmvq': {
      'en': 'Delivered',
      'ml': 'എത്തിച്ചു',
    },
    'hnxs9tjp': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // MyAccountpageT
  {
    'eomlq1qi': {
      'en': 'My Account',
      'ml': 'എന്റെ അക്കൗണ്ട്',
    },
    '6lbefpgc': {
      'en': 'FIRST NAME',
      'ml': 'പേരിന്റെ ആദ്യഭാഗം',
    },
    'hkgj4f1y': {
      'en': 'LAST NAME',
      'ml': 'പേരിന്റെ അവസാന ഭാഗം',
    },
    '0nyubt90': {
      'en': 'MOBILE NUMBER',
      'ml': 'മൊബൈൽ നമ്പർ',
    },
    'mppnshkk': {
      'en': 'EMAIL ID  ',
      'ml': 'ഇ - മെയിൽ ഐഡി',
    },
    'd9804x08': {
      'en': '(optional)',
      'ml': '(ഓപ്ഷണൽ)',
    },
    '0chhjgln': {
      'en': 'DATE OF BIRTH',
      'ml': 'ജനിച്ച ദിവസം',
    },
    'ls43n8yf': {
      'en': 'Save Changes',
      'ml': 'മാറ്റങ്ങൾ സൂക്ഷിക്കുക',
    },
    'bm969ojk': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // EditVehicleT
  {
    's29b35aq': {
      'en': 'Edit Vehicle Details',
      'ml': 'വാഹന വിശദാംശങ്ങൾ എഡിറ്റ് ചെയ്യുക',
    },
    'foz50olk': {
      'en': 'Fill in your vehicle details below',
      'ml': 'നിങ്ങളുടെ വാഹന വിശദാംശങ്ങൾ ചുവടെ പൂരിപ്പിക്കുക',
    },
    '5l13xoyi': {
      'en': '*UPLOAD A PHOTO OF YOUR VEHICLE',
      'ml': '*നിങ്ങളുടെ വാഹനത്തിന്റെ ഒരു ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യുക',
    },
    'n1zhnljt': {
      'en': 'Proceed to camera',
      'ml': 'ക്യാമറയിലേക്ക് പോകുക',
    },
    '8yqxkwqa': {
      'en': '*VEHICLE TYPE',
      'ml': '*വാഹന തരം',
    },
    'gabj509x': {
      'en': '2 - WHEELER',
      'ml': '2 - വീലർ',
    },
    'td81yuso': {
      'en': '3 - WHEELER',
      'ml': '3 - വീലർ',
    },
    'u0qolnlx': {
      'en': '*NAME',
      'ml': '*NAME',
    },
    'ccla31f9': {
      'en': '*MODEL',
      'ml': '* മോഡൽ',
    },
    'og8ffl01': {
      'en': '*YEAR',
      'ml': '*വർഷം',
    },
    'h7inr3zs': {
      'en': '*LOADING CAPACITY',
      'ml': '*ലോഡിംഗ് കപ്പാസിറ്റി',
    },
    '6lgb7isu': {
      'en': '*DISTANCE',
      'ml': '*ദൂരം',
    },
    'gkff6xym': {
      'en': 'Save',
      'ml': 'രക്ഷിക്കും',
    },
    'w1jg12ez': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // ThatsIt2T
  {
    '63b2oa0h': {
      'en': 'Thats\'s it!',
      'ml': 'അത്രമാത്രം!',
    },
    'uyon36vu': {
      'en': 'We just need to knoe, what vehicle you own.',
      'ml':
          'നിങ്ങളുടെ ഉടമസ്ഥതയിലുള്ള വാഹനം എന്താണെന്ന് ഞങ്ങൾക്ക് അറിയേണ്ടതുണ്ട്.',
    },
    's328vtvq': {
      'en': 'My Vehicles',
      'ml': 'എന്റെ വാഹനങ്ങൾ',
    },
    '0uu0vk2x': {
      'en': '2 - WHEELER',
      'ml': '2 - വീലർ',
    },
    '6hy7a70h': {
      'en': 'EDIT DETAILS',
      'ml': 'വിശദാംശങ്ങൾ എഡിറ്റ് ചെയ്യുക',
    },
    '86al05gu': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // WelcomeC
  {
    'td3x9x1v': {
      'en': 'Welcome!',
      'ml': 'തുടങ്ങി!',
    },
    'r3tr58aa': {
      'en': 'Enter your mobile number to proceed',
      'ml': '',
    },
    'llmeufrb': {
      'en': 'Enter Phone number',
      'ml': 'ഫോൺ നമ്പർ നൽകുക',
    },
    '2o5zkyzv': {
      'en': 'Proceed',
      'ml': 'സൈൻ ഇൻ',
    },
    'efuxglxi': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VerificationC
  {
    'o9imldm0': {
      'en': 'Verification',
      'ml': 'സ്ഥിരീകരണം',
    },
    'uiestouz': {
      'en':
          'Please enter the 4 digit verification\n                   code we sent you',
      'ml': 'ഞങ്ങൾ നിങ്ങൾക്ക് അയച്ച 4 അക്ക സ്ഥിരീകരണ കോഡ് നൽകുക',
    },
    'lt2uoa1h': {
      'en': 'Enter OTP',
      'ml': 'OTP നൽകുക',
    },
    '4y4or5l4': {
      'en': 'Didn\'t receive a code?',
      'ml': 'അക്കൗണ്ട് ഇല്ലേ?',
    },
    'p6rz6ves': {
      'en': ' Resend',
      'ml': 'വീണ്ടും അയയ്ക്കുക',
    },
    'hhpcwxon': {
      'en': 'Confirm',
      'ml': 'സ്ഥിരീകരിക്കുക',
    },
    '2x1n9uoe': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // RegisterC
  {
    '91jh7j4r': {
      'en': 'Register',
      'ml': 'രജിസ്റ്റർ ചെയ്യുക',
    },
    'sw1dxe4m': {
      'en': 'Fill in the details to sign up',
      'ml': 'സൈൻ അപ്പ് ചെയ്യുന്നതിന് വിശദാംശങ്ങൾ പൂരിപ്പിക്കുക',
    },
    'afo2r47m': {
      'en': '*FIRST NAME',
      'ml': '*പൂർണ്ണമായ പേര്',
    },
    'xl46zrub': {
      'en': '*LAST NAME',
      'ml': '*ഫോൺ നമ്പർ',
    },
    's11g4sdh': {
      'en': '*EMAIL ID (optional)',
      'ml': '*ജനിച്ച ദിവസം',
    },
    '7w8wg17e': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // SelectAreaC
  {
    'mp7m3uuz': {
      'en': 'SELECT AREA',
      'ml': 'എത്തിച്ചു',
    },
    '9gwwzaa4': {
      'en': 'Select location you would like to search for shops',
      'ml': '',
    },
    'd4g1v0zl': {
      'en': 'Search location',
      'ml': 'ഉൽപ്പന്നം തിരയുക',
    },
    '948a0as1': {
      'en': 'Current location',
      'ml': '',
    },
    'psao1igc': {
      'en': 'Locate on Map',
      'ml': '',
    },
    'zlqr1dp2': {
      'en': 'Home',
      'ml': '',
    },
  },
  // CartC
  {
    'abcbskai': {
      'en': 'Your Cart is Empty',
      'ml': '',
    },
    'av40vc6x': {
      'en': 'Looks like you haven\'t added anything\nto your cart yet',
      'ml': '',
    },
    'b7azlqqt': {
      'en': 'Start Shopping',
      'ml': '',
    },
    'zwh5y6js': {
      'en': 'Home',
      'ml': '',
    },
  },
  // CutomerC
  {
    'thu92xhl': {
      'en': 'Customer',
      'ml': 'വെണ്ടർ',
    },
    'pydi6z2s': {
      'en': 'Hi Anand,\nWhat would you like to shop?',
      'ml': '',
    },
    'oevtboov': {
      'en': 'Search product',
      'ml': 'ഉൽപ്പന്നം തിരയുക',
    },
    'pzptm2bf': {
      'en': 'Offers',
      'ml': '',
    },
    'xk0pwcxm': {
      'en': 'See All',
      'ml': '',
    },
    'fl33tczh': {
      'en': 'STAT40',
      'ml': 'STAT40',
    },
    '1spuuyel': {
      'en': 'Get 40% Off',
      'ml': '40% കിഴിവ് നേടൂ',
    },
    'ct5sxrbs': {
      'en': '40% Off upto Rs.100 on orders above Rs.200',
      'ml': '200 രൂപയ്ക്ക് മുകളിലുള്ള ഓർഡറുകൾക്ക് 100 രൂപ വരെ 40% കിഴിവ്',
    },
    'fjaci9z7': {
      'en': 'Products',
      'ml': '',
    },
    'uqw2ohpq': {
      'en': 'See All',
      'ml': '',
    },
    'moy241wp': {
      'en': 'View Cart ',
      'ml': '',
    },
    'j1wvko4n': {
      'en': 'Home',
      'ml': '',
    },
  },
  // AllOffersC
  {
    '6c2hn0oh': {
      'en': 'All Offers',
      'ml': 'എത്തിച്ചു',
    },
    'wdxwm905': {
      'en': 'Search product code',
      'ml': 'ഉൽപ്പന്നം തിരയുക',
    },
    'e3j4u21e': {
      'en': 'Available Offers',
      'ml': 'എത്തിച്ചു',
    },
    'xk4pjmgx': {
      'en': 'Select a coupon and add items to your cart',
      'ml': '',
    },
    '8wk7u9a3': {
      'en': 'STAT40',
      'ml': 'STAT40',
    },
    't5a8gnuk': {
      'en': 'Get 40% Off',
      'ml': '40% കിഴിവ് നേടൂ',
    },
    'vu041ur6': {
      'en': '40% Off upto Rs.100 on orders above Rs.200',
      'ml': '200 രൂപയ്ക്ക് മുകളിലുള്ള ഓർഡറുകൾക്ക് 100 രൂപ വരെ 40% കിഴിവ്',
    },
    'wfs8wddb': {
      'en': 'SELECT',
      'ml': '',
    },
    'k1t80u1v': {
      'en': 'BOOK20',
      'ml': 'STAT40',
    },
    '2r3vpq5h': {
      'en': 'Get 20% Off',
      'ml': '40% കിഴിവ് നേടൂ',
    },
    'w01b34we': {
      'en': '20% Off upto Rs. 200 on orders for Long books',
      'ml': '200 രൂപയ്ക്ക് മുകളിലുള്ള ഓർഡറുകൾക്ക് 100 രൂപ വരെ 40% കിഴിവ്',
    },
    'f5choyqj': {
      'en': 'SELECT',
      'ml': '',
    },
    'u045f2up': {
      'en': 'Home',
      'ml': '',
    },
  },
  // AllProductsC
  {
    'iuud1jcq': {
      'en': 'All Products',
      'ml': 'എത്തിച്ചു',
    },
    'b9me3nj4': {
      'en': 'Search product code',
      'ml': 'ഉൽപ്പന്നം തിരയുക',
    },
    'tc8ajsfl': {
      'en': 'Home',
      'ml': '',
    },
  },
  // MyAccountC
  {
    'zfhk6gc4': {
      'en': 'My Account',
      'ml': 'എന്റെ അക്കൗണ്ട്',
    },
    'dzrks6b4': {
      'en': 'FIRST NAME',
      'ml': 'പേരിന്റെ ആദ്യഭാഗം',
    },
    'a27yu0ft': {
      'en': 'LAST NAME',
      'ml': 'പേരിന്റെ അവസാന ഭാഗം',
    },
    'ft2gc6dj': {
      'en': 'MOBILE NUMBER',
      'ml': 'മൊബൈൽ നമ്പർ',
    },
    '0d04eulv': {
      'en': 'EMAIL ID  ',
      'ml': 'ഇ - മെയിൽ ഐഡി',
    },
    'jabo45bg': {
      'en': 'Save Changes',
      'ml': 'മാറ്റങ്ങൾ സൂക്ഷിക്കുക',
    },
    'brhkg34z': {
      'en': 'Home',
      'ml': 'വീട്',
    },
  },
  // VandC
  {
    'fcsi1yti': {
      'en': 'Vendor',
      'ml': 'വെണ്ടർ',
    },
    '60sbvaw8': {
      'en': ' Anand Stationary',
      'ml': 'ആനന്ദ് സ്റ്റേഷനറി',
    },
    '5h2qaaqz': {
      'en': 'Customer',
      'ml': 'ഉപഭോക്താവ്',
    },
    'to03l269': {
      'en': ' Anand Shetty',
      'ml': 'ആനന്ദ് ഷെട്ടി',
    },
    '6y0kg3lz': {
      'en': 'Add User',
      'ml': 'ഉപയോക്താവിനെ ചേർക്കുക',
    },
  },
  // MyAccount
  {
    'tl3wpd2t': {
      'en': 'My Account',
      'ml': 'എന്റെ അക്കൗണ്ട്',
    },
    'dxlua4wr': {
      'en': 'About my store',
      'ml': 'എന്റെ സ്റ്റോറിനെക്കുറിച്ച്',
    },
    'ptnruygw': {
      'en': 'Log Out',
      'ml': 'ലോഗ് ഔട്ട് ചെയ്യുക',
    },
  },
  // Saved
  {
    'o8zmz59e': {
      'en': 'Saved!',
      'ml': 'സംരക്ഷിച്ചു!',
    },
  },
  // ProductAddedSuccessfully
  {
    'pq149owo': {
      'en': 'Product Added Successfully!',
      'ml': 'ഉൽപ്പന്നം ചേർത്തു!',
    },
    'zndmkip9': {
      'en': 'You can edit product details anytime',
      'ml':
          'നിങ്ങൾക്ക് എപ്പോൾ വേണമെങ്കിലും ഉൽപ്പന്ന വിശദാംശങ്ങൾ എഡിറ്റ് ചെയ്യാം',
    },
  },
  // DeleteOption
  {
    'acn9bxax': {
      'en': 'Are You sure you want to delete?',
      'ml': 'ഇല്ലാതാക്കണമെന്ന് തീർച്ചയാണോ?',
    },
    '4459hp39': {
      'en': 'Product will be deleted forever',
      'ml': 'ഉൽപ്പന്നം ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടും',
    },
    '7h2x7ej3': {
      'en': 'NO',
      'ml': 'ഇല്ല',
    },
    'o95ihrp3': {
      'en': 'YES',
      'ml': 'അതെ',
    },
  },
  // CouponAddedSuccessfully
  {
    'sezrp3v6': {
      'en': 'Coupon Added Successfully!',
      'ml': 'കൂപ്പൺ ചേർത്തു!',
    },
    'pyj9qe17': {
      'en': 'You can edit coupon details anytime',
      'ml': 'നിങ്ങൾക്ക് എപ്പോൾ വേണമെങ്കിലും കൂപ്പൺ വിശദാംശങ്ങൾ എഡിറ്റ് ചെയ്യാം',
    },
  },
  // DeleteCoupon
  {
    'vsddm2vn': {
      'en': 'Are You sure you want to delete?',
      'ml': 'ഇല്ലാതാക്കണമെന്ന് തീർച്ചയാണോ?',
    },
    '3039l9zy': {
      'en': 'Coupon will be deleted forever',
      'ml': 'കൂപ്പൺ എന്നെന്നേക്കുമായി ഇല്ലാതാക്കപ്പെടും',
    },
    'lucj8wv9': {
      'en': 'NO',
      'ml': 'ഇല്ല',
    },
    'ut1vz036': {
      'en': 'YES',
      'ml': 'അതെ',
    },
  },
  // Products
  {
    'mfb5dov9': {
      'en': 'Kangaroo HD-10D Stapler',
      'ml': 'കംഗാരു HD-10D സ്റ്റാപ്ലർ',
    },
    'auw54eby': {
      'en': '₹76.50',
      'ml': '₹76.50',
    },
    'jy02xija': {
      'en': 'Stock Availability -',
      'ml': 'സ്റ്റോക്ക് ലഭ്യത -',
    },
    'ch6v9fiv': {
      'en': '98 Pcs',
      'ml': '98 പീസുകൾ',
    },
  },
  // OrderDetails
  {
    'qfjxe14a': {
      'en': 'Order Id :',
      'ml': 'ഓർഡർ ഐഡി :',
    },
    'f167bunf': {
      'en': 'Delivery Type     :',
      'ml': 'ഡെലിവറി തരം:',
    },
    'yftbdzdm': {
      'en': 'Order Total          :',
      'ml': 'ഓർഡർ ആകെ:',
    },
    'zearep84': {
      'en': 'Via Debit card',
      'ml': 'ഡെബിറ്റ് കാർഡ് വഴി',
    },
    'm713ramv': {
      'en': 'Pack Order',
      'ml': 'പാക്ക് ഓർഡർ',
    },
    'ithmz27e': {
      'en': 'View Order Details',
      'ml': 'ഓർഡർ വിശദാംശങ്ങൾ കാണുക',
    },
  },
  // EnterCouponCode
  {
    '6y3roxdw': {
      'en': 'Enter Coupon Code',
      'ml': 'കൂപ്പൺ കോഡ് നൽകുക',
    },
  },
  // Discount
  {
    '1lm8wnm9': {
      'en': 'Discount %',
      'ml': 'കിഴിവ് %',
    },
  },
  // CouponDescription
  {
    '6bh8yhds': {
      'en': 'Enter Coupon Desciption',
      'ml': 'കൂപ്പൺ വിവരണം നൽകുക',
    },
  },
  // ProductName
  {
    'z8fbwkj5': {
      'en': 'Enter your product name',
      'ml': 'നിങ്ങളുടെ ഉൽപ്പന്നത്തിന്റെ പേര് നൽകുക',
    },
  },
  // PriceofProduct
  {
    'pyq6cr13': {
      'en': 'Enter Price for your Product',
      'ml': 'നിങ്ങളുടെ ഉൽപ്പന്നത്തിന്റെ വില നൽകുക',
    },
    'ao1kfh7n': {
      'en': 'Enter Variant',
      'ml': 'വേരിയന്റ് നൽകുക',
    },
    'acfhfhi5': {
      'en': '₹',
      'ml': '₹',
    },
    'kd8h9uuz': {
      'en': 'eg. 1 unit, 1kg, pack of 5, 20ml, etc',
      'ml': 'ഉദാ. 1 യൂണിറ്റ്, 1 കിലോ, 5, 20 മില്ലി പായ്ക്ക്, മുതലായവ',
    },
    'h1i883sk': {
      'en': 'Add Variant',
      'ml': 'വേരിയന്റ് ചേർക്കുക',
    },
  },
  // Priceofproduct2
  {
    '1d3ion7w': {
      'en': 'Enter Price for your Product',
      'ml': 'നിങ്ങളുടെ ഉൽപ്പന്നത്തിന്റെ വില നൽകുക',
    },
    '1stl1qu2': {
      'en': 'Enter Variant',
      'ml': 'വേരിയന്റ് നൽകുക',
    },
    'nyc51eqa': {
      'en': '₹',
      'ml': '₹',
    },
    'z8ap2h12': {
      'en': 'eg. 1 unit, 1kg, pack of 5, 20ml, etc',
      'ml': 'ഉദാ. 1 യൂണിറ്റ്, 1 കിലോ, 5, 20 മില്ലി പായ്ക്ക്, മുതലായവ',
    },
    'ieuy35bg': {
      'en': 'Enter Variant',
      'ml': 'വേരിയന്റ് നൽകുക',
    },
    'zh4mg991': {
      'en': '₹',
      'ml': '₹',
    },
    '6cnanj5b': {
      'en': 'eg. 1 unit, 1kg, pack of 5, 20ml, etc',
      'ml': 'ഉദാ. 1 യൂണിറ്റ്, 1 കിലോ, 5, 20 മില്ലി പായ്ക്ക്, മുതലായവ',
    },
    'rx8wwz54': {
      'en': 'Add Variant',
      'ml': 'വേരിയന്റ് ചേർക്കുക',
    },
  },
  // Colors
  {
    '0pcway8d': {
      'en': 'Select Colour Availability for\nthis product.',
      'ml': 'ഈ ഉൽപ്പന്നത്തിന് വർണ്ണ ലഭ്യത തിരഞ്ഞെടുക്കുക.',
    },
    'jf9609p9': {
      'en': 'Tick if not applicable',
      'ml': 'ബാധകമല്ലെങ്കിൽ ടിക്ക് ചെയ്യുക',
    },
  },
  // ProductDetails
  {
    'ntpbv5r9': {
      'en': 'Enter Product Details',
      'ml': 'ഉൽപ്പന്ന വിശദാംശങ്ങൾ നൽകുക',
    },
  },
  // StockDetails
  {
    'o61rxc1f': {
      'en': 'Enter Stock Details',
      'ml': 'സ്റ്റോക്ക് വിശദാംശങ്ങൾ നൽകുക',
    },
  },
  // Size
  {
    'n38227ny': {
      'en': 'Sizes',
      'ml': 'വലിപ്പങ്ങൾ',
    },
    's1zvbskf': {
      'en': 'S',
      'ml': 'എസ്',
    },
    'lpx2w953': {
      'en': 'M',
      'ml': 'എം',
    },
    'lk6gdzif': {
      'en': 'L',
      'ml': 'എൽ',
    },
    '3bu2f8me': {
      'en': 'XL',
      'ml': 'XL',
    },
    'j3965pap': {
      'en': 'XXL',
      'ml': 'XXL',
    },
  },
  // EnterStoreName
  {
    '5cw7h6dv': {
      'en': 'Enter Store Name',
      'ml': 'സ്റ്റോർ പേര് നൽകുക',
    },
  },
  // aboutmystore
  {
    'kbm5zo46': {
      'en': 'About My Store',
      'ml': 'എന്റെ സ്റ്റോറിനെക്കുറിച്ച്',
    },
  },
  // CheckListOrderDetails
  {
    'jbucwc2n': {
      'en': 'Order Id   :',
      'ml': 'ഓർഡർ ഐഡി :',
    },
    'zuusbs9a': {
      'en': 'Ordered Date:',
      'ml': 'ഓർഡർ ചെയ്ത തീയതി:',
    },
    '5mljw5l1': {
      'en': 'Total Amount Paid:',
      'ml': 'അടച്ച ആകെ തുക:',
    },
    '6a1o7bm2': {
      'en': 'Payment Mode:',
      'ml': 'പേയ്‌മെന്റ് മോഡ്:',
    },
    'nfjstxkj': {
      'en': '0000000',
      'ml': '0000000',
    },
    'iswr9yg5': {
      'en': '02-11-2021',
      'ml': '02-11-2021',
    },
    '5q4z9noa': {
      'en': '₹127.00',
      'ml': '₹127.00',
    },
    's8os82i7': {
      'en': 'Via Debit Card',
      'ml': 'ഡെബിറ്റ് കാർഡ് വഴി',
    },
  },
  // ProductsCopy
  {
    '0at8vk50': {
      'en': 'Kangaroo HD-10D Stapler',
      'ml': 'കംഗാരു HD-10D സ്റ്റാപ്ലർ',
    },
    'vvaud4ar': {
      'en': '₹76.50',
      'ml': '₹76.50',
    },
    '3zr5stag': {
      'en': 'Stock Availability -',
      'ml': 'സ്റ്റോക്ക് ലഭ്യത -',
    },
    'm7fui5gu': {
      'en': '98 Pcs',
      'ml': '98 പീസുകൾ',
    },
  },
  // OrderDetailsforT
  {
    '0sbd6pew': {
      'en': 'Order Id   :',
      'ml': 'ഓർഡർ ഐഡി :',
    },
    '0ic18t93': {
      'en': 'Ordered Date:',
      'ml': 'ഓർഡർ ചെയ്ത തീയതി:',
    },
    '918sfe74': {
      'en': 'Total Amount Paid:',
      'ml': 'അടച്ച ആകെ തുക:',
    },
    'bq17wl18': {
      'en': 'Delivered to;',
      'ml': 'കൈമാറി;',
    },
    'mxra3hi7': {
      'en': '0000000',
      'ml': '0000000',
    },
    '5kxao8ee': {
      'en': '02-11-2021',
      'ml': '02-11-2021',
    },
    '94xzy7rz': {
      'en': '₹127.00',
      'ml': '₹127.00',
    },
    'vq2doqw3': {
      'en': 'Sona lawns, xyz street,\nxyz, Kerala - 00000',
      'ml': 'സോന പുൽത്തകിടികൾ, xyz സ്ട്രീറ്റ്, xyz, കേരളം - 00000',
    },
  },
  // VandT
  {
    '3gggqqd1': {
      'en': 'Vendor',
      'ml': 'വെണ്ടർ',
    },
    '5tey1oby': {
      'en': ' Anand Stationary',
      'ml': 'ആനന്ദ് സ്റ്റേഷനറി',
    },
    'cmiwofai': {
      'en': 'Transporter',
      'ml': 'ട്രാൻസ്പോർട്ടർ',
    },
    'qz727qqs': {
      'en': ' Anand Shetty',
      'ml': 'ആനന്ദ് ഷെട്ടി',
    },
    '6ee2y861': {
      'en': 'Add User',
      'ml': 'ഉപയോക്താവിനെ ചേർക്കുക',
    },
  },
  // MyAccountT
  {
    'z5fv5i53': {
      'en': 'My Account',
      'ml': 'എന്റെ അക്കൗണ്ട്',
    },
    'bwpwhbm0': {
      'en': 'My Vehicles',
      'ml': 'എന്റെ വാഹനങ്ങൾ',
    },
    'jmhhpg2i': {
      'en': 'Log Out',
      'ml': 'ലോഗ് ഔട്ട് ചെയ്യുക',
    },
  },
  // DeleteOptionT
  {
    'y0hyx0ku': {
      'en': 'Are You sure you want to delete?',
      'ml': 'ഇല്ലാതാക്കണമെന്ന് തീർച്ചയാണോ?',
    },
    'pn39y877': {
      'en': 'Vehicle will be deleted forever',
      'ml': 'വാഹനം എന്നെന്നേക്കുമായി ഇല്ലാതാക്കപ്പെടും',
    },
    'g80fsmtb': {
      'en': 'NO',
      'ml': 'ഇല്ല',
    },
    'l6xbn5lk': {
      'en': 'YES',
      'ml': 'അതെ',
    },
  },
  // locationC
  {
    'aabd8you': {
      'en': 'Samrat Ashok Nagar , xyz colony,\nnear xyz, Kerala - 00000',
      'ml': '',
    },
    'dt0rgwvb': {
      'en': 'Confirm Location',
      'ml': '',
    },
  },
  // ShopdLocationC
  {
    '871pg1me': {
      'en': 'ANAND STATIONARY',
      'ml': '',
    },
    '8rfvibkb': {
      'en': 'Samrat Ashok Nagar , xyz colony,\nnear xyz, Kerala - 00000',
      'ml': '',
    },
    'wq3fzewb': {
      'en': 'Enter Shop',
      'ml': '',
    },
  },
  // OfferSelectedC
  {
    'orewc8nw': {
      'en': 'Offer Selected',
      'ml': 'സംരക്ഷിച്ചു!',
    },
    'r79pgns0': {
      'en':
          'Add items to your cart and proceed. The\noffer will be applied to your cart.',
      'ml': '',
    },
  },
  // AllProductsCartC
  {
    'pu2srkiw': {
      'en': 'Kangaroo HD-10D Stapler',
      'ml': 'കംഗാരു HD-10D സ്റ്റാപ്ലർ',
    },
    'w8jo5523': {
      'en': '₹76.50',
      'ml': '₹76.50',
    },
    'gyuuo25c': {
      'en': '1 U',
      'ml': '98 പീസുകൾ',
    },
    '5ku8pf9w': {
      'en': 'Add to cart',
      'ml': '98 പീസുകൾ',
    },
  },
  // MyAccountCComp
  {
    'sqomn5yu': {
      'en': 'My Account',
      'ml': 'എന്റെ അക്കൗണ്ട്',
    },
    '4kvc635o': {
      'en': 'About my store',
      'ml': 'എന്റെ സ്റ്റോറിനെക്കുറിച്ച്',
    },
    '6mst8o9n': {
      'en': 'Log Out',
      'ml': 'ലോഗ് ഔട്ട് ചെയ്യുക',
    },
  },
].reduce((a, b) => a..addAll(b));
