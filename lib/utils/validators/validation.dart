import 'package:flutter/material.dart';

class TValidator {
  //Validating Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address';
    }

    return null;
  }

  //Validating Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //Check for minimum password length
    if (value.length < 6) {
      return 'Password should be at least 6 character long.';
    }

    //Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password should contain at least 1 uppercase letter.';
    }

    //Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password should contain at least 1 number.';
    }

    //TODO: Check for special characters.

    return null;
  }

  //Validating Phone Number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is Required';
    }

    //Regular Expression for phone number validation(assuming a 10 digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 Digits required).';
    }

    return null;
  }

  //TODO: (Optional) Add more Validators if Required
}
