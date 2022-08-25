class OnBoardingModel {
  String image;
  String title;
  String description;
  OnBoardingModel(
      {required this.image, required this.title, required this.description});
}

List<OnBoardingModel> data = [
  OnBoardingModel(
    image: 'assets/images/topUpCredit.png',
    title: 'change text',
    description: 'We can change this text We can change this text',
  ),
  OnBoardingModel(
      image: 'assets/images/urgent.png',
      title: 'change  text',
      description:
          'We can change this text We and adding more pages easly and adding more pages easly'),
  OnBoardingModel(
      image: 'assets/images/paymentInformation.png',
      title: 'change  text',
      description:
          'We can change this text We and adding more pages easly and adding more pages easly'),
];
