# 🎮 Flutter Movies App

Una aplicación en Flutter para listar películas populares y ver sus detalles, utilizando The Movie Database (TMDB) API. Implementa Clean Architecture y maneja datos de forma local y remota con Hive.

## 📌 Características
- Listado de películas populares obtenidas desde TMDB API.
- Vista detallada de cada película con información relevante.
- Gestión de estados con Riverpod.
- Manejo de errores y almacenamiento en caché con Hive.
- Arquitectura modular basada en Clean Architecture.

## 🏷️ Arquitectura
La aplicación sigue la **Clean Architecture**, dividiendo la lógica en capas:
- **Presentación**: UI y manejo de estados con Riverpod.
- **Dominio**: Casos de uso y abstracciones de repositorios.
- **Datos**: Implementaciones de repositorios con data sources remotos y locales.

### 📚 Estructura de Carpetas
```
lib/
 ├── core/
 │   ├── error/
 │   ├── network/
 │   ├── usecase/
 │   ├── util/
 │   ├── constants.dart
 │
 ├── features/
 │   ├── movies/
 │   │   ├── data/
 │   │   │   ├── datasources/
 │   │   │   │   ├── movie_local_data_source.dart
 │   │   │   │   ├── movie_local_datasource_impl.dart
 │   │   │   │   ├── movie_remote_data_source.dart
 │   │   │   │   ├── movie_remote_datasource_impl.dart
 │   │   │   ├── models/
 │   │   │   │   ├── movie_model.dart
 │   │   │   │   ├── movie_model.freezed.dart
 │   │   │   │   ├── movie_model.g.dart
 │   │   │   │   ├── movie_response.dart
 │   │   │   │   ├── movie_response.freezed.dart
 │   │   │   │   ├── movie_response.g.dart
 │   │   │   ├── repositories/
 │   │   │   │   ├── movie_repository_impl.dart
 │   │   ├── domain/
 │   │   │   ├── entities/
 │   │   │   │   ├── movie.dart
 │   │   │   ├── repositories/
 │   │   │   │   ├── movie_repository.dart
 │   │   │   ├── usecases/
 │   │   │   │   ├── get_movies.dart
 │   │   ├── presentation/
 │   │   │   ├── pages/
 │   │   │   │   ├── movie_detail_screen.dart
 │   │   │   │   ├── movies_screen.dart
 │   │   │   ├── providers/
 │   │   │   │   ├── movie_provider.dart
 │   │   │   ├── widgets/
 │   │   │   │   ├── movie_backdrop.dart
 │   │   │   │   ├── movie_info.dart
 │   │   │   │   ├── movie_poster.dart
 │
 ├── l10n/
 │   ├── app_en.arb
 │   ├── app_es.arb
 │
 ├── main.dart
```

## 💽 Fuentes de Datos
- **Remoto**: The Movie Database (TMDB) API.
- **Local**: Hive para almacenamiento en caché y persistencia de datos.

## 🛠️ Configuración de API Key
1. Crear un archivo `.env` en la carpeta assets del proyecto.
2. Agregar la clave de API:
```sh
TMDB_API_KEY=tu_api_key
```
3. Asegurar que el archivo `.env` está en el `.gitignore`.

## 🚀 Instalación y Ejecución
```sh
git clone https://github.com/tu_usuario/flutter_movies.git
cd flutter_movies
flutter pub get
flutter run
```

## 🛠️ Dependencias
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.6.1
  dio: ^5.8.0+1
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  get_it: ^8.0.3
  json_serializable: ^6.9.4
  flutter_dotenv: ^5.2.1
```

## 📝 Licencia
Este proyecto está bajo la licencia MIT.
