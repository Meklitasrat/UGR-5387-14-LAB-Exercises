import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  // Simulating a network delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // Simulating fetching a random quote
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
  ];

  Random random = Random();
  int randomIndex = random.nextInt(quotes.length);
  String randomQuote = quotes[randomIndex];

  return randomQuote;
}

void main() async {
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}
