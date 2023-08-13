import 'package:flutter/material.dart';

class SocialIssuePage extends StatefulWidget {
  const SocialIssuePage({super.key});

  @override
  State<SocialIssuePage> createState() => _SocialIssuePageState();
}

class _SocialIssuePageState extends State<SocialIssuePage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "Why is Climate Change a Social Issue?",
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
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/inequality-climate-change.jpg"),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    """\
                  Climate change demands immediate global attention as it disproportionately affects vulnerable communities, exacerbates inequalities, threatens essential resources through rising temperatures, extreme weather, and sea-level rise, and prompts displacement due to climate-induced disasters, leading to humanitarian crises. Moreover, it disrupts ecosystems, impacting agriculture, health, and overall well-being. To secure a better future, embracing sustainable practices, transitioning to clean energy, and fostering international cooperation are imperative steps. Addressing these challenges with urgency, resilience-building, and equitable strategies is essential to mitigate the severe social impacts, particularly in low-income countries, and ensure a more sustainable and just world.
                  """,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
