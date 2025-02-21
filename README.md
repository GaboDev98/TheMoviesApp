# 📽️ Flutter Movies App

Una aplicación en Flutter para listar películas y ver sus detalles, implementando Clean Architecture y gestionando datos de forma local y remota mediante data sources.

## 📌 Características
- Listado de películas populares
- Vista detallada de cada película
- Gestión de datos desde una API remota y almacenamiento local
- Implementación de Clean Architecture con separación en capas

## 🏗️ Arquitectura
La aplicación sigue la **Clean Architecture**, separando la lógica en:
- **Presentación**: UI y manejo de estados con Provider o Riverpod
- **Dominio**: Casos de uso e interfaces de repositorios
- **Datos**: Implementaciones de los repositorios con data sources remotos y locales

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
- **Remoto**: API de películas (Ejemplo: The Movie Database API)
- **Local**: SQLite o Hive para almacenamiento en caché

## 🚀 Instalación
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
  provider: ^6.0.5
  dio: ^5.0.0
  hive: ^2.2.3
  get_it: ^7.2.0
  json_serializable: ^6.6.1
```

## 📄 Licencia
Este proyecto está bajo la licencia MIT.

