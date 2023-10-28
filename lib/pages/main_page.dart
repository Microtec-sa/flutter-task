import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mostafa_gamil/models/main_page_data.dart';

import '../models/app_config.dart';
import '../models/movieCredit.dart';
import '../services/movie_service.dart';
import '../widgets/movie_tile.dart';
import '../models/search_category.dart';
import '../models/movie.dart';
import '../controllers/main_page_data_controller.dart';

final mainPageDataControllerProvider =
    StateNotifierProvider<MainPageDataController, MainPageData>((ref) {
  return MainPageDataController();
});

final selectedMoviePosterURLProvider = StateProvider<String?>((ref) {
  return null;
});

class MainPage extends ConsumerWidget {
  double? _deviceHeight;
  double? _deviceWidth;

  late var _selectedMoviePosterURL;

  late MainPageDataController _mainPageDataController;
  late MainPageData _mainPageData;

  TextEditingController? _searchTextFieldController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    _mainPageDataController =
        ref.watch(mainPageDataControllerProvider.notifier);
    _mainPageData = ref.watch(mainPageDataControllerProvider);
    _selectedMoviePosterURL = ref.watch(selectedMoviePosterURLProvider);

    _searchTextFieldController = TextEditingController();

    _searchTextFieldController!.text = _mainPageData.searchText!;

    return _buildUI(context);
  }

  Widget _buildUI(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _backgroundWidget(),
            _foregroundWidgets(context),
          ],
        ),
      ),
    );
  }

  Widget _backgroundWidget() {
    if (_selectedMoviePosterURL != null) {
      return Container(
        height: _deviceHeight,
        width: _deviceWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(_selectedMoviePosterURL),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        ),
      );
    } else {
      return Container(
        height: _deviceHeight,
        width: _deviceWidth,
        color: Colors.black,
      );
    }
  }

  Widget _foregroundWidgets(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, _deviceHeight! * 0.02, 0, 0),
      width: _deviceWidth! * 0.90,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarWidget(),
          Container(
            height: _deviceHeight! * 0.83,
            padding: EdgeInsets.symmetric(vertical: _deviceHeight! * 0.01),
            child: _moviesListViewWidget(context),
          )
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return Container(
      height: _deviceHeight! * 0.08,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _searchFieldWidget(),
          _categorySelectionWidget(),
        ],
      ),
    );
  }

  Widget _searchFieldWidget() {
    final _border = InputBorder.none;
    return Container(
      width: _deviceWidth! * 0.50,
      height: _deviceHeight! * 0.05,
      child: TextField(
        controller: _searchTextFieldController,
        onSubmitted: (_input) =>
            _mainPageDataController.updateTextSearch(_input),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            focusedBorder: _border,
            border: _border,
            prefixIcon: Icon(Icons.search, color: Colors.white24),
            hintStyle: TextStyle(color: Colors.white54),
            filled: false,
            fillColor: Colors.white24,
            hintText: 'Search....'),
      ),
    );
  }

  Widget _categorySelectionWidget() {
    return DropdownButton(
      dropdownColor: Colors.black38,
      value: _mainPageData.searchCategory,
      icon: Icon(
        Icons.menu,
        color: Colors.white24,
      ),
      underline: Container(
        height: 1,
        color: Colors.white24,
      ),
      onChanged: (dynamic _value) => _value.toString().isNotEmpty
          ? _mainPageDataController.updateSearchCategory(_value)
          : null,
      items: [
        DropdownMenuItem(
          child: Text(
            SearchCategory.popular,
            style: TextStyle(color: Colors.white),
          ),
          value: SearchCategory.popular,
        ),
        DropdownMenuItem(
          child: Text(
            SearchCategory.upcoming,
            style: TextStyle(color: Colors.white),
          ),
          value: SearchCategory.upcoming,
        ),
        DropdownMenuItem(
          child: Text(
            SearchCategory.none,
            style: TextStyle(color: Colors.white),
          ),
          value: SearchCategory.none,
        ),
      ],
    );
  }

  Widget _moviesListViewWidget(BuildContext context) {
    final List<Movie> _movies = _mainPageData.movies!;

    if (_movies.length != 0) {
      return NotificationListener(
        onNotification: (dynamic _onScrollNotification) {
          if (_onScrollNotification is ScrollEndNotification) {
            final before = _onScrollNotification.metrics.extentBefore;
            final max = _onScrollNotification.metrics.maxScrollExtent;
            if (before == max) {
              _mainPageDataController.getMovies();
              return true;
            }
            return false;
          }
          return false;
        },
        child: ListView.builder(
          itemCount: _movies.length,
          itemBuilder: (BuildContext _context, int _count) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: _deviceHeight! * 0.01, horizontal: 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsScreen(
                        movie: _movies[_count],
                      ),
                    ),
                  );
                },
                child: MovieTile(
                  movie: _movies[_count],
                  height: _deviceHeight! * 0.20,
                  width: _deviceWidth! * 0.85,
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      );
    }
  }
}

class MovieDetailsScreen extends StatefulWidget {
  final Movie movie;

  MovieDetailsScreen({required this.movie});

  @override
  _MovieDetailsScreenState createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  final MovieService movieService = GetIt.instance.get<MovieService>();
  final AppConfig appConfig = GetIt.instance.get<AppConfig>();
  double? _deviceHeight;
  double? _deviceWidth;
  MovieCredits? credits;

  @override
  void initState() {
    super.initState();
    fetchMovieCredits();
  }

  Future<void> fetchMovieCredits() async {
    try {
      credits = await movieService.getMovieCredits(
          widget.movie.id, appConfig.ACCESS_TOKEN);
      setState(() {});
    } catch (e) {
      // Handle errors
      print('Error fetching movie credits: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.movie.name!),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: _deviceHeight! * 0.70,
                width: _deviceWidth! * 0.95,
                child: Image.network(widget.movie.posterURL()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ${widget.movie.name}',
                    style: TextStyle(
                        fontSize: _deviceWidth! * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: _deviceWidth! * 0.02,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('${widget.movie.rating}'),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' ${widget.movie.releaseDate}',
                      style: TextStyle(
                        fontSize: _deviceWidth! * 0.015,
                      )),
                  SizedBox(
                    width: _deviceWidth! * 0.02,
                  ),
                  Text('Language: ${widget.movie.language}',
                      style: TextStyle(
                        fontSize: _deviceWidth! * 0.015,
                      )),
                  SizedBox(
                    width: _deviceWidth! * 0.02,
                  ),
                  Text('Adult: ${widget.movie.isAdult}',
                      style: TextStyle(
                        fontSize: _deviceWidth! * 0.015,
                      )),
                ],
              ),
              SizedBox(height: _deviceHeight! * 0.02),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: _deviceWidth! * 0.95,
                child: Text(
                  '${widget.movie.description}',
                  style: TextStyle(
                      fontSize: _deviceWidth! * 0.02,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: _deviceHeight! * 0.02),
              Text(
                'Cast:',
                style: TextStyle(
                    fontSize: _deviceWidth! * 0.03,
                    fontWeight: FontWeight.bold),
              ),
              _buildCastList(),
              SizedBox(height: _deviceHeight! * 0.02),
              Text(
                'Crew:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              _buildCrewList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCastList() {
    return credits != null
        ? SizedBox(
            height: _deviceHeight! * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: credits!.cast.length,
              itemBuilder: (context, index) {
                final castMember = credits!.cast[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            NetworkImage(castMember.profileURL() ?? ''),
                      ),
                      SizedBox(height: 10),
                      Text(
                        castMember.name ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        castMember.character ?? '',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        : Center(child: CircularProgressIndicator());
  }

  Widget _buildCrewList() {
    return credits != null
        ? SizedBox(
            height: _deviceHeight! * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: credits!.crew.length,
              itemBuilder: (context, index) {
                final crewMember = credits!.crew[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            NetworkImage(crewMember.profileURL() ?? ''),
                      ),
                      SizedBox(height: 10),
                      Text(
                        crewMember.name ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        crewMember.job ?? '',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
