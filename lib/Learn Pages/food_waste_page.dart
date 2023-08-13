import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

const int itemCount = 20;

class FoodWastePage extends StatefulWidget {
  const FoodWastePage({super.key});

  @override
  State<FoodWastePage> createState() => _FoodWastePageState();
}

class _FoodWastePageState extends State<FoodWastePage> {
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "How Climate Change Widens the Gender Gap",
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
            Padding(
              padding: const EdgeInsets.all(50),
              child: StyledText(
                text:
                    "Food waste is a significant global issue that not only affects our environment but also strains resources and exacerbates hunger. According to the Food and Agriculture Organization (FAO), about <b>one-third</b> of all food produced for human consumption is lost or wasted. This shocking statistic highlights the urgency for individuals to adopt <b>sustainable practices</b> and make small lifestyle changes to combat this problem. Here are some practical tips to help you reduce your food waste and contribute to a more sustainable future.",
                tags: {
                  'b': StyledTextTag(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromRGBO(102, 187, 106, 1)),
                  ),
                },
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  padding: const EdgeInsets.all(30),
                  child: StyledText(
                    text: """  
            <header>1. PLAN YOUR MEALS</header> 

Creating a weekly meal plan and shopping list can go a long way in reducing food waste. When you know exactly what you need, you are less likely to buy excess food that might spoil before you can use it.
                        """,
                    textAlign: TextAlign.center,
                    tags: {
                      "header": StyledTextTag(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.green,
                        ),
                      ),
                    },
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  padding: const EdgeInsets.all(30),
                  child: StyledText(
                    text: """  
            <header>2. PRACTICE PROPER STORAGE</header> 

Understanding how to store different types of food can extend their freshness. Keep perishables like fruits, vegetables, and dairy in the refrigerator, and store dry goods in airtight containers to prevent them from becoming stale.
                        """,
                    textAlign: TextAlign.center,
                    tags: {
                      "header": StyledTextTag(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.green,
                        ),
                      ),
                    },
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  padding: const EdgeInsets.all(30),
                  child: StyledText(
                    text: """  
            <header>3. EMBRACE LEFTOVERS</header> 

Leftovers are a valuable resource. Get creative and turn them into new dishes or freeze them for future meals. This not only reduces waste but also saves time and money. There are plenty of resources and great recipes online that show amazing ways to reinvent leftovers into new dishes!
                        """,
                    textAlign: TextAlign.center,
                    tags: {
                      "header": StyledTextTag(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.green,
                        ),
                      ),
                    },
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  padding: const EdgeInsets.all(30),
                  child: StyledText(
                    text: """  
            <header>4. UNDERSTAND EXPIRATION DATES</header> 

Expiration dates can be confusing. Differentiate between "use by," "best before," and "sell by" dates. Many foods are still safe to consume after their "best before" date, but use your senses to assess their quality.                      """,
                    textAlign: TextAlign.center,
                    tags: {
                      "header": StyledTextTag(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.green,
                        ),
                      ),
                    },
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  padding: const EdgeInsets.all(30),
                  child: StyledText(
                    text: """  
            <header>5. COMPOSTING</header> 

For food scraps that can't be consumed or repurposed, consider composting. Composting not only reduces waste in landfills but also enriches soil for gardening.
                        """,
                    textAlign: TextAlign.center,
                    tags: {
                      "header": StyledTextTag(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.green,
                        ),
                      ),
                    },
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            FloatingActionButton(
              onPressed: () => buttonCarouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              child: const Text(
                '>',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              //fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/foodwaste.jpg", fit: BoxFit.fill),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: StyledText(
                    text: """
Adopting these small changes in your daily routine can have a significant impact on reducing food waste and promoting sustainability. Remember, <b>every effort counts</b>, and by being mindful of your consumption habits, you are contributing to a healthier planet for current and future generations. 

Keep up with Planet365 to learn more on how you can implement sustainable habits in your everyday life!""",
                    tags: {
                      'b': StyledTextTag(
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(102, 187, 106, 1)),
                      ),
                    },
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
