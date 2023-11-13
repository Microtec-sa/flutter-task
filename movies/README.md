# Movies

## Movies app is flutter app that shows the movies using search title and show the details of the movie

The application has two screens:
First screen is the search screen that shows the movies using search title. 
* When user write character in the search bar, the app will show the movies that match the title.
* The user can click on the movie to show the details of the movie.

Second screen is the details screen that shows the details of the movie.
* The details screen shows the title, poster, synopsis and cast of the movie.

## Architecture and Libraries that used in the app
* The app is built in clean architecture.
* The app is built using Bloc statemanagment.
* The app is built using Dio for network calls.
* The app is built using GetIt for dependency injection.
* The app has hero animation between the two screens.
* The app has shimmer effect when loading the data using fancy_shimmer_image library.
* The app caches the images using fancy_shimmer_image library.
* The app is responsive on all devices using flutter_screenutil library.
* Tha app uses dartz library for functional programming.

## How to run the app
* Clone the repo.
* Open movies folder in android studio or visual studio code.
* Run `flutter pub get` to install the dependencies.
* Run the app using `flutter run` command.
