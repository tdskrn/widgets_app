import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    name: HomeScreen.name,
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: ButtonsScreen.name,
    path: '/botoes',
    builder: (context, state) => const ButtonsScreen(),
  ),
  GoRoute(
    name: CardsScreen.name,
    path: '/cards',
    builder: (context, state) => const CardsScreen(),
  ),
  GoRoute(
    name: ProgressScreen.name,
    path: '/progress',
    builder: (context, state) => const ProgressScreen(),
  ),
  GoRoute(
    name: SnackBarScreen.name,
    path: '/snackbar-screen',
    builder: (context, state) => const SnackBarScreen(),
  ),
  GoRoute(
    name: AnimatedScreen.name,
    path: '/animated-screen',
    builder: (context, state) => const AnimatedScreen(),
  ),
  GoRoute(
    name: UiControlsScreen.name,
    path: '/ui-controls-screen',
    builder: (context, state) => const UiControlsScreen(),
  ),
  GoRoute(
    name: AppTutorialScreen.name,
    path: '/app-tutorial-screen',
    builder: (context, state) => const AppTutorialScreen(),
  ),
  GoRoute(
    name: InfiniteScrollScreen.name,
    path: '/infinite-scroll-screen',
    builder: (context, state) => const InfiniteScrollScreen(),
  ),
]);
