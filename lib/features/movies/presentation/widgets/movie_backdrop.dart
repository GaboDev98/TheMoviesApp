import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:movies/core/storage/image_cache_service.dart';

class MovieBackdrop extends StatefulWidget {
  final String? backdropPath;
  final int movieId;

  const MovieBackdrop({super.key, required this.backdropPath, required this.movieId});

  @override
  State<MovieBackdrop> createState() => _MovieBackdropState();
}

class _MovieBackdropState extends State<MovieBackdrop> {
  Uint8List? _cachedImage;
  bool _hasInternet = true;

  @override
  void initState() {
    super.initState();
    _loadCachedImage();
    _checkInternetConnection();
  }

  void _loadCachedImage() {
    if (widget.backdropPath != null) {
      _cachedImage = ImageCacheService.getCachedImage(widget.backdropPath!);
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
    return Hero(
      tag: widget.movieId,
      child: _cachedImage != null
          ? Image.memory(
              _cachedImage!,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => _placeholder(),
            )
          : _hasInternet && widget.backdropPath != null
              ? Image.network(
                  'https://image.tmdb.org/t/p/w780${widget.backdropPath}',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => _placeholder(),
                )
              : _placeholder(),
    );
  }

  Widget _placeholder() {
    return Container(
      height: 200,
      color: Colors.grey[900],
      child: const Center(
        child: Icon(Icons.broken_image, size: 50, color: Colors.white),
      ),
    );
  }
}
