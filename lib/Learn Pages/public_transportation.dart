import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class PublicTransportationPage extends StatefulWidget {
  const PublicTransportationPage({super.key});

  @override
  State<PublicTransportationPage> createState() =>
      _PublicTransportationPageState();
}

class _PublicTransportationPageState extends State<PublicTransportationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "Sustainability Starts With Public Transportation",
          style: TextStyle(fontSize: 50),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 10),
              child: const Text(
                """
In the face of an increasingly urgent climate crisis, adopting sustainable habits has become imperative for individuals and communities alike. One impactful yet often overlooked avenue for reducing carbon emissions and promoting a more sustainable future is embracing public transportation. By making conscious choices to use buses, trains, and subways instead of personal vehicles, individuals can contribute significantly to reducing their carbon footprint and fostering positive environmental change.
            """,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w200,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "DID YOU KNOW?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(27, 94, 32, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "The transportation sector is a major contributor to greenhouse gas emissions, accounting for a significant portion of global carbon dioxide output. According to the International Energy Agency (IEA), transportation is responsible for approximately one-fourth of global energy-related CO2 emissions. As it is now more common for families to own two to three cars, personal vehicles are a major contributor to this challenge.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 270,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/public-transit.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(27, 94, 32, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "A single bus can replace dozens of individual cars, leading to a substantial reduction in carbon emissions. By opting for public transport, individuals can directly contribute to lowering greenhouse gas emissions. Additionally, a robust public transportation system encourages urban planning that prioritizes accessibility, walkability, and bike-friendliness. This, in turn, fosters more environmentally sustainable, livable cities.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(30, 40, 30, 10),
              child: const Text(
                "Getting on Board with Public Transportation",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(129, 199, 132, 1),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: const Text(
                "Embracing public transportation might seem daunting at first, but small lifestyle changes can make a significant difference. Here's how individuals can start implementing the habit of sustainable commuting:",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w200,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              constraints: const BoxConstraints(maxWidth: 1700),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(27, 94, 32, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: StyledText(
                text: """
1. <b>Plan Ahead:</b> 
Familiarize yourself with local bus and train schedules. Planning your routes in advance can help you seamlessly integrate public transportation into your daily routine.

2. <b>Start Small:</b> 
Begin by using public transportation for short trips or specific days of the week. Gradually increase your usage as you become more comfortable with the system.

3. <b>Explore Alternatives:</b>
Consider options like biking or walking to nearby public transportation stops. This not only reduces your carbon footprint but also promotes personal health.

4. <b>Use Mobile Apps:</b>
Many cities offer mobile apps that provide real-time information on public transportation schedules, routes, and delays. These apps can make your transit experience more efficient and convenient.

5. <b>Calculate Savings:</b>
Take note of the money saved by using public transportation instead of driving, and use these savings as a motivating factor.""",
                tags: {
                  'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                },
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
