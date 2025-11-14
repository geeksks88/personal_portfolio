// lib/app_state.dart
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:html' as html; // used only on web

class AppState extends ChangeNotifier {
  final SharedPreferences _prefs;
  String _selectedSection;
  double _scrollOffset;
  Timer? _debounce;

  static const _keySection = 'selectedSection';
  static const _keyOffset = 'scrollOffset';

  AppState._(this._prefs, this._selectedSection, this._scrollOffset);

  String get selectedSection => _selectedSection;
  double get scrollOffset => _scrollOffset;

  static Future<AppState> load() async {
    final prefs = await SharedPreferences.getInstance();
    String initialSection = prefs.getString(_keySection) ?? 'home';
    double initialOffset = prefs.getDouble(_keyOffset) ?? 0.0;

    // If hash present on web, prefer it (so shared links override saved prefs)
    if (kIsWeb) {
      final hash = html.window.location.hash; // e.g. "#/projects"
      if (hash.isNotEmpty) {
        final clean = hash.replaceFirst('#', '').replaceFirst('/', '');
        if (clean.isNotEmpty) initialSection = clean;
      }
    }

    return AppState._(prefs, initialSection, initialOffset);
  }

  void setSelectedSection(String s) {
    if (_selectedSection == s) return;
    _selectedSection = s;
    _prefs.setString(_keySection, s);

    if (kIsWeb) {
      // update URL hash for refresh/share
      try {
        html.window.location.hash = '/$s';
      } catch (_) {}
    }

    notifyListeners();
  }

  // store scroll offset (debounced)
  void updateScrollOffset(double offset) {
    _scrollOffset = offset;
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _prefs.setDouble(_keyOffset, _scrollOffset);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
