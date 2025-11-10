# Flutter Sports App

A Flutter application for viewing live sports match scores and updates, built with Clean Architecture and Riverpod.

## About The Project

This project is a sample sports application that demonstrates:
-   Fetching a list of matches from a mock data source.
-   Displaying live, scheduled, and finished matches.
-   Simulating real-time score updates for live matches.
-   Navigating between a match list and match details.
-   A scalable project structure using Clean Architecture.
-   State management with Riverpod.
-   Routing with GoRouter.

## Features

-   **Live Match List**: View a list of matches fetched from a mock API.
-   **Real-time Updates**: See live score changes on the match list screen.
-   **Match Details**: Tap on a match to view its dedicated details screen with live updates.
-   **Pull to Refresh**: Refresh the list of matches.
-   **Environment Flavors**: Separate configurations for `dev` and `prod` environments.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
-   Node.js & npm (for the mock API): [https://nodejs.org/](https://nodejs.org/)

### 1. Set up the Mock API

The project includes a mock API server to simulate fetching data and receiving live updates.

```sh
# Navigate to the mock API directory
cd mock-sports-api

# Install dependencies
npm install

# Run the server
node ../server.js
```
The REST API will be available at `http://localhost:4000` and the WebSocket server at `ws://localhost:4001`.

### 2. Set up the Flutter App

```sh
# Get Flutter packages
flutter pub get

# Generate code for models
flutter pub run build_runner build --delete-conflicting-outputs
```

### 3. Run the Application

The application is set up with different entry points for development and production.

```sh
# Run the development version
flutter run lib/main_dev.dart

# Run the production version
flutter run lib/main_prod.dart
```

## Project Structure

The project follows the principles of **Clean Architecture**, separating the code into three main layers:

-   **Data**: Contains the data sources (remote and local) and repository implementations.
-   **Domain**: Includes the core business logic, entities, and repository contracts (interfaces).
-   **Presentation**: Holds the UI-related logic, including screens, widgets, and state management providers (Riverpod).

A script [`create_clean_riverpod_structure.sh`](create_clean_riverpod_structure.sh) is included to quickly scaffold this structure for new features.

## Key Packages

-   **State Management**: [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
-   **Routing**: [go_router](https://pub.dev/packages/go_router)
-   **Code Generation**: [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable)
-   **Networking**: [dio](https://pub.dev/packages/dio)
-   **Linting**: [flutter_lints](https://pub.dev/packages/flutter_lints)
