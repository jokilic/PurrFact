import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:math';

const String url = 'https://cat-fact.herokuapp.com/facts';
List<String> funFacts = [];
var data;
var response;
int i;
int randomNumber;
String fact = 'Fact iz getData()';

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
    for (i = 0; i < data.length; i++) {
      funFacts.add(data[i]['text']);
    }
    randomFunFact(funFacts);
  }

  String randomFunFact(funFacts) {
    randomNumber = Random().nextInt(funFacts.length);
    fact = funFacts[randomNumber];
    print(fact);

    return fact;
  }
}
