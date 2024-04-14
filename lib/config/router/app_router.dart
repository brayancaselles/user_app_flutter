import 'package:go_router/go_router.dart';
import 'package:user_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/users',
  routes: [
    GoRoute(
      path: '/users',
      name: UsersScreen.name,
      builder: (context, state) => const UsersScreen(),
    ),
    GoRoute(
      path: '/user/:id',
      name: UserDetailScreen.name,
      builder: (context, state) => UserDetailScreen(
          userId: int.parse(state.pathParameters['id'] ?? '0')),
    ),
  ],
);
