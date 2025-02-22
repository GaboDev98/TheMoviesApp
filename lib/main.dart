import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies/core/storage/image_cache_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movies/features/movies/domain/entities/movie.dart';
import 'package:movies/features/movies/data/models/movie_model.dart';
import 'package:movies/features/movies/presentation/pages/movies_screen.dart';
import 'package:movies/features/movies/presentation/pages/movie_detail_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/.env");

  await Hive.initFlutter();
  Hive.registerAdapter(MovieModelAdapter());
  await ImageCacheService.initialize();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MoviesScreen(),
        routes: [
          GoRoute(
            path: 'detail_movie',
            builder: (context, state) {
              final movie = state.extra;
              if (movie is! Movie) {
                return const Scaffold(
                  body: Center(child: Text('Error: Película no encontrada')),
                );
              }
              return MovieDetailScreen(movie: movie);
            },
          ),
        ],
      ),
    ],
  );
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      routerConfig: router,
    );
  }
}
