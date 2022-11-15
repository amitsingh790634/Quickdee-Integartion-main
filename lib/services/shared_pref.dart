import 'package:shared_preferences/shared_preferences.dart';

class SharedToken {
  token_save(token) async {
    final preference = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    preference.setString(key, value);
    print('saved $value');
  }

  token_read() async {
    final preference = await SharedPreferences.getInstance();
    final key = 'token';
    final read_value = preference.getString(key) ?? 0;
    print('read: $read_value');
    return read_value;
  }

  save_user(user, name) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'user';
    final value = user;
    final key2 = 'name';
    final value2 = name;
    prefs.setString(key, value);
    prefs.setString(key2, value2);
    // print('user $value');
    // print('name $value2');
  }
}

  // token_dispose() async {
  //   final preference = SharedPreferences.getInstance();
  //   preference.clear();
  // }

