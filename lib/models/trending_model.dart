class TrendingModel {
  final String? imageLabel;
  final String? caption;
  final String? captionTwo;

  TrendingModel(
      {required this.imageLabel,
      required this.caption,
      required this.captionTwo});
}

List<TrendingModel> trendingList = [
  TrendingModel(
      imageLabel: 'clothing.jpeg',
      caption: 'Chic Clothing',
      captionTwo: 'Apparel'),
  TrendingModel(
      imageLabel: 'sunglasses.jpg',
      caption: 'Sunglasses',
      captionTwo: 'Apparel'),
  TrendingModel(
      imageLabel: 'blazer.jpeg',
      caption: 'Blazer Bonanza',
      captionTwo: 'Clothing'),
  TrendingModel(
      imageLabel: 'designer.jpeg',
      caption: 'Designer Discounts',
      captionTwo: 'Clothing'),
  TrendingModel(
      imageLabel: 'designer2.jpeg',
      caption: 'Designer Clothes',
      captionTwo: 'Clothing'),
  TrendingModel(
      imageLabel: 'sunglasses2.jpg',
      caption: 'Chic Sunglasses',
      captionTwo: 'Apparel'),
];
