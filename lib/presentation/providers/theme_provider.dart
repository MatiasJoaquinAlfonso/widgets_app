import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutables (nunca se puede cambiar)
final colorListProvider = Provider((ref) => colorList);

//Un simple booleano
final isDarkmodeProvider = StateProvider((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Una objeto de tipo AppTheme (Custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //El state o estado es igual a una nueva instancia del AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
