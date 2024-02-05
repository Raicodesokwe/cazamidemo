class ImageModel {
  final String? imageLabel;
  final String? caption;

  ImageModel({required this.imageLabel, required this.caption});
}

List<ImageModel> imageList = [
  ImageModel(imageLabel: 'dress.png', caption: 'Cute dresses at 30€'),
  ImageModel(imageLabel: 'wig.png', caption: 'New stock alert🔥'),
  ImageModel(imageLabel: 'shampoo.jpeg', caption: '✨Skincare girlies✨'),
  ImageModel(imageLabel: 'nails.png', caption: 'Get you glow on'),
  ImageModel(imageLabel: 'woman.jpeg', caption: 'Greenshampoo🟢'),
];
