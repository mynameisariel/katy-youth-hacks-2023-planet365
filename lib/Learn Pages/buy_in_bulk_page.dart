import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class BuyInBulkPage extends StatefulWidget {
  const BuyInBulkPage({super.key});

  @override
  State<BuyInBulkPage> createState() => _BuyInBulkPageState();
}

class _BuyInBulkPageState extends State<BuyInBulkPage> {
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.green[900],
        title: const Text(
          "Why You Should Buy In Bulk Starting Today",
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
        childAspectRatio: 1.2,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  child: StyledText(
                    text: """
In our fast-paced world, the allure of convenience often leads us to opt for single-use items and pre-packaged products. Yet, beneath the surface, a more sustainable and economical option awaits: buying in bulk. Beyond the immediate savings, bulk buying offers a multitude of advantages that extend to both our wallets and the environment.
                      """,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CarouselSlider(
                      items: [
                        StyledText(
                          text: """  
<header>LESS PACKAGING WASTE</header> 
At a glance, the excessive packaging that accompanies individual servings might not seem like much. However, collectively, these packages contribute significantly to our plastic pollution crisis. The U.S. Environmental Protection Agency (EPA) reveals that packaging constitutes nearly <green><b>one-third</b></green> of all municipal waste. When you choose to buy in bulk, you're making a conscious decision to reduce your contribution to this waste stream.
                      """,
                          tags: {
                            'b': StyledTextTag(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            "header": StyledTextTag(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Color.fromRGBO(56, 142, 60, 1),
                              ),
                            ),
                            "green": StyledTextTag(
                              style: const TextStyle(
                                color: Color.fromRGBO(129, 199, 132, 1),
                              ),
                            )
                          },
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "images/bulk-jars.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        StyledText(
                          text: """  
<header>LOWER CARBON FOOTPRINT</header> 
The environmental implications of transportation cannot be ignored. Each shipment of products involves fuel consumption and emissions. When items are bought in bulk, fewer shipments are required. A study published in the journal "Environmental Research Letters" found that bulk food supply chains produce <green><b>28% fewer carbon emissions</b></green> compared to conventional supply chains. This reduction in transportation-related emissions underscores the significant positive impact of bulk buying on our carbon footprint.
                      """,
                          tags: {
                            'b': StyledTextTag(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            "header": StyledTextTag(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Color.fromRGBO(56, 142, 60, 1),
                              ),
                            ),
                            "green": StyledTextTag(
                              style: const TextStyle(
                                color: Color.fromRGBO(129, 199, 132, 1),
                              ),
                            )
                          },
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "images/tote-bags.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        StyledText(
                          text: """  
<header>COST SAVINGS</header> 
While immediate savings might not be as evident as the allure of convenience packaging, buying in bulk is a long-term investment in your budget. The National Resources Defense Council (NRDC) estimates that a family of four in the U.S. discards approximately \\\$1,500 worth of food annually. By purchasing only what you need in bulk, you can help minimize food waste and reduce your grocery bill over time.        
                      """,
                          tags: {
                            'b': StyledTextTag(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            "header": StyledTextTag(
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Color.fromRGBO(56, 142, 60, 1),
                              ),
                            ),
                            "green": StyledTextTag(
                              style: const TextStyle(
                                color: Color.fromRGBO(129, 199, 132, 1),
                              ),
                            )
                          },
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "images/bulk.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        height: 380.0,
                        enlargeCenterPage: true,
                        aspectRatio: 9 / 16,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: FloatingActionButton(
                        onPressed: () => buttonCarouselController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear),
                        backgroundColor: Colors.green[900],
                        foregroundColor: Colors.green,
                        child: const Text(
                          '>',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(46, 125, 50, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: StyledText(
              text: """
<darkgreen><header>MORE INFO ON BUYING IN BULK</header></darkgreen>

- The Plastic Pollution Coalition highlights that 40% of plastic produced is used for packaging, which is often used once and then discarded. By choosing bulk options, you're actively participating in the reduction of plastic waste generation.

- According to the Zero Waste Scotland organization, opting for bulk purchases can lead to a remarkable 45% reduction in carbon emissions compared to buying packaged goods. This staggering reduction highlights the significant environmental benefits of buying in bulk.

- Wholesale clubs like Costco, Sam's Club, and BJ's Wholesale Club are well-known for offering bulk purchasing options. These stores are popular for buying bulk items ranging from food to household goods.

<main>            Buying in bulk is not limited to groceries and food! There are plenty of options to buy your daily household and hygiene items in bulk at supermarkets as well. For instance, opt for package free soap or shampoo bars.

            To start implementing bulk buying into your daily habits, carry around some tote bags or mason jars the next time you go shopping! Tote bags make for great alternatives to single use plastic bags, and mason jars are great for carrying anything from drinks to small items.</main>
""",
              tags: {
                'b': StyledTextTag(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                "header": StyledTextTag(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                "darkgreen": StyledTextTag(
                  style: const TextStyle(
                    color: Color.fromRGBO(129, 199, 132, 1),
                  ),
                ),
                "main": StyledTextTag(
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(200, 230, 201, 1)),
                )
              },
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
