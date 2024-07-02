class MImage {
  const MImage({
    required this.id,
    required this.assetImage,
    required this.description,
  });

  final String id;
  final String assetImage;
  final String description;
  static final List<MImage> fakeMImagesValues = List.generate(
    5,
        (index) => MImage(
      id: '$index',
      assetImage: 'assets/img/mimg${index + 1}.jpg',
      description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting ',
    ),
  );
}
