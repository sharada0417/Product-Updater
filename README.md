#  Product App

A simple Flutter application demonstrating **navigation and routing** using the [`go_router`](https://pub.dev/packages/go_router) package.  
The app showcases a **Home Page**, a **Products List Page**, and a **Single Product Details Page**.

---

## 📌 Features

- **Home Page** with navigation to the Products Page.
- **Products Page** displaying a list of products.
- **Single Product Page** showing detailed product information.
- **GoRouter** for clean, declarative navigation.
- **Passing Data Between Pages** using `state.extra`.
- **Named Routes** for maintainability.

---

## 📂 App Flow

1. **Home Page**
   - Displays a welcome message.
   - Contains a button to navigate to the Products Page.

2. **Products Page**
   - Shows a list of products (from a static `ProductData` list).
   - Each product can be clicked to navigate to the Single Product Page.

3. **Single Product Page**
   - Displays the product image, title, description, and price.
   - Styled for a clean e-commerce look.

---

## 🔑 GoRouter Setup
- Router Class is created in router.dart and passed to MaterialApp.router in main.dart.
- Named Routes are defined in route_names.dart for consistency.
- Data Passing is done via state.extra when navigating to the Single Product Page.

- Example:
```dart
GoRouter.of(context).pushNamed(
  RouteNamesClass.singleProduct,
  extra: product, // Passing Product object
);
```

## 🛣 Route Types in Flutter
- In Flutter, navigation can be done in multiple ways:
- Imperative Navigation (Navigator.push / Navigator.pop)
- Declarative Navigation (with go_router or auto_route)
- We use declarative routing here for:
- Centralized route definitions.
- Easy URL handling for web.
- Better maintainability.

## 📸 Screenshots 

![photo_2025-08-15_01-13-37](https://github.com/user-attachments/assets/e79d47d6-373c-4c04-a461-5dc1059b2b6e)
![photo_2025-08-15_01-13-39](https://github.com/user-attachments/assets/192d1d49-7622-4c82-a3d6-ff38d27538c1)
![photo_2025-08-15_01-13-41](https://github.com/user-attachments/assets/e999b1f9-abf4-43bb-93bf-4779b90419d7)



## 📖 Learning Points
- How to set up and use GoRouter in Flutter.
- How to define named routes for better code organization.
- How to pass complex objects between pages.
- How to create a simple UI for product listings and details.


## 🏗 Tech Stack
- Flutter — UI framework
- Dart — Programming language
- GoRouter — Navigation management
