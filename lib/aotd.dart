import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ActionDescriptionPage extends StatefulWidget {
  const ActionDescriptionPage({super.key});

  @override
  State<ActionDescriptionPage> createState() => _ActionDescriptionPageState();
}

class _ActionDescriptionPageState extends State<ActionDescriptionPage> {
  var dt = DateTime.now();
  List descriptions = [
    {
      "action": "Take a cold shower",
      "description":
          "A typical 10-minute hot shower can use around 20 gallons (75 liters) of water and consume a significant amount of energy. By taking a cold shower, you can save up to 80% of the energy used for heating water, which translates to reduced carbon emissions and water conservation."
    },
    {
      "action": "No lights for the day",
      "description":
          "Observing a day without using artificial lights helps conserve electricity and reduces the demand for power generation. Fossil fuel power plants, which are commonly used for electricity generation, release greenhouse gases into the atmosphere. By going lights-off for a day, you'll be contributing to lowering your carbon footprint."
    },
    {
      "action": "Buy an item in bulk",
      "description":
          "Buying in bulk can reduce packaging waste by up to 80%. In the United States alone, packaging accounts for about one-third of all municipal waste. Choosing bulk options helps minimize this waste and its environmental impact."
    },
    {
      "action": "Ask a friend to carpool to your next event",
      "description":
          "Carpooling with just one other person regularly can reduce your carbon emissions by thousands of pounds each year. For every gallon of gasoline burned, about 20 pounds (9 kilograms) of CO2 are released into the atmosphere."
    },
    {
      "action": "Visit a farmer's market to buy something local",
      "description":
          "On average, food in the United States travels about 1,500 miles from farm to plate. Buying locally-produced food reduces transportation-related emissions and supports local communities."
    },
    {
      "action": "Wash your laundry with cold water",
      "description":
          "Using cold water for laundry instead of hot water reduces energy consumption and lowers your carbon footprint. About 90% of the energy used in washing machines goes into heating the water, so by making this small change, you can make a big impact."
    },
    {
      "action": "Go vegan for a day",
      "description":
          "Animal agriculture is responsible for approximately 14.5% of global greenhouse gas emissions. Adopting a plant-based diet, even for a day, can significantly reduce your carbon footprint and help combat climate change."
    },
    {
      "action": "Leave zero food waste today",
      "description":
          "About one-third of all food produced globally goes to waste. Food waste in landfills produces methane, a potent greenhouse gas that is about 25 times more effective at trapping heat in the atmosphere than carbon dioxide. By being mindful of your food consumption and avoiding waste, you help conserve resources and reduce methane emissions."
    },
    {
      "action": "Use no plastic for the whole day",
      "description":
          "Every year, around 8 million metric tons of plastic end up in the oceans. Marine animals often mistake plastic for food, leading to devastating consequences for marine ecosystems and human health."
    },
    {
      "action": "Only use public transportation for the day",
      "description":
          "Opting for public transportation over personal vehicles helps reduce the carbon emissions associated with individual driving. It also supports investments in public transit infrastructure, making sustainable transportation more accessible in the long run."
    },
    {
      "action": "Calculate your carbon footprint",
      "description":
          "On average, each person in the United States contributes approximately 16 metric tons of carbon dioxide equivalent emissions per year. Knowing your carbon footprint empowers you to make informed choices and reduce your impact. There are many websites online where you can easily calculate and become aware of your carbon footprint!"
    },
    {
      "action": "Buy makeup alternatives that are environmentally-friendly",
      "description":
          "Choosing makeup products that are environmentally-friendly and cruelty-free helps support sustainable practices in the beauty industry. It encourages companies to develop products that use eco-friendly packaging, natural ingredients, and avoid harmful chemicals that can pollute the environment."
    },
    {
      "action": "Shop sustainably with clothing and food",
      "description":
          "The fashion industry is responsible for about 10% of global carbon emissions and nearly 20% of global wastewater pollution. Opting for sustainable fashion and food choices can significantly reduce these impacts and support environmentally-friendly agricultural practices."
    },
    {
      "action": "Change your light bulbs to LED",
      "description":
          "LED bulbs use up to 80% less energy and last about 25 times longer than traditional incandescent bulbs. By replacing just one bulb with an LED, you can save up to 3,000 pounds (1,360 kilograms) of carbon dioxide over its lifetime."
    },
    {
      "action": "Turn off your A/C or heating for the day",
      "description":
          "Calculating your carbon footprint gives you a better understanding of your individual impact on the environment. It helps identify areas where you can make changes to reduce your emissions. By being aware of your carbon footprint, you can take targeted actions to minimize your environmental impact effectively."
    },
    {
      "action": "Bike to work today",
      "description":
          "Cycling to work instead of driving reduces emissions and promotes physical exercise, benefiting both your health and the environment. It also reduces traffic congestion and contributes to cleaner air in urban areas."
    },
    {
      "action": "Watch WallE",
      "description":
          "Watching environmentally-themed movies like WallE can raise awareness about the consequences of excessive consumerism and waste generation. It fosters a sense of responsibility towards the planet and encourages positive actions for its preservation."
    },
    {
      "action": "Don't throw away your leftovers! Turn them into a new dish",
      "description":
          "Food waste generates about 3.3 billion metric tons of carbon dioxide equivalent per year, making it one of the largest contributors to global greenhouse gas emissions. By getting creative with leftovers and reducing food waste, you help conserve resources and energy used in food production, transportation, and disposal. It's an enjoyable way to minimize your impact on the environment while enjoying tasty meals."
    },
    {
      "action": "Visit a national park/community park",
      "description":
          "Visiting parks and natural areas promotes appreciation for nature and reinforces the need for conservation efforts. It supports these protected areas and their maintenance for future generations to enjoy."
    },
    {
      "action": "Pick up some trash in the park",
      "description":
          "Taking a few minutes to pick up litter in parks or public spaces prevents pollution and ensures that waste does not harm wildlife or the environment. It sets an example for others and fosters a sense of pride in maintaining clean and green spaces."
    },
    {
      "action": "Donate some old clothes",
      "description":
          "The average American throws away about 70 pounds (32 kilograms) of clothing each year, contributing to the landfill waste problem. Donating old clothes instead of discarding them reduces waste and supports those in need. It also lessens the demand for new clothing production, which can be resource-intensive."
    },
    {
      "action": "Unplug your unused electronics",
      "description":
          "\"Phantom\" or \"vampire\" energy consumption from plugged-in but unused electronics accounts for about 10% of residential energy use in the United States. Many electronic devices continue to consume energy even when turned off. By unplugging unused electronics, you save electricity and reduce your carbon footprint."
    },
    {
      "action": "Run your errands using only public transportation",
      "description":
          "In the U.S., public transportation is 91% more energy-efficient than driving a personal vehicle. Using public transit helps conserve energy and reduces greenhouse gas emissions."
    },
    {
      "action": "Make a meal plan for the week to reduce food waste",
      "description":
          "Meal planning helps you buy only what you need, reducing food waste. which is a primary contributor to carbon emissions. It also saves time and money and encourages mindful consumption."
    },
    {
      "action": "Carry a refillable water bottle.",
      "description":
          "Producing plastic bottles requires significant amounts of fossil fuels, and their transportation adds to carbon emissions. Opting for a reusable bottle helps lower the overall demand for plastic production and its associated carbon footprint. Additionally, you can avoid the need to purchase single-use plastic bottles, thereby reducing plastic waste and its detrimental impact on the environment."
    },
    {
      "action": "Create a compost pile:",
      "description":
          "About 20-30% of what we throw away in the trash could be composted. Composting reduces landfill waste and creates nutrient-rich soil for gardening. This in turn reduces the need for harmful chemical fertilizers."
    },
    {
      "action": "Buy your regular coffee with a mug you bring from home",
      "description":
          "Disposable coffee cups are not recyclable due to their plastic lining. In the U.S., around 60 billion of these cups are thrown away each year, contributing to plastic pollution. A simple habit like bringing a refillable mug from home for your coffee each day will make a big difference."
    },
    {
      "action":
          "Minimalize your packaging today! Say no to plastic bags and single-use packaging",
      "description":
          "Plastic packaging makes up about 42% of all non-fiber plastic produced, and only a small percentage of it is recycled. Opting for products with minimal or no packaging reduces waste and encourages businesses to adopt more sustainable packaging practices."
    },
    {
      "action": "Buy local products only today",
      "description":
          "The food miles (distance food travels from farm to plate) of an average American meal is about 2415 kilometres (1500 miles). Buying local reduces transportation emissions and supports local economies."
    },
    {
      "action": "Bring your own bags to the grocery store",
      "description":
          "Over 5 trillion plastic bags are used worldwide each year. Less than 1% of these bags are recycled, and they can take up to 1,000 years to break down in the environment."
    },
    {
      "action":
          "Spread the word! Talk to someone about sustainable living. Post about sustainability on social media.",
      "description":
          "Social media has a wide reach, and spreading awareness about sustainable living can inspire countless individuals to adopt eco-friendly practices and amplify the impact of positive actions."
    },
  ];

  bool isChecked = false;
  List completedText = ["COMPLETED?", "COMPLETED!!!"];
  int i = 0;

  @override
  void initState() {
    super.initState();
    _loadCheckboxValue();
  }

  void _loadCheckboxValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? checkboxValue = prefs.getBool('checkboxValue');
    int? index = prefs.getInt('index');
    setState(
      () {
        isChecked = checkboxValue ?? false;
        i = index ?? 0;
      },
    );
  }

  void _saveCheckboxValue(bool value, int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('checkboxValue', value);
    prefs.setInt('index', index);
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.green;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "Action of the Day",
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
                height: 30,
              ),
              const Text(
                "TODAY'S ACTION:",
                style: TextStyle(
                  fontSize: 100,
                  color: Color.fromRGBO(56, 142, 60, 1),
                ),
              ),
              Text(
                descriptions[dt.day - 1]["action"],
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.green),
                margin: const EdgeInsets.all(50),
                alignment: Alignment.center,
                width: 600,
                child: Text(
                  descriptions[dt.day - 1]["description"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Text(
                completedText[i],
                style: TextStyle(
                  fontSize: 60,
                  color: isChecked == true ? Colors.green : Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Transform.scale(
                scale: 2,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (value) {
                    setState(
                      () {
                        isChecked = value!;
                        if (value) {
                          i = 1;
                        } else {
                          i = 0;
                        }
                        _saveCheckboxValue(value, i);
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
