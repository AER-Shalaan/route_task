# Route Task - Flutter Application

## Overview

This project is a Flutter application designed to display a list of products fetched from an API. The application follows clean architecture principles and employs the MVVM (Model-View-ViewModel) pattern, repository pattern, and dependency injection to ensure a scalable and maintainable codebase.
## Features

- **Clean Architecture**: Ensures separation of concerns, facilitating testing and maintenance.
- **MVVM Pattern**: Manages UI logic separately from business logic, promoting a clear separation of responsibilities.
- **Repository Pattern**: Abstracts the data source, providing a consistent API for data access and improving code modularity.
- **Dependency Injection**: Manages dependencies efficiently using a DI framework, enhancing testability and modularity.

## Technologies Used

- **Flutter**: Framework for building the UI.
- **Dio**: HTTP client for making API requests.
- **Bloc**: State management solution using the BLoC pattern.
- **GetIt**: Dependency injection framework.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/AER-Shalaan/route_courses.git
    ```

2. Navigate to the project directory:

    ```bash
    cd route_courses
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the application:

    ```bash
    flutter run
    ```

## Project Structure

The project structure follows the principles of clean architecture:

```
lib/
|-- config/
|   |-- theme/
|-- core/
|   |-- API/
|   |-- DI/
|   |-- utils/
|   |-- constants.dart
|   |-- blocObserver.dart
|-- data/
|   |-- datasource_contract/
|   |-- datasource_impl/
|   |-- model/
|   |-- repository_impl/
|-- domain/
|   |-- entities/
|   |-- repository_contracts/
|   |-- use_cases/
|-- presentation/
|   |-- home/
|      |-- tabs/
|         |-- home_tab/
|            |-- viewmodel/
|            |-- widgets/
|            |-- home_tab.dart
|         |-- home_screen.dart
|-- myapp.dart
|-- main.dart
```

- **config**: Contains configuration files and themes.
- **core**: Contains core functionalities such as API handling, dependency injection, utilities, and constants.
- **data**: Contains data source contracts, implementations, models, and repository implementations.
- **domain**: Contains entities, repository contracts, and use cases.
- **presentation**: Contains UI elements, including views, view models, and widgets.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

