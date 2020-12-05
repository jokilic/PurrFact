import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:math';

const String url = 'https://cat-fact.herokuapp.com/facts';
List<String> funFacts = [];
List<String> currentFunFacts;
List data;
var response;
int i;
int randomNumber;
String fact = 'Press the button for a Cat Fact...';

class DataGetter {
  Future<dynamic> getData() async {
    try {
      response = await http.get(url);
      parseData(response);
    } catch (e) {
      print('Error happened: $e');
    }
  }

  void parseData(response) {
    data = convert.jsonDecode(response.body)['all'];
    data.forEach((element) {
      String currentFact = element['text'];

      // If fact has more than 20 words, store it in the list of facts
      if (currentFact.length > 20) funFacts.add(currentFact);
    });

    // Put the facts in the list used for displaying them
    refillFunFacts();

    // Get a random fact from the list
    randomFunFact();
  }

  List<String> refillFunFacts() => currentFunFacts = [...funFacts];

  String randomFunFact() {
    // Refill the list if there are no more facts
    if (currentFunFacts.length == 2) refillFunFacts();

    currentFunFacts.remove(fact);

    randomNumber = Random().nextInt(funFacts.length);
    fact = funFacts[randomNumber];
    print(fact);

    return fact;
  }
}
