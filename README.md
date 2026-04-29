# 📚 Bookly App

A modern Flutter application designed for book lovers, built with a strong emphasis on **Clean Architecture** principles to ensure scalability, maintainability, and robust separation of concerns.

## 🎯 Architecture Goal

The primary objective of this project was to implement a rigorous **Clean Architecture** approach using Flutter. By dividing the application into distinct, decoupled layers, the codebase is highly testable, easy to navigate, and straightforward to expand. 

The project follows a feature-driven folder structure, where each feature (e.g., `home`, `search_book`) contains its own independent architecture:

*   **`domain/` (The Core):** Contains the core business logic, entities, and repository interfaces. It is completely independent of any other layer, ensuring that business rules remain untouched by UI or external data source changes.
*   **`data/` (The Data Layer):** Responsible for fetching, caching, and mapping data. It contains the data sources (remote HTTP calls, local storage), models, and the actual implementations of the repository interfaces defined in the domain layer.
*   **`presentation/` (The UI Layer):** Handles the user interface, routing, and state management. It communicates with the domain layer to trigger use cases or fetch data, reacting efficiently to state changes.

### Clean Architecture Benefits Achieved:
*   **Separation of Concerns:** UI code is completely decoupled from network and database logic.
*   **Testability:** Each layer can be tested independently using mocks for its respective dependencies.
*   **Flexibility:** Switching from one state management solution or network client to another is localized and won't break the entire app.
*   **Robust Error Handling:** Utilizing functional programming techniques to handle failures and successes explicitly.

## ✨ Features

*   Browse a wide selection of books from an integrated book API.
*   Search for specific books, authors, or categories.
*   Detailed view of book descriptions, covers, ratings, and previews.
*   Clean, responsive UI with custom typography.

## 🛠️ Tech Stack & Dependencies

This application utilizes a modern Flutter stack tailored for clean architecture:

*   **Framework:** [Flutter](https://flutter.dev/) (SDK ^3.10.8)
*   **State Management:** `flutter_bloc`
*   **Dependency Injection:** `get_it`
*   **Functional Programming:** `dartz` (for structured Error/Success handling using the `Either` monad)
*   **Networking:** `dio`
*   **Local Storage / Caching:** `hive` & `hive_flutter`
*   **Routing:** `go_router`
*   **Assets & UI:** `flutter_svg`, `font_awesome_flutter`, `cupertino_icons`
*   **Fonts:** Custom typography using `Montserrat` and `GT Sectra Fine`.

## 📂 Project Structure Example

A typical feature inside `lib/features/` is structured precisely as follows:

```text
feature_name/
├── data/
│   ├── data_sources/      # Remote/Local data fetchers
│   ├── models/            # JSON serialization and data models
│   └── repos/             # Concrete implementations of Domain repositories
├── domain/
│   ├── entities/          # Pure Dart business objects
│   ├── repos/             # Abstract Repository interfaces
│   └── use_cases/         # Specific application actions
└── presentation/
    ├── manager/           # BLoC / Cubit state managers
    └── views/             # UI Widgets, Screens, and Components
```

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd bookly_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate required files (for Hive and build runner)**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```
