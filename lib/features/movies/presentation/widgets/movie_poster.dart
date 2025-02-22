import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:movies/core/storage/image_cache_service.dart';

class MoviePoster extends StatefulWidget {
  final String? posterPath;
  final VoidCallback onTap;

  const MoviePoster({super.key, required this.posterPath, required this.onTap});

  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  Uint8List? _cachedImage;
  bool _hasInternet = true;

  @override
  void initState() {
    super.initState();
    _loadCachedImage();
    _checkInternetConnection();
  }

  void _loadCachedImage() {
    if (widget.posterPath != null) {
      _cachedImage = ImageCacheService.getCachedImage(widget.posterPath!);
    }
  }

  Future<void> _checkInternetConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      _hasInternet = connectivityResult != ConnectivityResult.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: _cachedImage != null
            ? Image.memory(
                _cachedImage!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 50),
              )
            : _hasInternet && widget.posterPath != null
                ? Image.network(
                    'https://image.tmdb.org/t/p/w500${widget.posterPath}',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.image_not_supported, size: 50),
                  )
                : const Icon(Icons.image_not_supported, size: 50),
      ),
    );
  }
}
