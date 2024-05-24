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
      'pt': 'Meu Perfil',
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
    '6g6fle60': {
      'en': 'Direct Messages',
      'pt': 'Mensagens Diretas',
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
    '3whrcpk5': {
      'en': 'Home',
      'pt': 'Página inicial',
    },
  },
  // Login
  {
    '1bt0bwzs': {
      'en': 'email',
      'pt': 'email',
    },
    '700bnzqk': {
      'en': 'password',
      'pt': 'senha',
    },
    'jmj4id3w': {
      'en': 'Sign In',
      'pt': 'Iniciar Sessão',
    },
    'nlgzly31': {
      'en': 'Forgot Password?',
      'pt': 'Esqueceu a senha?',
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
      'pt': 'Página inicial',
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
      'pt': 'email',
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
      'pt': 'Página inicial',
    },
  },
  // Loading
  {
    '04zcq0jq': {
      'en': 'Home',
      'pt': 'Página inicial',
    },
  },
  // Chat
  {
    'gqkvnlbi': {
      'en': 'Group Chat',
      'pt': 'Conversa em grupo',
    },
    'q7ssry9d': {
      'en': 'Home',
      'pt': 'Página inicial',
    },
  },
  // ChatMain
  {
    '0w4kjn1g': {
      'en': 'UniConnect',
      'pt': 'UniConnect',
    },
    'pd0gpcpd': {
      'en': 'Chats',
      'pt': '',
    },
    'd1dcj5bc': {
      'en': ' Search Here...',
      'pt': 'Procure aqui...',
    },
    '6w1rgrya': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    '1d11h2jp': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
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
  // FindStudents
  {
    'iza4mmiz': {
      'en': 'UniConnect',
      'pt': 'UniConnect',
    },
    'c32v5fma': {
      'en': 'Students',
      'pt': 'Estudantes',
    },
    'wdenfhcz': {
      'en': ' Search Here...',
      'pt': 'Procure aqui...',
    },
    'jnztbh98': {
      'en': 'Tags',
      'pt': 'Tags',
    },
    'z0jw8b1u': {
      'en': ' Search Here...',
      'pt': 'Procure aqui...',
    },
    'qdjyjynm': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'tepnujl3': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'r9z5wsi6': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    'kzbfpk9k': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    '2gy2u16r': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'd2b24vii': {
      'en': 'Logout',
      'pt': 'Sair',
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
      'pt': 'Página inicial',
    },
  },
  // onboarding
  {
    '6l4rh0f9': {
      'en': 'Real Name',
      'pt': 'Nome real',
    },
    'r9jai2ki': {
      'en': 'Field is required',
      'pt': '',
    },
    '387jucob': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
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
      'pt': 'Email',
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
      'pt': 'Página inicial',
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
      'pt': 'Página inicial',
    },
  },
  // MainTags
  {
    'kjr8c6yd': {
      'en': 'Tags',
      'pt': 'Tags',
    },
    'dlckeh8b': {
      'en': 'Course',
      'pt': 'Curso',
    },
    'n5o7dpt6': {
      'en': '',
      'pt': '',
    },
    '8nlxg8ue': {
      'en': 'L.EIC',
      'pt': 'L.EIC',
    },
    'rqenm8b6': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'gdmeg9ai': {
      'en': 'Interests',
      'pt': 'interesses',
    },
    'ht8wuaml': {
      'en': '',
      'pt': '',
    },
    'y3678khs': {
      'en': 'Travel',
      'pt': 'Viagem',
    },
    'm83l1fl8': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '159jb203': {
      'en': 'Languages',
      'pt': 'Linguagens',
    },
    'quy8lq5r': {
      'en': '',
      'pt': '',
    },
    '0wuyi2eu': {
      'en': 'Portuguese',
      'pt': '',
    },
    'uedug9yg': {
      'en': 'Option 1',
      'pt': '',
    },
    'su19tk6m': {
      'en': 'Year',
      'pt': 'Ano',
    },
    'u4hhljpk': {
      'en': '',
      'pt': '',
    },
    'esamkwfv': {
      'en': '1st year',
      'pt': '1º ano',
    },
    'zmvkhjid': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    '8bgryt9k': {
      'en': 'Other',
      'pt': 'Outro',
    },
    'wutcoeg7': {
      'en': '',
      'pt': '',
    },
    'c5jyc35e': {
      'en': 'Others',
      'pt': 'Outros',
    },
    'bm0i4ikt': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'xhi0wcnk': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'ds9713mk': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    '52qs9hwg': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'oprrr4ch': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'lirkd766': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'siouyck5': {
      'en': 'Home',
      'pt': 'Página inicial',
    },
  },
  // ChatPreview
  {
    '1ys8y7xz': {
      'en': 'START CHAT',
      'pt': 'INICIAR CONVERSA',
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
      'pt': 'Página inicial',
    },
  },
  // StudentEventsCreateProfile
  {
    'ieazbiat': {
      'en': 'Event Name',
      'pt': 'Nome do evento',
    },
    'isn673ct': {
      'en': 'Select Date and Time',
      'pt': 'Selecione a data e o tempo',
    },
    'uof9o1d1': {
      'en': 'Room',
      'pt': 'Sala',
    },
    'r8027l4d': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    '3tba3qdb': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'sv77mb2m': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'mckkgvd5': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    'ytkxfu1l': {
      'en': 'Theme',
      'pt': '',
    },
    'i72kqpbh': {
      'en': 'About us',
      'pt': '',
    },
    'er6dfoy6': {
      'en': 'Logout',
      'pt': '',
    },
  },
  // StudentOrganizationsCreateProfile
  {
    '0zj91t9x': {
      'en': 'Organization Name',
      'pt': 'Nome da organização',
    },
    'k215q1zw': {
      'en': 'Email',
      'pt': 'Email',
    },
    'fy2xqewd': {
      'en': 'Room',
      'pt': 'Sala',
    },
    'oei6ogoq': {
      'en': 'Description',
      'pt': 'Desc',
    },
    'xkm4pvmk': {
      'en': 'Save',
      'pt': '',
    },
    '09is7qqz': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'bsuzv234': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    'vsmx8g1e': {
      'en': 'Theme',
      'pt': '',
    },
    'zlavvez7': {
      'en': 'About us',
      'pt': '',
    },
    'g43guuri': {
      'en': 'Logout',
      'pt': '',
    },
  },
  // StudentEventsProfile
  {
    't5ek0xxi': {
      'en': 'Delete',
      'pt': 'Apagar',
    },
    'mev3am6s': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'uxpzquvl': {
      'en': 'My Profile',
      'pt': 'Meu Perfil',
    },
    'dvvkm55c': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'l12iz1yb': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'at5lasoi': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'rtd7ize6': {
      'en': 'Home',
      'pt': 'Página inicial',
    },
  },
  // StudentOrganizationsProfile
  {
    'uqvw6al5': {
      'en': 'Delete',
      'pt': 'Apagar',
    },
    '3u0vm2jv': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'ebzjaa7s': {
      'en': 'My Profile',
      'pt': 'Meu perfil',
    },
    'dsxklrqg': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    '55genvid': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'e2neyl67': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'jst0t28m': {
      'en': 'Home',
      'pt': 'Página Inicial',
    },
  },
  // StudentEventsMain
  {
    'ljfmpv0r': {
      'en': 'UniConnect',
      'pt': 'UniConnect',
    },
    'udgiz4xk': {
      'en': 'Student Events',
      'pt': 'Eventos estudantis',
    },
    'wiezy3m9': {
      'en': 'Search Here',
      'pt': 'Procure aqui',
    },
    'ktw99o4o': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'vm9l5xzr': {
      'en': 'My Profile',
      'pt': 'Meu perfil',
    },
    'zj9xp3nf': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'ml9b49bn': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'agmcta86': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'hdx0v7mx': {
      'en': 'Home',
      'pt': 'Página Inicial',
    },
  },
  // StudentOrganizationsMain
  {
    'bhiuumon': {
      'en': 'UniConnect',
      'pt': 'UniConnect',
    },
    '7oxcj4zo': {
      'en': 'Student\nOrganizations',
      'pt': 'Organizações de estudantes',
    },
    'q1sgg4jr': {
      'en': 'Search Here',
      'pt': 'Procure aqui',
    },
    'e7mzdnie': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'wz0svcf0': {
      'en': 'My Profile',
      'pt': 'Meu perfil',
    },
    'b8o9hqr1': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'tg6cwhvh': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    '5d3hk0yf': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'qay3gocx': {
      'en': 'Home',
      'pt': 'Página Inicial',
    },
  },
  // StudentEventsEditProfille
  {
    'vgt8tq55': {
      'en': 'Event Name',
      'pt': 'Nome do evento',
    },
    'd9eo7sa7': {
      'en': 'Select Date and Time',
      'pt': 'Selecione a data e o tempo',
    },
    '1nko9rt7': {
      'en': 'Room',
      'pt': 'Sala',
    },
    'whdeyuii': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'zkp0u4md': {
      'en': 'Save',
      'pt': '',
    },
    'f4oi776r': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'kllu03eu': {
      'en': 'My Profile',
      'pt': 'Meu perfil',
    },
    'miv48vhf': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    '6pvxvrym': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'zpxcmynh': {
      'en': 'Logout',
      'pt': 'Sair',
    },
  },
  // StudentOrganizationsEditProfile
  {
    'chylucky': {
      'en': 'Organization Name',
      'pt': 'Nome da organização',
    },
    '2x3tifl3': {
      'en': 'Email',
      'pt': '',
    },
    'ubqmbg9r': {
      'en': 'Room',
      'pt': 'Sala',
    },
    'gkr19aws': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'eum0fvvn': {
      'en': 'Save',
      'pt': 'Salvar',
    },
    'erjclk2k': {
      'en': 'Settings',
      'pt': '',
    },
    'japtl54r': {
      'en': 'My Profile',
      'pt': '',
    },
    'hvgkc01n': {
      'en': 'Theme',
      'pt': 'Tema',
    },
    'rcd2jzz9': {
      'en': 'About us',
      'pt': 'Sobre nós',
    },
    'kp3w2el6': {
      'en': 'Logout',
      'pt': 'Sair',
    },
  },
  // chat_DetailsOverlay
  {
    'r85nwzze': {
      'en': 'Chat ID: ',
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
      'pt': 'EU',
    },
  },
  // deleteDialog
  {
    'owb68ny1': {
      'en': 'Options',
      'pt': 'Opções',
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
    'gcob6yg8': {
      'en': '',
      'pt': '',
    },
    'lolgcy17': {
      'en': '',
      'pt': '',
    },
    '0ri330z0': {
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
