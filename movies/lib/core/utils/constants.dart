class Constants {
  static const String apiKey = '15f1909a402bd41cd364f22c4653ff05';
  static const String apiReadAccessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNWYxOTA5YTQwMmJkNDFjZDM2NGYyMmM0NjUzZmYwNSIsInN1YiI6IjViMmE4YTM2MGUwYTI2NWZmZjAwNmE5YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.mXAVfG7orN2_iqqFOblVW1-70ETRABW0sgn739h37rQ';
  static const baseUrl = 'https://api.themoviedb.org/3/';
  static const String moviesUrl = '${baseUrl}search/movie';
  static const String castUrl = '${baseUrl}movie/';
  static const String movieImgBaseUrl = 'https://image.tmdb.org/t/p/';

  static const Map<int, dynamic> genres = {
    28: "Action",
    12: "Adventure",
    16: "Animation",
    35: "Comedy",
    80: "Crime",
    99: "Documentary",
    18: "Drama",
    10751: "Family",
    14: "Fantasy",
    36: "History",
    27: "Horror",
    10402: "Music",
    9648: "Mystery",
    10749: "Romance",
    878: "Science Fiction",
    10770: "TV Movie",
    53: "Thriller",
    10752: "War",
    37: "Western"
  };
}
