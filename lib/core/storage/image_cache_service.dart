import 'dart:typed_data';
import 'package:hive_flutter/hive_flutter.dart';

class ImageCacheService {
  static const String _boxName = 'imageCache';

  static late Box<List<int>> _imageBox;

  static Future<void> initialize() async {
    await Hive.initFlutter();
    _imageBox = await Hive.openBox(_boxName);
  }

  static Future<void> cacheImage(String key, List<int> imageData) async {
    await _imageBox.put(key, imageData);
  }

  static Uint8List? getCachedImage(String key) {
    final bytes = _imageBox.get(key);
    return bytes != null ? Uint8List.fromList(bytes) : null;
  }
}
