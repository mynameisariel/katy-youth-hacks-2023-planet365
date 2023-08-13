import 'package:flutter/material.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/tags/styled_text_tag_action.dart';
import 'package:styled_text/widgets/styled_text.dart';

const int itemCount = 20;

class GenderGapPage extends StatefulWidget {
  const GenderGapPage({super.key});

  @override
  State<GenderGapPage> createState() => _GenderGapPageState();
}

class _GenderGapPageState extends State<GenderGapPage> {
  @override
  Widget build(BuildContext context) {
    void openLink(BuildContext context, Map<String?, String?> attrs) {
      final String? link = attrs['href'];

      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Visit Link'),
            content: Text(link ?? 'Unknown link'),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'Close',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

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
      body: GridView.count(
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
                child: Image.asset("images/gender-gap.jpg", fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: StyledText(
                  text:
                      "80% of people <b>DISPLACED</b> by climate change are <b>WOMEN</b>.",
                  tags: {
                    'b': StyledTextTag(
                      style: const TextStyle(
                        color: Color.fromRGBO(27, 94, 32, 1),
                      ),
                    ),
                  },
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    backgroundColor: Color.fromARGB(143, 255, 255, 255),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(46, 125, 50, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: StyledText(
                  text: """
          In low-income countries, women shoulder a disproportional burden during climate crises. They manage crucial tasks like water and food collection. As resources dwindle, women's workloads increase, hampering their education and economic prospects. Disaster-stricken times also expose women to higher risks of violence.

          Climate events disrupt education, particularly for girls, affecting attendance and retention. Limited schooling hinders women's access to better jobs and climate resilience initiatives. In rural areas hit hardest by climate change, women in sectors like agriculture face precarious livelihoods. They constitute 43% of the agricultural workforce in developing nations, playing a key role in food security. Climate risks lead to income loss, deepening poverty.

          Tackling gender inequality in climate change means recognizing these issues' complexity. Empowering women in decision-making and climate actions yields fairer outcomes. Enabling access to education and economic opportunities enhances women's adaptability. Supporting gender equality policies fosters a more sustainable and resilient future for all.

          Learn more about the issue of gender inequality and climate change on the <link href="https://unfccc.int/gender">United Nations website</link>.
                        """,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                  tags: {
                    'link': StyledTextActionTag(
                      (_, attrs) => openLink(context, attrs),
                      style:
                          const TextStyle(decoration: TextDecoration.underline),
                    ),
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
