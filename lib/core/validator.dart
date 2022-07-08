class ValidatorHelper {

  static final RegExp _nameRegex = RegExp(
      r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");



  static String? validateNameAddress(name) {
    final _hasMatched = _nameRegex.hasMatch(name);
    if(name.isEmpty || name.length <= 3){
      return 'Please enter Name';
    }
    if (!_hasMatched) {
      return 'Please enter valid Name.';
    }
    else {
      return null;
    }
  }


  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static String? validateEmailAddress(email) {
    final _hasMatched = _emailRegex.hasMatch(email);
    if (!_hasMatched) {
      return 'Please enter a valid Email ID';
    } else {
      return null;
    }

  }


  static RegExp passwordRegex =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  static String? validatePassword(password) {
    final _hasMatched = passwordRegex.hasMatch(password);
    if (password.length < 10) {
      return 'password should be 10 characters';
    }else
    if (!_hasMatched) {
      return 'Please enter a valid password';
    }else {
      return null;
    }
  }



  static RegExp phoneRegex =
  RegExp (r'(^[7-9][0-9]{9}$)');
  static String? validatePhone(phone){
    print(phone);
    final _hasMatched = phoneRegex.hasMatch(phone);
    print(_hasMatched);
    if (!_hasMatched) {

      return 'Please enter valid mobile number';
    }
    else {
      return null;
    }
  }
}
