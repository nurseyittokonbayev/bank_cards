class BankCardModel {
  String image;
  String icon;
  String number;
  double balance;
  List<ExpenseModel> expenses;

  BankCardModel({
    required this.image,
    required this.icon,
    required this.number,
    required this.balance,
    this.expenses = const [],
  });
}

class ExpenseModel {
  String image;
  String title;
  String description;
  double amount;

  ExpenseModel({
    required this.image,
    required this.title,
    required this.description,
    required this.amount,
  });
}

final cards = [
  null,
  BankCardModel(
    image: 'assets/t.webp',
    icon: 'assets/el.png',
    number: "0912",
    balance: 345000,
    expenses: [
      ExpenseModel(
          image: 'assets/elek.png',
          title: "ОАО 'НЭСК' (Ош)",
          description: "Электр энергиясы үчүн",
          amount: 89)
    ],
  ),
  BankCardModel(
    image: 'assets/o.webp',
    icon: 'assets/aiyl.jpg',
    number: "0912",
    balance: 12300,
    expenses: [
      ExpenseModel(
        image: 'assets/glovo.jpg',
        title: "Glovo",
        description: "Жеткирүү кызматы",
        amount: 99,
      )
    ],
  ),
  BankCardModel(
    image: 'assets/kyrgyz.jpg',
    icon: 'assets/mega.png',
    number: "8743",
    balance: 78900,
    expenses: [
      ExpenseModel(
        image: 'assets/2.jpg',
        title: "Актан",
        description: "Акча которуулар",
        amount: 186,
      )
    ],
  ),
];

// bg_1 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink
// bg_2 : https://unsplash.com/photos/5LOhydOtTKU?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink