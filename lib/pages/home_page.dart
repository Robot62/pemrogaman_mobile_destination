import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/destination_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> destinations = [
    {
      "destination_name": "Museum Bank Indonesia",
      "location": "Jakarta Barat",
      "ratings": 4.7,
      "image_path": "assets/bank.png",
    },
    {
      "destination_name": "Museum Betawi",
      "location": "Jakarta Selatan",
      "ratings": 4.5,
      "image_path": "assets/betawi.png",
    },
    {
      "destination_name": "Museum Fatahillah",
      "location": "Jakarta Barat",
      "ratings": 4.3,
      "image_path": "assets/fatahilah.png",
    },
    {
      "destination_name": "Museum Naskah Proklamasi",
      "location": "Jakarta Pusat",
      "ratings": 4.8,
      "image_path": "assets/proklamasi.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text("Destinasi Museum"),
        leading: BackButton(
          onPressed: () {},
        ),
        elevation: 8,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: destinations.map((destination) {
            return Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                DestinationCard(
                    destinationName: destination["destination_name"],
                    imagePath: destination["image_path"],
                    ratings: destination["ratings"],
                    location: destination["location"]),
                (destinations.indexOf(destination) == destinations.length - 1)
                    ? const SizedBox(height: 24)
                    : const SizedBox.shrink()
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}