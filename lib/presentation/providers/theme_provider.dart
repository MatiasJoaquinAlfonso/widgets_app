import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// Listado de colores inmutables (nunca se puede cambiar)
final colorListProvider = Provider((ref) => colorList);

//Un simple booleano 
final isDarkmodeProvider = StateProvider((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);