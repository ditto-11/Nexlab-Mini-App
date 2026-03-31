# Nexlab Mini App - AI-First Internship Test

**Candidate:** Nguyen Huu Duy  
**Position:** Mobile Developer Intern (Flutter)

### 🎯 Objective

A Flutter Mini App featuring a **Login screen** and **Contact List**, built strictly following the **BLoC pattern**.

This repository demonstrates:

- **AI-first Engineering:** Leveraging advanced AI tools for rapid development.
- **Problem-solving:** Efficient implementation of state management and navigation.
- **Source Control Management:** Clean git history with professional commit messages.

---

## 🚀 Getting Started

To run this project locally:

1. Clone the repository:

    ```bash
    git clone [Link-Repo-Của-Bạn]
    ```

2. Navigate to the project directory:

    ```bash
    cd nexlab_mini_app
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:
    ```bash
    flutter run
    ```

## 🔀 1. Source Control & Git Workflow

As part of the AI-First evaluation, I utilized GitHub Copilot to establish a professional source control strategy and handle versioning issues.

### 1.1. Git Workflow

- Prompt to generate workflow:

    "Act as a Tech Lead. I am a solo developer building a Flutter Mini App (Login + Contact List) in 2 days. Suggest a practical, lightweight Git workflow. I am using VS Code. I don't need a complex setup, just a clean way to separate my features and manage state."

- Adopted Strategy: Feature Branching Workflow.

    main: The stable baseline.

    feat/login-ui, feat/contact-list: Branches for independent feature development before merging into main.

### 1.2. Resolving Merge Conflicts via AI

To test AI's capability in resolving version control issues, I intentionally triggered a merge conflict in lib/main.dart.

- Prompt to fix Git conflict:

    "Analyze this merge conflict in lib/main.dart. I want to keep the new colorScheme introduced in the feat/test-conflict branch. Rewrite this block to resolve the conflict cleanly and remove the Git markers."

- Resolution: I used Copilot's Inline Editor (Ctrl+I) to read the <<<<<<< HEAD markers. The AI successfully merged both logic requirements into a single cohesive block. I verified the syntax and committed the resolved file.

## 🏗️ 2. AI-Assisted Development (Architecture & UI)

This project strictly follows the BLoC pattern to separate UI from business logic. I used AI as an accelerator to generate the structural boilerplate and UI components.

### 2.1 Feat/login-ui Branch

- Prompt to generate login_screen.dart:

    "Act as a Senior Flutter Developer. I am building a Mini App. Generate the code for a clean, minimalist Login Screen using standard Material Design widgets. It should have a TextField for Email, a TextField for Password (obscured), and an ElevatedButton for Submit. Do not include any state management or logic yet, just the pure stateless/stateful UI. Put this in a file called login_screen.dart."

- Prompt for BLoC boilerplate:

    "Act as a Senior Flutter Developer. I have a static Login UI. Now, generate the flutter_bloc boilerplate (Event, State, and Bloc classes) to handle a mock authentication flow.
    The state should have Initial, Loading, Success, and Failure.
    The event should take an email and password.
    The Bloc should simulate a 2-second network delay before emitting Success.
    Finally, wrap my LoginScreen widget with BlocProvider and use BlocConsumer inside the UI to show a CircularProgressIndicator while loading, and a SnackBar on success/failure."

### 2.2 Feat/contact-list Branch

- Prompt to generate UI and Logic for Contact list Screen:

    "Act as a Senior Flutter Developer. I need the second screen for my Mini App: a Contact List.

    Generate a ContactBloc (Event, State, Bloc) that yields Initial, Loading, Loaded (containing a List<Map<String, String>> of 5 mock contacts with names and phone numbers), and Error states. It should simulate a 1-second network delay.

    Generate a ContactScreen UI that uses BlocProvider and BlocBuilder.

    Use a ListView.builder with ListTile to display the contacts when the state is 'Loaded'. Show a CircularProgressIndicator while 'Loading'.

    Ensure the fetch event is triggered inside initState or when the widget is built."

### 2.3 App Entry Point & Global State Setup

- Prompt to update main.dart with new screen and logic:
  "Act as a Senior Flutter Architect. I have completed my LoginScreen and ContactScreen and their respective Blocs (LoginBloc, ContactBloc). Now, rewrite my lib/main.dart file from scratch to tie the app together.

    Initialize a MaterialApp using Material 3 and a clean colorScheme.

    Set the home widget to LoginScreen.

    Wrap the MaterialApp with a MultiBlocProvider that initializes both LoginBloc and ContactBloc at the root level. This will ensure I don't get any ProviderNotFoundException context errors when navigating between screens.
    Keep the code clean, remove all default Flutter boilerplate comments, and ensure proper imports."
