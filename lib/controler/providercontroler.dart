import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Providercontroler with ChangeNotifier {
  String? username;
  String? userimage;
  int? imageindex;

  Future<void> storename(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', name);
    username = name;
    notifyListeners();
  }

  Future<void> getname() async {
    final prefs = await SharedPreferences.getInstance();
    username = await prefs.getString('username') ?? 'Player';
    notifyListeners();
  }

  Future<void> storeimage(String image) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userimage', image);
    userimage = image;
    notifyListeners();
  }

  Future<void> getimage() async {
    final prefs = await SharedPreferences.getInstance();
    userimage = await prefs.getString('userimage') ?? null;
    notifyListeners();
  }

  Future<void> storeindex(int imageget) async {
    imageindex = imageget;
    notifyListeners();
  }
}
