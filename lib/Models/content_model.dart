class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent({this.image, this.title, this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Quality',
    image: 'assets/images/GettingStartedRider.jpg',
    description: "Enjoy our quality delivery services at an affordable price "
  ),
  UnbordingContent(
    title: 'Fast',
    image: 'assets/images/delivery2.jpg',
    description: "Your product is delivered to you right on time"
  ),
  UnbordingContent(
    title: 'Secure',
    image: 'assets/images/delivery3.jpg',
    description: "Your products are secure and safe till it gets to your door step"
  ),
];
