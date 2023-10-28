import 'dart:convert';

// Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

// Services
import '../services/http_service.dart';
import '../services/movie_service.dart';

// Model
import '../models/app_config.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashPage({
    Key? key,
    required this.onInitializationComplete,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then(
      (_) => _setup(context).then(
        (_) => widget.onInitializationComplete(),
      ),
    );
  }

  Future<void> _setup(BuildContext _context) async {
    final getIt = GetIt.instance;

    // Load configuration from JSON
    final configFile = await rootBundle.loadString('assets/config/main.json');
    final configData = jsonDecode(configFile);

    // Create an AppConfig instance with the retrieved data
    final AppConfig appConfig = AppConfig(
      BASE_API_URL: configData['BASE_API_URL'],
      BASE_IMAGE_API_URL: configData['BASE_IMAGE_API_URL'],
      API_KEY: configData['API_KEY'],
      ACCESS_TOKEN: configData['ACCESS_TOKEN'],
    );

    // Register AppConfig and HTTPService as singletons in GetIt
    getIt.registerSingleton<AppConfig>(appConfig);
    getIt.registerSingleton<HTTPService>(HTTPService());

    // Register MovieService and set the access token
    final MovieService movieService = MovieService();
    movieService.setAccessToken(appConfig.ACCESS_TOKEN);
    getIt.registerSingleton<MovieService>(movieService);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flickd',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/microtecsaudi1_logo.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
