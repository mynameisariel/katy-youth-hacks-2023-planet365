import 'package:flutter/material.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

class PovertyPage extends StatefulWidget {
  const PovertyPage({super.key});

  @override
  State<PovertyPage> createState() => _PovertyPageState();
}

class _PovertyPageState extends State<PovertyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "How Climate Change Impacts the Poorest 50%",
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
      body: GridView.count(
        childAspectRatio: 3,
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
                child: Image.asset(
                  "images/lic-countries.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: StyledText(
                  text:
                      "The world's <b>RICHEST <grn>1%</grn></b> produce <b><grn>DOUBLE</grn> the CO2 emissions</b> of the world's <b>POOREST <grn>50%.</grn></b>",
                  style: const TextStyle(fontSize: 50),
                  textAlign: TextAlign.center,
                  tags: {
                    "b": StyledTextTag(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    "grn": StyledTextTag(
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 201, 13),
                      ),
                    )
                  },
                ),
              ),
            ],
          ),
          const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  "This significant disparity highlights how affluent lifestyles, consumption patterns, and investments contribute to the climate crisis, while the burden of its consequences falls disproportionately on the most vulnerable and marginalized populations. While high-income individuals have more extravafant lifestyles, consuming greater amounts of energy and carbon emissions, they do not feel the immediate consequences of their actions. In reality, it is the world's poorest populations which suffer the impacts of climate change, while they contribute the least to this problem. These emissions inequalities exacerbate climate vulnerability, health and nutrition challenges, displacement, and economic inequity for the world's poorest communities.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
              ),
              Text(
                "The impacts on the world's poorest 50% can be felt in a number of different ways:",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 124, 173, 126),
                ),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(102, 187, 106, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "1. IMPACTS ON AGRICULTURE",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(27, 94, 32, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Climate change affects weather patterns, leading to increased frequency and intensity of extreme events such as droughts, floods, and storms. These disruptions in weather patterns can reduce crop yields, damage agricultural infrastructure, and make it difficult for farmers to earn a reliable income. As agriculture is a significant source of livelihood for many people in developing countries, these climate-related impacts can push farmers and rural communities deeper into poverty.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.green,
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "2. EXTREME WEATHER EVENTS",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(27, 94, 32, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Low-income countries are often situated in regions more susceptible to extreme weather events, such as tropical cyclones, hurricanes, floods, and droughts. Without adequate infrastructure and resources to cope with these extreme weather events, low-income countries will suffer the most. These events can cause significant damage to infrastructure, disrupt livelihoods, and displace communities, exacerbating poverty.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
          ),
          const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "3. ECONOMIC VULNERABILITY",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Low-income countries often heavily rely on climate-sensitive industries like agriculture, fisheries, and tourism. They lack the technology and infrastructure to prevent or protect their communities from damage during climate crises such as heatwaves, floods, or hurricanes. As climate change disrupts these sectors, it can lead to job losses, reduced income, and economic instability, impacting the livelihoods of millions.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
              )
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/flooding.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(67, 160, 71, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "4. HEALTH RISKS",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 14, 49, 17),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Climate change influences the spread of vector-borne diseases, such as malaria and dengue fever, as well as heat-related illnesses. Low-income countries often lack robust healthcare systems and resources to address these health challenges, leading to increased mortality rates and economic burdens on households. As a result, the impacts of climate change enhance social inequalities, as the poor often have less access to healthcare and treatment services due to their circumstances.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(46, 125, 50, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "5. MIGRATION AND DISPLACEMENT",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 14, 49, 17),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Climate-induced environmental changes can force people to migrate, particularly from rural to urban areas or across borders. Planned migration occurs when the impoverished population is in search of better opportunities and resources. Unplanned migration occurs in the instance of natural disasters that forcefully displace the populations living in the region. These environmental refugees face a number of challenges and can strain urban resources in cities.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/climate-refugees.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Climate change disproportionately affects vulnerable communities around the world.",
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  "Rising temperatures, extreme weather events, and sea-level rise threaten food and water security, health, and livelihoods. Social inequalities are being exacerbated by this climate crisis, impacting women, children, and marginalized groups. Addressing this imbalance requires collective efforts to transition to sustainable practices, and implement equitable climate policies to ensure a more just and green future for all. Follow the Planet365 app to learn more about how you can take daily, sustainable action.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
