import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'l7gft650': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'aqt7qnb8': {
      'en': 'My Profile',
      'pt': 'Perfil',
    },
    'e8d05uub': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'pu449pxy': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'v0agsyg9': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    '9axay1x7': {
      'en': 'Find\nStudents',
      'pt': 'Encontrar\nAlunos',
    },
    'ckzjk36e': {
      'en': 'Student Organizations',
      'pt': 'Organizações Estudantis',
    },
    'jyyu84k2': {
      'en': 'Upcoming Events',
      'pt': 'Próximos Eventos',
    },
    '1npdnipr': {
      'en': 'Edit\nProfile',
      'pt': 'Editar\nPerfil',
    },
    '6g6fle60': {
      'en': 'Direct Messages',
      'pt': 'Mensagens Diretas',
    },
    '3whrcpk5': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Login
  {
    '1bt0bwzs': {
      'en': 'email',
      'pt': 'e-mail',
    },
    '700bnzqk': {
      'en': 'password',
      'pt': 'senha',
    },
    'jmj4id3w': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    'nlgzly31': {
      'en': 'Forgot Password?',
      'pt': '',
    },
    'e2jb2tof': {
      'en': 'Don\'t have an account? ',
      'pt': 'Não tem uma conta?',
    },
    '9h7feogx': {
      'en': 'Sign up.',
      'pt': 'Inscrever-se.',
    },
    'pv9iolu7': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // CreateAccount
  {
    'tqo0agln': {
      'en': 'username',
      'pt': 'nome de utilizador',
    },
    'kxst3bbd': {
      'en': 'email',
      'pt': 'e-mail',
    },
    '3ed9k5ir': {
      'en': 'password',
      'pt': 'senha',
    },
    'ixa3vx5b': {
      'en': 'confirm password',
      'pt': 'Confirme a sua senha',
    },
    '3pkjhxl9': {
      'en': 'Sign Up',
      'pt': 'Inscrever-se',
    },
    's61cmm46': {
      'en': 'Already have an account? ',
      'pt': 'já tem uma conta?',
    },
    'vp5acm87': {
      'en': 'Log in here.',
      'pt': 'Entre aqui.',
    },
    'm5h9vcqw': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Loading
  {
    '04zcq0jq': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // chat_2_Details
  {
    'gqkvnlbi': {
      'en': 'Group Chat',
      'pt': 'Conversa em grupo',
    },
    'q7ssry9d': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // chat_2_main
  {
    '0w4kjn1g': {
      'en': 'UniConnect',
      'pt': 'UniConnect',
    },
    'ptd4l0bc': {
      'en': 'Chats',
      'pt': 'Bate-papos',
    },
    '6w1rgrya': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    '1d11h2jp': {
      'en': 'My Profile',
      'pt': 'Perfil',
    },
    '1cwv8k4s': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    '5jwlrfrz': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'kgckeu4a': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'smwg83jy': {
      'en': '__',
      'pt': '__',
    },
  },
  // InviteUsers
  {
    'iza4mmiz': {
      'en': 'UniConnect',
      'pt': '',
    },
    't9w1tdmo': {
      'en': 'Students',
      'pt': '',
    },
    'tepnujl3': {
      'en': 'Settings',
      'pt': '',
    },
    'r9z5wsi6': {
      'en': 'My Profile',
      'pt': '',
    },
    'kzbfpk9k': {
      'en': 'Theme',
      'pt': '',
    },
    '2gy2u16r': {
      'en': 'About us',
      'pt': '',
    },
    'd2b24vii': {
      'en': 'Logout',
      'pt': '',
    },
    's8u4piuk': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // image_Details
  {
    'djj19nwm': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // onboarding
  {
    '6l4rh0f9': {
      'en': 'Real Name',
      'pt': 'Nome real',
    },
    'nnoeybzc': {
      'en': 'Save Changes',
      'pt': 'Submeter alterações',
    },
  },
  // template_only_not_to_use
  {
    '8vmwn57d': {
      'en': 'David Jerome',
      'pt': 'David Jerônimo',
    },
    'qekgzxuj': {
      'en': 'David.j@gmail.com',
      'pt': 'David.j@gmail.com',
    },
    'w9hqe507': {
      'en': 'Passenger Documents',
      'pt': 'Documentos de passageiros',
    },
    '75xdkfb9': {
      'en': 'Tracker Notifications',
      'pt': 'Notificações do rastreador',
    },
    '84ey8xgm': {
      'en': 'Help Center',
      'pt': 'Centro de ajuda',
    },
    'ouy4ecdy': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'smp23lg4': {
      'en': 'Phone Number',
      'pt': 'Número de telefone',
    },
    'mayk1slh': {
      'en': 'Add Number',
      'pt': 'Adicionar número',
    },
    'cilj9qxi': {
      'en': 'Language',
      'pt': 'Linguagem',
    },
    'n0qkozqp': {
      'en': 'English (eng)',
      'pt': 'Inglês (eng)',
    },
    'sfzl6r4y': {
      'en': 'Currency',
      'pt': 'Moeda',
    },
    'x9sxrjkl': {
      'en': 'US Dollar (\$)',
      'pt': 'Dólar americano (\$)',
    },
    'nzj5x00a': {
      'en': 'Profile Settings',
      'pt': 'Configurações de perfil',
    },
    'lpla1k51': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'cs7kxv9a': {
      'en': 'Notification Settings',
      'pt': 'Configurações de notificação',
    },
    'p2gl6asg': {
      'en': 'Log out of account',
      'pt': 'Sair da conta',
    },
    'imuu8jxm': {
      'en': 'Log Out?',
      'pt': 'Sair?',
    },
    'mps9yow7': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // EditProfile
  {
    'nkvy3dmb': {
      'en': 'Username',
      'pt': 'Nome de utilizador',
    },
    'r4kw9nv0': {
      'en': 'Real Name',
      'pt': 'Nome Real',
    },
    'wymyl7ri': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    's8lk4sqe': {
      'en': 'Save',
      'pt': 'Submeter',
    },
    'wtahojm3': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    '0ox6w7ti': {
      'en': 'My Profile',
      'pt': 'Perfil',
    },
    'zyy1l7k0': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    '11hxzuez': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'p6b1nr7g': {
      'en': 'Logout',
      'pt': 'Sair',
    },
  },
  // MyProfile
  {
    '2rj2nage': {
      'en': 'Logout',
      'pt': 'Sair',
    },
  },
  // AboutUs
  {
    '63zy43qf': {
      'en': 'App developed by',
      'pt': 'Aplicação desenvolvida por',
    },
    '3c9mpmjf': {
      'en':
          'Afonso Machado\n\nAfonso Domingues\n\nFilipa Geraldes\n\nLuís Arruda',
      'pt':
          'Afonso Machado\n\nAfonso Domingues\n\nFilipa Geraldes\n\nLuís Arruda',
    },
    'za52phts': {
      'en': 'Software Engineering, 2023/2024',
      'pt': 'Engenharia de Software, 2023/2024',
    },
    '30zi9e4w': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // RecoverPassword
  {
    'wyhy0c9o': {
      'en': 'Back',
      'pt': 'Voltar',
    },
    '3kizvrow': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu-se da senha',
    },
    'ndkj00rr': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'pt':
          'Enviaremos um e-mail com um link para redefinir a sua senha. Digite no seguinte campo o e-mail associado à sua conta.',
    },
    'r02shnm1': {
      'en': 'Your email address...',
      'pt': 'O seu endereço de email...',
    },
    'ssurh65g': {
      'en': 'Enter your email...',
      'pt': 'Digite o seu e-mail...',
    },
    'xgjdh373': {
      'en': 'Send Link',
      'pt': 'Enviar Link',
    },
    'e9l6lgzq': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // MainTags
  {
    'dlckeh8b': {
      'en': 'Course',
      'pt': 'Curso',
    },
    'mkqjaboz': {
      'en': 'L.EIC',
      'pt': 'L.EIC',
    },
    '8kwfnydq': {
      'en': 'L.EEC',
      'pt': 'L.EEC',
    },
    '7msodpm4': {
      'en': 'L.BIO',
      'pt': 'L.BIO',
    },
    'q241az2u': {
      'en': 'L.EMAT',
      'pt': 'L.EMAT',
    },
    'p7r0zpvb': {
      'en': 'L.EMG',
      'pt': 'L.EMG',
    },
    'ogdmchrm': {
      'en': 'L.EA',
      'pt': 'L.EA',
    },
    '4vs1134x': {
      'en': 'L.EGI',
      'pt': 'L.EGI',
    },
    'ty43lccw': {
      'en': 'L.EF',
      'pt': 'L.EF',
    },
    'v9glf909': {
      'en': 'L.EM',
      'pt': 'L.EM',
    },
    '1ayg8dmj': {
      'en': 'L.EQ',
      'pt': 'L.EQ',
    },
    'biwthh45': {
      'en': 'Interests',
      'pt': 'Interesses',
    },
    'z5b8aefy': {
      'en': 'Travel',
      'pt': 'Viagem',
    },
    '378j7hzv': {
      'en': 'Gaming',
      'pt': 'Jogos',
    },
    '1qhvl6ju': {
      'en': 'Football',
      'pt': 'Futebol',
    },
    '3fiftnp9': {
      'en': 'Guitar',
      'pt': 'Guitarra',
    },
    'j2s0aivp': {
      'en': 'Volunteer',
      'pt': 'Voluntário',
    },
    'd6rypwoq': {
      'en': 'Biking',
      'pt': 'Andar de bicicleta',
    },
    'x5mwcmpc': {
      'en': 'Art',
      'pt': 'Arte',
    },
    'ik09bai6': {
      'en': 'Music',
      'pt': 'Música',
    },
    'chp4rlpl': {
      'en': 'Cooking',
      'pt': 'Culinária',
    },
    '2yza8xdr': {
      'en': 'Chess',
      'pt': 'Xadrez',
    },
    'hoiy28tm': {
      'en': 'Reading',
      'pt': 'Leitura',
    },
    'ktdcnyim': {
      'en': 'Yoga',
      'pt': 'Ioga',
    },
    'wma9vqyi': {
      'en': 'Languages',
      'pt': 'Línguas',
    },
    'gv5pvpp0': {
      'en': 'Portuguese',
      'pt': 'Português',
    },
    'rga0k5l0': {
      'en': 'Spanish',
      'pt': 'Espanhol',
    },
    '76w5ubtp': {
      'en': 'Arabic',
      'pt': 'Árabe',
    },
    '54339483': {
      'en': 'German',
      'pt': 'Alemão',
    },
    'ixd0iqoe': {
      'en': 'Chinese',
      'pt': 'Chinês',
    },
    'eog1nc2j': {
      'en': 'Japanese',
      'pt': 'Japonês',
    },
    'cvtpr1nz': {
      'en': 'English',
      'pt': 'Inglês',
    },
    '8m4euah2': {
      'en': 'French',
      'pt': 'Francês',
    },
    'c8hotz5x': {
      'en': 'Russian',
      'pt': 'Russo',
    },
    'dg7kdadz': {
      'en': 'Italian',
      'pt': 'Italiano',
    },
    'v24bcu5a': {
      'en': 'Turkish',
      'pt': 'Turco',
    },
    '5cc1ubeb': {
      'en': 'Korean',
      'pt': 'Coreano',
    },
    'cie6h7qf': {
      'en': 'Year',
      'pt': 'Ano',
    },
    '8isxvw2n': {
      'en': '1st year',
      'pt': '1º ano',
    },
    'tz88pzdr': {
      'en': '2nd year',
      'pt': '2º ano',
    },
    '7pb7nv9a': {
      'en': '3rd year',
      'pt': '3 º ano',
    },
    'pyt7zvhh': {
      'en': '4th year',
      'pt': '4º ano',
    },
    'np96wgkh': {
      'en': '5th year',
      'pt': '5º ano',
    },
    '7ohcc65r': {
      'en': 'Others',
      'pt': 'Outros',
    },
    '5tiph66w': {
      'en': 'Add your own \ntag here!',
      'pt': 'Adicione a sua própria\ntag aqui!',
    },
    'q5wcgrpd': {
      'en': 'Tag',
      'pt': 'Marcação',
    },
    '87pfz8j5': {
      'en': 'Save Changes',
      'pt': 'Submeter alterações',
    },
    'siouyck5': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // ChatPreview
  {
    '1ys8y7xz': {
      'en': 'START CHAT',
      'pt': '',
    },
    'aqppj9pi': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    '04q4r7kb': {
      'en': 'My Profile',
      'pt': 'Perfil',
    },
    'v3lipbty': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'xdcdxqeg': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'eaf8mp78': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'lpqxo9kk': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // chat_DetailsOverlay
  {
    'r85nwzze': {
      'en': 'Group Chat ID: ',
      'pt': 'ID do bate-papo em grupo:',
    },
    '901yc4qj': {
      'en': 'In this chat',
      'pt': 'Neste bate-papo',
    },
    'rn3lmp8w': {
      'en': 'Close',
      'pt': 'Fechar',
    },
  },
  // chat_ThreadComponent
  {
    '4bpsrwfg': {
      'en': 'Start typing here...',
      'pt': 'Comece a digitar aqui...',
    },
    'snf0s0ai': {
      'en': 'You must enter a message...',
      'pt': 'Você deve inserir uma mensagem...',
    },
    '2ll8zhcm': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // user_ListSmall
  {
    'l0kket5d': {
      'en': 'ME',
      'pt': 'MEU',
    },
  },
  // deleteDialog
  {
    'owb68ny1': {
      'en': 'Options',
      'pt': 'Opções',
    },
    'z1zzsrcr': {
      'en': 'Invite Users',
      'pt': 'Convidar usuários',
    },
    'xz178y24': {
      'en': 'Delete Chat',
      'pt': 'Excluir bate-papo',
    },
    'lfox05to': {
      'en': 'Confirm Delete',
      'pt': 'Confirmar exclusão',
    },
    'juv9b38u': {
      'en': 'You can\'t undo this action.',
      'pt': 'Você não pode desfazer esta ação.',
    },
    'kgd0yncy': {
      'en': 'Delete',
      'pt': 'Excluir',
    },
  },
  // photo_change
  {
    'aan3uhau': {
      'en': 'Change Photo',
      'pt': 'Mudar foto',
    },
    'lbn01e4c': {
      'en': 'Upload Image',
      'pt': 'Enviar Imagem',
    },
    '9l7hktm8': {
      'en': 'Save Changes',
      'pt': 'Submeter alterações',
    },
  },
  // Miscellaneous
  {
    'l3wcfesx': {
      'en': '',
      'pt': '',
    },
    'ywcb4l3f': {
      'en': '',
      'pt': '',
    },
    'smhwm5ml': {
      'en': '',
      'pt': '',
    },
    'ht8wuaml': {
      'en': '',
      'pt': '',
    },
    'quy8lq5r': {
      'en': '',
      'pt': '',
    },
    'u4hhljpk': {
      'en': '',
      'pt': '',
    },
    'ni5wnwf7': {
      'en': '',
      'pt': '',
    },
    'x7ld19q3': {
      'en': '',
      'pt': '',
    },
    'yxv1wy0l': {
      'en': '',
      'pt': '',
    },
    'qokingg6': {
      'en': '',
      'pt': '',
    },
    'jj4x21mc': {
      'en': '',
      'pt': '',
    },
    'ratunawr': {
      'en': '',
      'pt': '',
    },
    'bk551xh0': {
      'en': '',
      'pt': '',
    },
    'njhnyq12': {
      'en': '',
      'pt': '',
    },
    'tajb4xgg': {
      'en': '',
      'pt': '',
    },
    'hd3vh9wj': {
      'en': '',
      'pt': '',
    },
    'xrzvfepi': {
      'en': '',
      'pt': '',
    },
    'x4glz45m': {
      'en': '',
      'pt': '',
    },
    'w7p4x3o8': {
      'en': '',
      'pt': '',
    },
    'j9njuxwg': {
      'en': '',
      'pt': '',
    },
    'h0hfvvht': {
      'en': '',
      'pt': '',
    },
    'plf188cl': {
      'en': '',
      'pt': '',
    },
    'levbb6o2': {
      'en': '',
      'pt': '',
    },
    'v8zu55f3': {
      'en': '',
      'pt': '',
    },
    'o86uzswy': {
      'en': '',
      'pt': '',
    },
    'mq0q1tr8': {
      'en': '',
      'pt': '',
    },
    'h5jpm9oh': {
      'en': '',
      'pt': '',
    },
    'v8urmxr5': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
