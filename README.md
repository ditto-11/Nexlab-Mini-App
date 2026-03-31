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

### 1.1 Feat/login-ui Branch

- Prompt to generate login_screen.dart:

    "Act as a Senior Flutter Developer. I am building a Mini App. Generate the code for a clean, minimalist Login Screen using standard Material Design widgets. It should have a TextField for Email, a TextField for Password (obscured), and an ElevatedButton for Submit. Do not include any state management or logic yet, just the pure stateless/stateful UI. Put this in a file called login_screen.dart."
