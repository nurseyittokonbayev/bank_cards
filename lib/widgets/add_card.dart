import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            "Картаңыздын номери",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
        ),
        Expanded(
          flex: 2,
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(9, (index) => index + 1)
                .map(
                  (e) => Center(
                    child: Text(
                      e.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(
              const Size(
                double.infinity,
                60,
              ),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF000022),
              ),
              child: const Text(
                "Картаны сактоо",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        )
      ],
    );
  }
}
