import 'package:bank_cards/bank_card_model.dart';
import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    Key? key,
    required this.bankCard,
  }) : super(key: key);

  final BankCardModel bankCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bankCard.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          35,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                child: Image.asset(
                  bankCard.icon,
                  height: 60,
                  width: 60,
                ),
              ),
              Text(
                bankCard.number,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.grey.shade800),
              )
            ],
          ),
          Text(
            "${bankCard.balance.toStringAsFixed(2)} сом",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
