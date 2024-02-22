// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class IntlTrans {
  IntlTrans();

  static IntlTrans? _current;

  static IntlTrans get current {
    assert(_current != null,
        'No instance of IntlTrans was loaded. Try to initialize the IntlTrans delegate before accessing IntlTrans.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<IntlTrans> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = IntlTrans();
      IntlTrans._current = instance;

      return instance;
    });
  }

  static IntlTrans of(BuildContext context) {
    final instance = IntlTrans.maybeOf(context);
    assert(instance != null,
        'No instance of IntlTrans present in the widget tree. Did you add IntlTrans.delegate in localizationsDelegates?');
    return instance!;
  }

  static IntlTrans? maybeOf(BuildContext context) {
    return Localizations.of<IntlTrans>(context, IntlTrans);
  }

  /// `Próximamente`
  String get commingSoon {
    return Intl.message(
      'Próximamente',
      name: 'commingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Mesa`
  String get tableTitle {
    return Intl.message(
      'Mesa',
      name: 'tableTitle',
      desc: '',
      args: [],
    );
  }

  /// `Crear mesa`
  String get tableModalTitle {
    return Intl.message(
      'Crear mesa',
      name: 'tableModalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Crear`
  String get tableModalButton {
    return Intl.message(
      'Crear',
      name: 'tableModalButton',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese número de la mesa`
  String get tableModalMessage {
    return Intl.message(
      'Ingrese número de la mesa',
      name: 'tableModalMessage',
      desc: '',
      args: [],
    );
  }

  /// `Cliente`
  String get dinerTitle {
    return Intl.message(
      'Cliente',
      name: 'dinerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Crear cliente`
  String get dinerModalTitle {
    return Intl.message(
      'Crear cliente',
      name: 'dinerModalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Crear`
  String get dinerModalButton {
    return Intl.message(
      'Crear',
      name: 'dinerModalButton',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese nombre del cliente`
  String get dinerModalMessage {
    return Intl.message(
      'Ingrese nombre del cliente',
      name: 'dinerModalMessage',
      desc: '',
      args: [],
    );
  }

  /// `Productos`
  String get productTitle {
    return Intl.message(
      'Productos',
      name: 'productTitle',
      desc: '',
      args: [],
    );
  }

  /// `Haga clic para añadir un nuevo producto`
  String get productModalTitle {
    return Intl.message(
      'Haga clic para añadir un nuevo producto',
      name: 'productModalTitle',
      desc: '',
      args: [],
    );
  }

  /// `¿Está seguro de querer generar el pago?`
  String get paymentModalTitle {
    return Intl.message(
      '¿Está seguro de querer generar el pago?',
      name: 'paymentModalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar`
  String get confirmButton {
    return Intl.message(
      'Confirmar',
      name: 'confirmButton',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancelButton {
    return Intl.message(
      'Cancelar',
      name: 'cancelButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<IntlTrans> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<IntlTrans> load(Locale locale) => IntlTrans.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
