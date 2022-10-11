class OnBoardingModel {
  final String image;
  final String title;
  final String description;
  final String buttonText;

  OnBoardingModel({
    required this.buttonText,
    required this.description,
    required this.image,
    required this.title,
    // required this.onPressed
  });
}

List<OnBoardingModel> contents = [

  OnBoardingModel(
      buttonText: 'Next',
      description:
          'What this means is that you can buy stocks in your favorite companies easily',
      image: 'assets/images/ob1.png',
      title:
          '''We level the field by giving you access to tokenized commodity'''),
  OnBoardingModel(
      buttonText: 'Next',
      description:
          'Your capital is as secured as a bank vault, even better, you only have access to it',
      image: 'assets/images/ob2.png',
      title:
          'You’re taking a hunch to trust us, so we promise to protect your account'),
  OnBoardingModel(
      buttonText: "Next",
      description:
          'A secure and easy medium through which you can trade your tokens',
      image: 'assets/images/ob3.png',
      title:
          'Liquidate instantly or keep building your portfolio is totally up to you'),
];
