import 'package:first_app/aotd.dart';
import 'package:flutter/material.dart';
import 'Learn Pages/social_issue.dart';

class ActPage extends StatefulWidget {
  const ActPage({super.key});

  @override
  State<ActPage> createState() => _ActPageState();
}

class _ActPageState extends State<ActPage> {
  var dt = DateTime.now();

  List<String> dailyActions = [
    "Take a cold shower.",
    "No lights for the day!",
    "Buy an item in bulk.",
    "Ask a friend to carpool to your next event.",
    "Visit a farmer's market to buy something local.",
    "Wash your laundry with cold water.",
    "Go vegan for a day!",
    "Leave zero food waste today!",
    "Use no plastic for the whole day.",
    "Only use public transportation for the day!",
    "Calculate your carbon footprint.",
    "Buy makeup alternatives that are environmentally-friendly.",
    "Shop sustainably with clothing and food!",
    "Change your light bulbs to LED.",
    "Turn off your A/C or heating for the day.",
    "Bike to work today!",
    "Watch WallE!",
    "Don't throw away your leftovers! Turn them into a new dish.",
    "Visit a national park/community park!",
    "Pick up some trash in the park.",
    "Donate some old clothes!",
    "Unplug your unused electronics.",
    "Run your errands using only public transportation!",
    "Make a meal plan for the week to reduce food waste.",
    "Carry a refillable water bottle.",
    "Create a compost pile.",
    "Buy your regular coffee with a mug you bring from home.",
    "Minimalize your packaging today! Say no to plastic bags and single use packaging.",
    "Buy local products only today.",
    "Bring your own bags to the grocery store.",
    "Spread the word: Talk to someone about sustainable living! Post about sustainability on social media!",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 800,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(17, 92, 22, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 20, 25, 15),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ActionDescriptionPage();
                        },
                      ),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return const Color.fromARGB(255, 14, 46, 1);
                        }
                        return Colors.green;
                      },
                    ),
                  ),
                  child: const Text(
                    "ACTION OF THE DAY:",
                    style: TextStyle(fontSize: 72),
                  ),
                ),
                Text(
                  dailyActions[dt.day - 1],
                  style: const TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    icon: const Icon(Icons.question_mark_rounded),
                    iconSize: 30,
                    tooltip: "What is an Action of the Day?",
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                          "What is an Action of the Day?",
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(50),
                              child: const Text(
                                "Some people believe that it's too late to fight climate change. Here at Planet365, we want to show that it is never too late to act and create change. We want to encourage people to take small actions every day that make a difference in saving our planet. Together, 365 days a year, we can raise social awareness and reduce the problems caused by climate change. Our 'Action of the Day' aims to prompt people into small, sustainable lifestyle changes that can impact the planet for the better.",
                                style: TextStyle(fontSize: 28),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ActionDescriptionPage();
                                    },
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Colors.green;
                                  }
                                  return Colors.grey;
                                }),
                              ),
                              child: const Text(
                                "Let's Start Taking Action Together!",
                                style: TextStyle(fontSize: 24),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 800,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "images/inequality-climate-change.jpg",
                  fit: BoxFit.cover,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(162, 0, 0, 0),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const SocialIssuePage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                      "LEARN MORE: Why is climate change a social issue?",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
