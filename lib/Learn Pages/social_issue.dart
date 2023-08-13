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
                  Climate change is undeniably a social issue of paramount concern that demands immediate attention. While its effects are felt globally, it disproportionately impacts vulnerable communities and exacerbates existing social inequalities. Rising temperatures, extreme weather events, and sea-level rise threaten food and water security, livelihoods, and access to essential services, hitting the poorest regions hardest. Displacement of people due to climate-induced disasters can lead to humanitarian crises and strained resources. Moreover, climate change disrupts ecosystems and biodiversity, affecting agriculture, human health, and overall well-being. As responsible inhabitants of this planet, we should be deeply concerned about climate change's far-reaching consequences on future generations. Embracing sustainable practices, transitioning to clean energy sources, and fostering international cooperation are crucial steps to mitigate this crisis and ensure a more equitable and secure future for all. By acting now, we can make a significant difference in preserving the environment and creating a better world for generations to come.
                  
                  This impending climate crisis poses a range of severe social impacts, particularly in low-income countries. These effects include food and water insecurity due to disrupted agriculture and water sources, health risks from the spread of diseases and heatwaves, displacement and migration as climate-related disasters force people to flee their homes, economic vulnerability as industries reliant on climate-sensitive activities suffer, gender inequality with women facing disproportionate burdens, hindrance to education and development, and the potential for conflicts over scarce resources, exacerbating existing tensions. Addressing these impacts necessitates urgent action, resilience-building, sustainable practices, and international cooperation to ensure a more equitable and secure future for all.
                  """,
                    style: TextStyle(
                      fontSize: 18,
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
