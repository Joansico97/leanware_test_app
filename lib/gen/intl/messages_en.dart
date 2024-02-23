// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "billTitle": MessageLookupByLibrary.simpleMessage("Bill"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Cancel"),
        "commingSoon": MessageLookupByLibrary.simpleMessage("Comming Soon"),
        "confirmButton": MessageLookupByLibrary.simpleMessage("Confirm"),
        "dinerModalButton": MessageLookupByLibrary.simpleMessage("Create"),
        "dinerModalMessage":
            MessageLookupByLibrary.simpleMessage("Enter diner name"),
        "dinerModalTitle": MessageLookupByLibrary.simpleMessage("Create diner"),
        "dinerTitle": MessageLookupByLibrary.simpleMessage("Diner"),
        "payButton": MessageLookupByLibrary.simpleMessage("Pay"),
        "paymentModalTitle": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to generate the payment?"),
        "productModalTitle":
            MessageLookupByLibrary.simpleMessage("Click to add a new product"),
        "productTitle": MessageLookupByLibrary.simpleMessage("Products"),
        "purchaseSummaryTitle":
            MessageLookupByLibrary.simpleMessage("Purchase summary"),
        "tableModalButton": MessageLookupByLibrary.simpleMessage("Create"),
        "tableModalMessage":
            MessageLookupByLibrary.simpleMessage("Enter table number"),
        "tableModalTitle": MessageLookupByLibrary.simpleMessage("Create table"),
        "tableTitle": MessageLookupByLibrary.simpleMessage("Table"),
        "tipModalMessage":
            MessageLookupByLibrary.simpleMessage("Enter the tip amount"),
        "tipModalTitle": MessageLookupByLibrary.simpleMessage("Add tip")
      };
}
