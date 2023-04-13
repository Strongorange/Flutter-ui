import 'package:flutter/material.dart';
import 'package:webtoon/widgets/currency_card.dart';
import 'package:webtoon/widgets/my_button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Welcom back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(
                          (0.8),
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyButton(
                          text: 'Transfer',
                          bgColor: Colors.amber,
                          textColor: Colors.black),
                      MyButton(
                          text: 'Request',
                          bgColor: Color(0xFFFF5C00),
                          textColor: Colors.white)
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 419',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    order: 1,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '55 364',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    order: 2,
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '55 364',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
