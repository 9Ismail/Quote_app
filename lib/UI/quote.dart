import 'package:flutter/material.dart';

class QuotesApp extends StatefulWidget {
  const QuotesApp({Key? key}) : super(key: key);

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  int num=0;
  var quotes=[
   "The purpose of our lives is to be happy.",

   "Life is what happens when you're busy making other plans.",

   "Get busy living or get busy dying." ,

   "You only live once, but if you do it right, once is enough." ,

   "Many of life’s failures are people who did not realize how close they were to success when they gave up.",

  "If you want to live a happy life, tie it to a goal, not to people or things.",

   "Never let the fear of striking out keep you from playing the game.",

   "Money and success don’t change people; they merely amplify what is already there." ,

    "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.",

    "Not how long, but how well you have lived is the main thing"
  ];

  var listcolors=<Color> [
    Colors.pink,
    Colors.teal,
    Colors.yellowAccent,
    Colors.purple,
    Colors.red,
    Colors.grey,
    Colors.greenAccent,
    Colors.limeAccent,
    Colors.pink,
    Colors.yellowAccent,
    Colors.purple,
    Colors.red,
    Colors.grey,
    Colors.greenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuoteApp"),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  width: 360,
                  height: 250,
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: listcolors[num%listcolors.length],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                      child: Text(
                      quotes[num % quotes.length] , //doing modulo to avoid list range out off error
                    style: TextStyle(
                        fontSize: 15.5,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ))),
            ),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.5),
              child: ElevatedButton.icon(
                  onPressed: showQuote,
                  icon: Icon(Icons.wb_sunny),
                  label: Text(
                    "inspire me !!",
                    style: TextStyle(color: Colors.black87, fontSize: 18.8),
                  )),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.tealAccent,
    );
  }

  void showQuote() {
    setState(() {
      num++;
    });

    // num++;
    // print(num);
  }
}
