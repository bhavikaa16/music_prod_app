# Music Services Module (Flutter Project)

🧠 My Approach
To build this project, I followed the MVVM architecture to maintain a clean separation between UI, business logic, and data handling. I used Firebase Firestore as the backend to store service details, enabling dynamic content updates without changing the code. The app fetches data asynchronously using a ServiceRepository, manages state through a ServiceViewModel, and updates the UI in real-time using Provider. Each service card, styled based on the Figma design, displays data loaded from Firestore and supports navigation to a detailed screen on tap. This structure ensures modularity, scalability, and a responsive user experience.


## 📂 Folder Structure

lib/
├── models/ # Data models (ServiceModel)
├── repository/ # Firebase interaction logic
│ └── service_repository.dart
├── view/ # Screens (UI layer)
│ ├── home_screen.dart
│ └── details_screen.dart
├── view_model/ # State + business logic
│ └── service_view_model.dart
├── widgets/ # Reusable UI components
│ ├── service_loc.dart
│ └── top_banner.dart
└── main.dart # App entry point


## 🔧 Tech Stack

- **Flutter**
- **Firebase Firestore**
- **Provider (State Management)**
- **MVVM Architecture**

 ## 📱 Features

- Clean, responsive UI built with Flutter
- Dynamic service list (title, icon, description) from Firestore
- Navigation to detail screen on card tap
- MVVM pattern with clear separation of concerns
- State management using Provider

---
## ▶️ Demo

📹 Screen recording showing the app from launch to navigation:
[Demo Video Link]([https://your-upload-link.com](https://drive.google.com/file/d/1iOrF5kKBzEs4mfPRhMAbYeoVfjk70qMy/view?usp=sharing)) 












## Getting Started



