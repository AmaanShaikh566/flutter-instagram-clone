String? emailValidation(String? value) {
  final pattern = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  if (value!.isNotEmpty && (!pattern.hasMatch(value.trim()))) {
    return 'Enter Valid Email ID';
  } else {
    return null;
  }
}

String? passwordValidation(String? value) {
  if (value!.isNotEmpty && (value.trim().length != 10)) {
    return 'Enter Valid Password';
  } else {
    return null;
  }
}