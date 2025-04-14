// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(phoneNumber) =>
      "Code is sent to ${phoneNumber} write the verification code down";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "codeSentTo": m0,
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "continueAsGuist":
            MessageLookupByLibrary.simpleMessage("Continue As Guist"),
        "didntReceiveCode":
            MessageLookupByLibrary.simpleMessage("Didn\'t receive code?"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Don’t have an account?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enterEmail": MessageLookupByLibrary.simpleMessage("Enter email"),
        "enterMobileNumber":
            MessageLookupByLibrary.simpleMessage("Enter mobile number"),
        "enterMobileNumberWithYourAccount": MessageLookupByLibrary.simpleMessage(
            "Enter the mobile number associated with your account to send the code"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Enter Password"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forget Password"),
        "hello": MessageLookupByLibrary.simpleMessage("Hello"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "mobileNumber": MessageLookupByLibrary.simpleMessage("Mobile Number"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordLength": MessageLookupByLibrary.simpleMessage(
            "Your new password Must be at least 8 characters."),
        "passwordValidation": MessageLookupByLibrary.simpleMessage(
            "password must be at least 8 characters, include a number, and a special character"),
        "pleaseEnterValidEmail": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address."),
        "pleaseFillThisField":
            MessageLookupByLibrary.simpleMessage("Please fill this field"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Resend Code"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("Reset Password"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "verificationCode":
            MessageLookupByLibrary.simpleMessage("Verification Code"),
        "verify": MessageLookupByLibrary.simpleMessage("Verify"),
        "weAreHappyToseeYou":
            MessageLookupByLibrary.simpleMessage("We are happy to see you."),
        "willSendConfirmationCode": MessageLookupByLibrary.simpleMessage(
            "we will send confirmation code")
      };
}
