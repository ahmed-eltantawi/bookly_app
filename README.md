# 📚 Bookly App

A Flutter application for browsing books, viewing best sellers, and exploring book details — built with Clean Architecture principles.

---

## 🚀 Features

- **Splash Screen** — Animated entry screen before navigating to Home
- **Home Screen** — Displays a horizontal list of new books and a scrollable Best Seller section
- **Book Details Screen** — Full book info including cover, author, rating, price, and similar books
- **Search Screen** — Search for books by title or author

---

## 🏗️ Project Structure

```
lib/
├── main.dart
├── core/
│   ├── errors/
│   │   └── failure.dart
│   ├── use_cases/
│   │   └── use_case.dart
│   ├── utils/
│   │   ├── api_services.dart
│   │   ├── app_routers.dart
│   │   ├── app_styles.dart
│   │   ├── constants.dart
│   │   ├── font_assets.dart
│   │   ├── images_assets.dart
│   │   └── functions/
│   │       └── save_books_data.dart
│   └── widgets/
│       └── custom_button.dart
│
└── features/
    ├── splash/
    │   └── presentation/
    │       ├── manager/
    │       └── views/
    │           ├── splash_view.dart
    │           └── widgets/
    │               ├── sliding_text.dart
    │               └── splash_view_body.dart
    │
    ├── search_book/
    │   └── presentation/
    │       ├── manager/
    │       └── views/
    │           ├── search_book_view.dart
    │           └── widgets/
    │               ├── search_book_view_body.dart
    │               └── search_view_app_bar.dart
    │
    └── home/
        ├── data/
        │   ├── data_sources/
        │   │   ├── home_local_data_source.dart
        │   │   └── home_remote_data_source.dart
        │   ├── models/
        │   │   └── book_model/
        │   │       ├── access_info.dart
        │   │       ├── book_model.dart
        │   │       ├── epub.dart
        │   │       ├── image_links.dart
        │   │       ├── industry_identifier.dart
        │   │       ├── panelization_summary.dart
        │   │       ├── pdf.dart
        │   │       ├── reading_modes.dart
        │   │       ├── sale_info.dart
        │   │       ├── search_info.dart
        │   │       └── volume_info.dart
        │   └── repo/
        │       └── home_repo_impl.dart
        │
        ├── domain/
        │   ├── entities/
        │   │   ├── book_entitiy.dart
        │   │   └── book_entitiy.g.dart
        │   ├── repo/
        │   │   └── home_repo.dart
        │   └── use_cases/
        │       ├── fetch_best_seller_books_use_case.dart
        │       └── fetch_news_books.dart
        │
        └── presentation/
            ├── manager/
            │   ├── fetch_best_seller_books_cubit/
            │   │   ├── fetch_best_seller_books_cubit.dart
            │   │   └── fetch_best_seller_books_state.dart
            │   └── fetch_news_books_cubit/
            │       ├── fetch_news_books_cubit.dart
            │       └── fetch_news_books_state.dart
            ├── views/
            │   ├── book_details_view/
            │   │   ├── book_details_view.dart
            │   │   └── widgets/
            │   │       ├── book_action.dart
            │   │       ├── book_details_section.dart
            │   │       ├── book_details_view_app_bar.dart
            │   │       ├── book_details_view_body.dart
            │   │       └── smeller_books_section.dart
            │   └── home_view/
            │       ├── home_view.dart
            │       └── widgets/
            │           ├── best_seller_books.dart
            │           ├── best_seller_books_list_view.dart
            │           ├── best_seller_list_view_item.dart
            │           ├── book_list_view.dart
            │           ├── custom_app_bar.dart
            │           └── home_view_body.dart
            └── widgets/
                ├── book_rate_widget.dart
                └── custom_book_image.dart
```

---

## 🏠 Home Feature — Detailed Structure

```
features/
├──home/
│
├── domain/
│   ├── entities/
│   │   └── book_entitiy.dart          # BookEntity model (image, author, title, rate, price)
│   │
│   ├── repo/
│   │   └── home_repo.dart             # Abstract HomeRepo interface
│   │                                  #   - fetchBestSellerBooks()
│   │                                  #   - fetchNewsBooks()
│   │
│   └── use_cases/
│       ├── fetch_best_seller_books_use_case.dart   # Fetches best seller books via HomeRepo
│       └── fetch_news_books.dart                   # Fetches new/latest books via HomeRepo
│
└── presentation/
    │
    ├── manager/                        # (State management — Cubits/Blocs go here)
    │
    └── views/
        │
        ├── home_view/
        │   ├── home_view.dart          # Root HomeView scaffold (AppBar + Body)
        │   └── widgets/
        │       ├── home_view_body.dart             # CustomScrollView: BookListView + BestSellerBooks
        │       ├── custom_app_bar.dart             # App bar with logo + search icon
        │       ├── book_list_view.dart             # Horizontal ListView of new books
        │       ├── best_seller_books.dart          # "Best Seller" section header + list
        │       ├── best_seller_books_list_view.dart # Scrollable list of best seller items
        │       └── best_seller_list_view_item.dart # Single best seller book row item
        │
        └── book_details_view/
            ├── book_details_view.dart  # Root BookDetailsView scaffold
            └── widgets/
                ├── book_details_view_body.dart     # Main body layout
                ├── book_details_view_app_bar.dart  # Details screen app bar
                ├── book_details_section.dart       # Book cover image + title + author
                ├── book_action.dart                # Free / Buy buttons with price
                └── smeller_books_section.dart      # "You might also like" books row
│
└── widgets/                            # Shared widgets used across home views
    ├── book_rate_widget.dart           # Star rating display widget
    └── custom_book_image.dart          # Cached/network book cover image widget
```

---

## 📐 Architecture

This project follows **Clean Architecture** layered as:

| Layer            | Responsibility                                            |
| ---------------- | --------------------------------------------------------- |
| **Domain**       | Business logic: Entities, Repository contracts, Use Cases |
| **Data**         | API calls, models, repository implementations             |
| **Presentation** | UI: Views, Widgets, State Management (manager)            |

### Data Flow

```
UI (Widget)
   ↓  triggers
UseCase
   ↓  calls
HomeRepo (abstract)
   ↓  implemented by
HomeRepoImpl (Data Layer)
   ↓  fetches from
Remote API (Google Books / similar)
```

---

## 📦 Dependencies

| Package                | Purpose                                     |
| ---------------------- | ------------------------------------------- |
| `go_router`            | Declarative routing                         |
| `dartz`                | Functional programming (`Either`, `Option`) |
| `flutter_svg`          | SVG image rendering                         |
| `font_awesome_flutter` | Icon set (search icon, etc.)                |

---

## 🔗 Routes

| Route Path         | Screen            |
| ------------------ | ----------------- |
| `/`                | `SplashView`      |
| `/HomeView`        | `HomeView`        |
| `/BookDetailsView` | `BookDetailsView` |
| `/SearchBookView`  | `SearchBookView`  |

---

## 🎨 Fonts

- **Montserrat** — Regular & SemiBold (UI labels, titles)
- **GT Sectra Fine** — Regular (decorative / editorial text)

---

## 🖼️ BookEntity

```dart
class BookEntity {
  final String image;   // Cover image URL
  final String author;  // Author name
  final String title;   // Book title
  final num rate;       // Rating (0.0 – 5.0)
  final num price;      // Price (0 = Free)
}
```

---

## 🛠️ Getting Started

```bash
# Install dependencies
flutter pub get

# Run the app
flutter run
```
