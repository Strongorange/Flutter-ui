import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.isInverted,
    required this.icon,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, ((order - 1) * -20)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color:
              !isInverted ? const Color(0xFF1F2123) : const Color(0xFFffffff),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: !isInverted ? Colors.white : _blackColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: !isInverted ? Colors.white : _blackColor,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                          color: !isInverted
                              ? Colors.white.withOpacity(0.8)
                              : _blackColor,
                          fontSize: 20),
                    ),
                  ],
                ),
              ]),
              Transform.scale(
                scale: 2.5,
                child: Transform.translate(
                  offset: const Offset(-5, 9),
                  child: Icon(
                    icon,
                    color: !isInverted ? Colors.white : _blackColor,
                    size: 78,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
