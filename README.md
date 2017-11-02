# Whitbread

Single page app that search and display the most popular places for a given place and subject. (e.g London, Hotels)

## Technology

AngularJs, CoffeeScript, Karma, Bootstrap, Angular UI Bootstrap, GulpJS, Less, Jasmine and BrowserSync

## Getting Started

In your terminal
```
git clone git@github.com:hedudelgado/whitbread.git
```
```
cd whitbread
```

### Installing

```
npm install && bower install
```
```
gulp build
```
```
gulp serve
```

## Running the tests

```
gulp test
```

# ANDigital Coding Exercise

This test is designed to provide a real-world scenario for you to autonomously complete to the best of your ability.

You are to complete as much as you see fit to [delight](http://andigital.com/who-we-are/#values) us. 
Please bare in mind this needs to be **production-ready code**.

**You are expected to spend around 2-4 hours on this test. This should give you enough time to come with a good, working solution.**

## Requirements

You will need to build a web application or API that integrates with the [Foursquare API](https://developer.foursquare.com/)
and allows you to search for a place by name and return the **recommended or popular** venues near that location.

You can display the results as you see fit, be it a properly formatted JSON with correct data structures or a web app.

## Rules

* [OK]  You will need to [sign up as a Foursquare developer](https://foursquare.com/developers/apps) and create an app in order to use their services.
* [OK]  You can use any language, platform, framework or libraries you think will get the job done.
* [OK]  Follow Agile coding principles, don't over-engineer!
* [OK]  Development best practices are followed.
* [OK]  We must be able to build and run your code without any errors (be it at compilation time or runtime).
* [OK]  Please submit your code by creating a repository on GitHub/GitLab/BitBucket and providing us with the link to the repo.
* [OK]  **You must check in your code at least once every 30mins.**
* [OK]  When you submit your code **you must send a summary (or have it as your README.md) explaining the approach you have taken.**

## Bonus Credit

* [OK]  Using a build tool to build the code and fetch dependencies.
* [OK]  Use a test runner to run the tests.
* [PLANNED]  Create a deployable artifact or deploy within a container.

## Improvements

* Test coverage
* Venues should be a component
* Add end to end tests
* Use states instead in the routeProvider
* Rework constants that must be secret, they were left into this repo due to the lack of time and the fact that its not VERY sensitive data, it should never be exposed to public
* Use Restangular instead of $http
* Improvement of the services
* Deployment
