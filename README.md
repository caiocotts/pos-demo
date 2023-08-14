# Point of Sale Demo App

A Flutter demo app showcasing a Point of Sale (POS) interface similar to Intellitix. This app will not have all functionality of a real production grade POS system, but will instead focus on demonstrating my understanding of how the Intellitix system looks and feels like to use just from what I've seen so far from Veld and Boots. Some values will be hardcoded at first, but will be changed to real values from a database eventually. I will also work on adding my own modifications as I see fit.

## Features So Far

- Displays a list of items available for selection.
- Allows users to add or remove items from their selection.
- ~~Dynamically calculates and displays the subtotal based on the selected items.~~ Almost.
- The app can be compiled to work on many different platforms: Windows, Linux, Mac OS, iOS, Android, and it can also be used as webapp.

## Screenshots
![Welcome screen on Pixel 2](https://cdn.discordapp.com/attachments/634976915974782979/1140465842853773415/Screenshot_2023-08-13_at_22.00.40.png)
![Item selection on Pixel 2](https://cdn.discordapp.com/attachments/634976915974782979/1140465843130613840/Screenshot_2023-08-13_at_22.03.11.png)
![Welcome screen on the web interface](https://cdn.discordapp.com/attachments/634976915974782979/1140465843365478470/Screenshot_2023-08-13_at_22.03.23.png)
![Item selection on the web interface](https://cdn.discordapp.com/attachments/634976915974782979/1140465843612958740/Screenshot_2023-08-13_at_22.03.35.png)

## Getting Started

To get started with the project, follow these steps:

1. **Clone the repository:**
   `git clone https://github.com/your-username/point-of-sale-demo.git`


2. **Navigate to the project directory:**
   `cd point-of-sale-demo`

3. **Install dependencies:**
   `flutter pub get`


4. **Run the app:**
   `flutter run`


## Project Structure

The project is structured as follows (still not finished):

- `lib/` - Contains the main source code for the app.
- `main.dart` - Entry point of the app.
- `ui/` - Contains UI components.
- `item_selection_screen.dart` - Displays the list of items and their counters.
- `list_item.dart` - Represents individual list items with counter functionality.
- `subtotal_box.dart` - Displays the subtotal and event balance.
- `assets/` - Contains any assets used in the app (images, icons, etc.).

## Libraries Used

The project uses the following libraries:

- `flutter` - The main framework for building the app.
- `material` - Provides the Material Design components.

---

**Disclaimer:** I've only worked on this for a day as of creating this README.

