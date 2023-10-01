import '../../presentation/screens/buttons/button_screen.dart';
import '../../presentation/screens/cards/cards_screen.dart';

class AppRoutes {
  static final appRoutes = {
    '/botoes': (context) => const ButtonsScreen(),
    '/cards': (context) => const CardsScreen(),
  };
}
