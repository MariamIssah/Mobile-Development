# 🌡️ Temperature Conversion App

## 🔗 GitHub Repository

Here’s the link to my project repository:
👉 [https://github.com/MariamIssah/Mobile-Development.git](https://github.com/MariamIssah/Mobile-Development.git)

## 🎥 Demo Video

You can watch my full demo video here:
👉 *(Insert your video link here once uploaded)*

---

## 📱 About the App

This is a simple **Temperature Conversion App** I built using **Flutter**. It allows users to convert temperatures between **Celsius** and **Fahrenheit**. I focused on using interactive widgets, maintaining clean state management, and providing a good user experience — including conversion history and responsive layout.

---

## 🎯 App Features

* 🔁 Convert between Celsius and Fahrenheit.
* ✍️ User input through a `TextField`.
* 🔘 Radio buttons for selecting conversion direction.
* 🎯 Accurate results rounded to two decimal places.
* 📜 History of all conversions during the session.
* 🔄 Works in both portrait and landscape orientation.

---

## 🧩 Widgets I Used and Why

| Widget                                               | Purpose                                        |
| ---------------------------------------------------- | ---------------------------------------------- |
| `StatefulWidget`                                     | To manage dynamic updates to the UI.           |
| `TextField`                                          | For entering temperature values.               |
| `RadioListTile`                                      | To allow users to choose conversion direction. |
| `ElevatedButton`                                     | To trigger the conversion function.            |
| `Text`                                               | For displaying results and conversion history. |
| `Column`, `Row`, `Padding`, `Expanded`, `ScrollView` | For clean and responsive layout.               |
| `setState()`                                         | To refresh UI when input or selection changes. |

---

## 🧠 Conversion Logic

I used basic formulas to convert between the two temperature units:

* **Celsius → Fahrenheit**:
  `(C × 9/5) + 32`

* **Fahrenheit → Celsius**:
  `(F - 32) × 5/9`

Each time a user presses the "Convert" button, the app performs the selected conversion and stores the result in a list shown as history.

---

## 🧹 Code Quality

I made sure my code is:

* Well-formatted with consistent indentation and spacing.
* Clear, with meaningful variable and function names.
* Modular and separated into logical components.
* Commented to explain key sections and logic.
* Documented with this detailed README.

---

## 🧪 Sample Conversion History

```
C to F: 25.0 => 77.00
F to C: 98.6 => 37.00
F to C: 32 => 0.00
```

Newest conversion appears at the top.

---

## ✅ How I Met the Rubric Criteria

| Criteria                         | What I Did                                                                                   |
| -------------------------------- | -------------------------------------------------------------------------------------------- |
| **Widgets Usage**                | I used a mix of input, display, and selection widgets with full state management.            |
| **Code Quality & Documentation** | Clean code, clear variable names, inline comments, and this README.                          |
| **Effort**                       | Added history tracking, rounded output, and input validation.                                |
| **Functionality**                | Both conversion directions work as expected with proper rounding.                            |
| **UI Design & Creativity**       | Responsive layout, clean spacing, intuitive interaction, and consistent across orientations. |

---

## 📱 Tested Device

* ✅ **Physical Android Device**: *Tecno Spark 10*

I made sure to run and test the app on a real device to meet the course requirement. The app functions well and smoothly on my Tecno Spark 10.

---

## 🚀 How to Run It Locally

**Requirements**:

* Flutter SDK
* Dart SDK
* Emulator or Android Device

**Steps**:

```bash
git clone https://github.com/MariamIssah/Mobile-Development.git
cd Mobile-Development
flutter pub get
flutter run
```



## 📄 Submission

I have submitted a PDF file: 



It includes:

* ✅ GitHub link
* ✅ Demo video link
* ✅ Overview of the project and how I met all rubric requirements

---

## 👩🏽‍💻 About Me

Hi, I’m **Mariam Awini Issah**, the creator of this app.
You can contact me at **[m.issah1@alustudent.com](mailto:m.issah1@alustudent.com)**.

