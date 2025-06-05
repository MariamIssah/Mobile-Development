# 👩🏽‍🌾 Farmer Profiles Flutter App

This Flutter application showcases a list of realistic farmer profiles using two powerful widgets: `Card` and `SingleChildScrollView`. It simulates how a real-world agri-tech platform like **Riserural Connect** can display farmer data in a clear, scrollable, and organized manner.

---

## 🎯 App Objective

This app demonstrates:

- How to build a clean and scrollable UI using Flutter.
- How to display real-world user data (like farmer details).
- How to use `Card` and `SingleChildScrollView` to create a reusable layout.

It models what a typical **agri-digital service** would use to help buyers, NGOs, mentors, or organizations discover and connect with farmers.

---

## 📦 Key Flutter Widgets Explained

### 🧾 `Card`

#### 🔍 What It Does:

- `Card` is used to present grouped content in a visually separated block.
- It creates a clean and elevated container that helps highlight each **individual farmer**.

#### 💡 Why It Matters:

- `Card` gives structure and readability to each farmer profile.
- It mimics real-world UI design patterns found in apps like contact lists, recipe books, or service catalogs.

#### 🧪 In This App:

Each farmer’s name, location, crops, and years of experience is wrapped in a card:

```dart
Card(
  elevation: 4.0,
  margin: EdgeInsets.symmetric(vertical: 18),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(farmer["name"]!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text("Location: ${farmer["location"]}"),
        Text("Crops: ${farmer["crops"]}"),
        Text("Experience: ${farmer["experience"]}"),
      ],
    ),
  ),
)

SingleChildScrollView(
  padding: EdgeInsets.all(16),
  child: Column(
    children: farmers.map((farmer) => buildFarmerCard(farmer)).toList(),
  ),
)
```
