enum UserSelectCSS { auto, none, text, all, contain }

String mapperUserSelectCSS(UserSelectCSS value) {
  switch (value) {
    case UserSelectCSS.auto:
      return 'auto';
    case UserSelectCSS.none:
      return 'none';
    case UserSelectCSS.text:
      return 'text';
    case UserSelectCSS.all:
      return 'all';
    case UserSelectCSS.contain:
      return 'contain';
    default:
      throw Exception('Invalid value UserSelectCSS');
  }
}
