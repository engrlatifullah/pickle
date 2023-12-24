class PostModel {
  final String ? name;
  final String ? description;
  final String ? profileImage;
  final String ? post;
  final int ? like;
  final int ? comment;
  final int ? save;
  final int ? share;
  final bool ? isVideo;

  PostModel({this.like, this.comment, this.save, this.share, this.description, this.profileImage, this.post, this.isVideo,
     this.name,
  });
}