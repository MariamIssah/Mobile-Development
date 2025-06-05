import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: FarmerProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FarmerProfileScreen extends StatelessWidget {
  final List<Map<String, String>> farmers = [
    {
      "name": "Ama Nyarko",
      "location": "Koforidua",
      "crops": "Cassava, Yam",
      "experience": "5 years"
    },
    {
      "name": "Kwame Mensah",
      "location": "Tamale",
      "crops": "Maize, Groundnuts",
      "experience": "3 years"
    },
    {
      "name": "Akosua Dede",
      "location": "Hohoe",
      "crops": "Tomatoes, Peppers",
      "experience": "6 years"
    },
    {
      "name": "Yaw Antwi",
      "location": "Techiman",
      "crops": "Cocoa, Plantain",
      "experience": "7 years"
    },
    {
      "name": "Mariam Issah",
      "location": "Bolgatanga",
      "crops": "Shea, Millet",
      "experience": "4 years"
    },
    {
      "name": "Kofi Badu",
      "location": "Sunyani",
      "crops": "Rice, Maize",
      "experience": "8 years"
    },
    {
      "name": "Efua Serwaa",
      "location": "Cape Coast",
      "crops": "Cabbage, Lettuce",
      "experience": "2 years"
    },
    {
      "name": "Kojo Asamoah",
      "location": "Wa",
      "crops": "Beans, Tomatoes",
      "experience": "6 years"
    },
    {
      "name": "Adwoa Baah",
      "location": "Nkawkaw",
      "crops": "Ginger, Carrots",
      "experience": "3 years"
    },
    {
      "name": "Yaw Boateng",
      "location": "Kintampo",
      "crops": "Cassava, Plantain",
      "experience": "5 years"
    },
    {
      "name": "Akua Mensima",
      "location": "Sekondi",
      "crops": "Onions, Tomatoes",
      "experience": "4 years"
    },
    {
      "name": "Kwesi Appiah",
      "location": "Accra",
      "crops": "Okra, Lettuce",
      "experience": "2 years"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farmer Profiles"),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: farmers.map((farmer) {
            return Card(
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
                    Text(
                      farmer["name"]!,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text("Location: ${farmer["location"]}"),
                    Text("Crops: ${farmer["crops"]}"),
                    Text("Experience: ${farmer["experience"]}"),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
