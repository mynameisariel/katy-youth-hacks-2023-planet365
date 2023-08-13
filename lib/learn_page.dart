import 'package:first_app/Learn%20Pages/gender_gap_page.dart';
import 'package:first_app/Learn%20Pages/poverty_page.dart';
import 'package:first_app/Learn%20Pages/public_transportation.dart';
import 'package:flutter/material.dart';

import 'Learn Pages/buy_in_bulk_page.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.5,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 2,
      children: <Widget>[
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
                  Image.asset("images/gender-inequality.jpg", fit: BoxFit.fill),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GenderGapPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(166, 0, 0, 0),
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  "How Climate Change Widens the Gender Gap",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:
                  Image.asset("images/climate-poverty.jpg", fit: BoxFit.fill),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PovertyPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(166, 0, 0, 0),
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  "How Climate Change Impacts the Poorest 50%",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/public-transportation.jpg",
                  fit: BoxFit.fill),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PublicTransportationPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(166, 0, 0, 0),
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  "Sustainability Starts With Public Transportation",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/buy-in-bulk.jpg", fit: BoxFit.fill),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BuyInBulkPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(166, 0, 0, 0),
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  "Why You Should Buy In Bulk Starting Today",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/zero-waste.jpg", fit: BoxFit.fill),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(166, 0, 0, 0),
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  "Tips to Help You Reduce Your Food Waste",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/social-issue.jpg", fit: BoxFit.fill),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(166, 0, 0, 0),
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  "How Climate Change Creates Social Inequalities",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
