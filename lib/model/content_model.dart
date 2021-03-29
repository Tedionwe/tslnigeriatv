class SplashContent {
  String image;
  String title;
  String discription;

  SplashContent({this.image, this.title, this.discription});
}

List<SplashContent> contents = [
  SplashContent(
      title: 'Access news on the go',
      image: 'images/onboarding/1.svg',
      discription:
          "Quickly view your recommended news and stay up to date on \n Tslnigeria tv analysis."),
  SplashContent(
      title: 'Easily share insights',
      image: 'images/onboarding/2.svg',
      discription:
          "Share relevant articles, reports and analysis with friends and\n colleagues."),
  SplashContent(
      title: 'Get real-time updates',
      image: 'images/onboarding/3.svg',
      discription:
          "Be the first to know when a Latest news publishes\n thanks to mobile alerts."),
];
