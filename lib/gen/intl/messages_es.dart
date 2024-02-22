// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancelButton": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "commingSoon": MessageLookupByLibrary.simpleMessage("Próximamente"),
        "confirmButton": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "dinerModalButton": MessageLookupByLibrary.simpleMessage("Crear"),
        "dinerModalMessage":
            MessageLookupByLibrary.simpleMessage("Ingrese nombre del cliente"),
        "dinerModalTitle":
            MessageLookupByLibrary.simpleMessage("Crear cliente"),
        "dinerTitle": MessageLookupByLibrary.simpleMessage("Cliente"),
        "paymentModalTitle": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de querer generar el pago?"),
        "productModalTitle": MessageLookupByLibrary.simpleMessage(
            "Haga clic para añadir un nuevo producto"),
        "productTitle": MessageLookupByLibrary.simpleMessage("Productos"),
        "tableModalButton": MessageLookupByLibrary.simpleMessage("Crear"),
        "tableModalMessage":
            MessageLookupByLibrary.simpleMessage("Ingrese número de la mesa"),
        "tableModalTitle": MessageLookupByLibrary.simpleMessage("Crear mesa"),
        "tableTitle": MessageLookupByLibrary.simpleMessage("Mesa")
      };
}
