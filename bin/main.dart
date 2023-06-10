import 'dart:convert';

void main(List<String> arguments) {
  print(arguments);
  if (arguments.isEmpty) {
    final outputData = {'greeting': "Received NOTHING!"};
    final outputJson = jsonEncode(outputData);
    print(outputJson);
  } else {
    final inputData = jsonDecode(arguments[0]);
    final name = inputData['who-to-greet'] ?? 'Nobody';
    final greeting = 'Hello, $name!';
    final outputData = {'greeting': greeting};
    final outputJson = jsonEncode(outputData);
    print(outputJson);
  }
}
