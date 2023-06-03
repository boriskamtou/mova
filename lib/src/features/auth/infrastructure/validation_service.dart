class ValidationService {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide your email';
    }
    if (!RegExp('[^@ \t\r\n]+@[^@ \t\r\n]+.[^@ \t\r\n]+').hasMatch(value)) {
      return 'Please provide a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide your password';
    }

    return null;
  }

  static String? validateFullNaMe(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide your full name';
    }
    return null;
  }

  static String? validateNickName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide a nickmane';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please provide your phone number';
    }
    return null;
  }
}
