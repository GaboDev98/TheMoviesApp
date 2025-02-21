# 🎬 Flutter Movies App

Una aplicación en Flutter para listar películas populares y ver sus detalles, utilizando The Movie Database (TMDB) API. Implementa Clean Architecture y maneja datos de forma local y remota.

## 📌 Características
- Listado de películas populares obtenidas desde TMDB API.
- Vista detallada de cada película con información relevante.
- Gestión de estados con Riverpod.
- Manejo de errores y almacenamiento en caché con Hive.
- Arquitectura modular basada en Clean Architecture.

## 🏗️ Arquitectura
La aplicación sigue la **Clean Architecture**, dividiendo la lógica en capas:
- **Presentación**: UI y manejo de estados con Riverpod.
- **Dominio**: Casos de uso y abstracciones de repositorios.
- **Datos**: Implementaciones de repositorios con data sources remotos y locales.

### 📂 Estructura de Carpetas
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
 │   │   │   │   ├── movie_remote_data_source.dart
 │   │   │   ├── models/
 │   │   │   ├── repositories/
 │   │   ├── domain/
 │   │   │   ├── entities/
 │   │   │   ├── repositories/
 │   │   │   ├── usecases/
 │   │   ├── presentation/
 │   │   │   ├── pages/
 │   │   │   ├── widgets/
 │
 ├── main.dart
```

## 📡 Fuentes de Datos
- **Remoto**: The Movie Database (TMDB) API.
- **Local**: Hive para almacenamiento en caché.

## 🔧 Configuración de API Key
1. Crear un archivo `.env` en la raíz del proyecto.
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
  get_it: ^8.0.3
  json_serializable: ^6.9.4
  flutter_dotenv: ^5.2.1
```

## 📄 Licencia
Este proyecto está bajo la licencia MIT.

