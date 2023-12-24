import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickle/screens/bottom_nav_bar/profile_screen/profile_screen.dart';
import 'package:pickle/screens/bottom_nav_bar/upload_screen/upload_image_screen/upload_image_screen.dart';

import '../models/intrest_model.dart';
import '../models/poll_model.dart';
import '../models/post_model.dart';
import '../screens/bottom_nav_bar/home_screen/home_screen.dart';
import '../screens/bottom_nav_bar/search_screen/search_screen.dart';
import '../screens/bottom_nav_bar/upload_screen/upload_video_screen/upload_video_screen.dart';
import '../screens/bottom_nav_bar/wishlist_screen/wishlist_screen.dart';
import 'navigations.dart';

int currentIndex = 0;

final List pages = [
  const HomeScreen(),
  const SearchScreen(),
  const WishListApp(),
  const ProfileScreen(),
];

final List<PostModel> postData = [
  PostModel(
      name: "Asad",
      description:
      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
      profileImage:
      "http://www.goodmorningimagesdownload.com/wp-content/uploads/2023/02/Cartoon-Whatsapp-DP-Images-1.jpg",
      post: "https://images.unsplash.com/photo-1689164712603-7122c72ddef6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      like: 100,
      comment: 30,
      save: 50,
      share: 77,


      isVideo: false),
  PostModel(
    name: "Ihsan",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: true,
    profileImage:
    "https://gyanvaan.com/wp-content/uploads/2023/04/whatsapp-DP-images-for-girl-free-download-1.jpg",
    post:
    "https://plus.unsplash.com/premium_photo-1681819359214-a6b4263c6d0f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    like: 450,
    comment: 33,
    save: 66,
    share: 22,
  ),
  PostModel(
    name: "Hamad",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: false,
    post:
    "https://images.unsplash.com/photo-1689631281436-0123773c8cff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
    profileImage:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi4mPLk79rZPDlZYviOnTsOOLdkVkuDp6AIyZ1VaNWnyG_eWSutS-z4zGyO-tVO4v0vif5IowGioP-MNdNF7N2-auRr25mjEYid3oFOoaM6JYJaivP7i684Y8n2hlCx8UB0I9VeWwlfWu_ODc3VlgPhBUq9J0-BB68EeiC8ws3x06cDaDVXZ_imCBj7/w426-h640/2450512392f5ab95912f5eefa3ea230f.jpg",
    like: 100,
    comment: 30,
    save: 50,
    share: 77,

  ),
  PostModel(
    name: "Hayat",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: true,
    post:
    "https://images.unsplash.com/photo-1646206272308-1c5a2dd21475?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=418&q=80",
    profileImage:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjk7cNwaG3Rhi-1205jQ3ecnQXjYMOve2g8wUhPMPQ-gPwBhU-nxbyrrfUm-eZjdoC4SLsNqX_c6yk4RTx5vZPGm6JHg8xDdfh9lQRiRJROTF5wjyd11tMuWQNDa1Y7l3FqS5e7un1ZWgBkOAsejkmdU122TcRpcHSHELif3veCRjFMhdpmusf7pBzr/w640-h428/pexels-photo-301977.jpeg",
    like: 909,
    comment: 22,
    save: 44,
    share: 66,

  ),
  PostModel(
    name: "Asad",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: false,
    post:
    "http://www.goodmorningimagesdownload.com/wp-content/uploads/2023/02/Cartoon-Whatsapp-DP-Images-1.jpg",
    profileImage:
    "http://www.goodmorningimagesdownload.com/wp-content/uploads/2023/02/Cartoon-Whatsapp-DP-Images-1.jpg",
    like: 909,
    comment: 22,
    save: 44,
    share: 66,
  ),
  PostModel(
    name: "Ihsan",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: true,
    post:
    "https://gyanvaan.com/wp-content/uploads/2023/04/whatsapp-DP-images-for-girl-free-download-1.jpg",
    profileImage:
    "https://gyanvaan.com/wp-content/uploads/2023/04/whatsapp-DP-images-for-girl-free-download-1.jpg",
    like: 123,
    comment: 44,
    save: 77,
    share: 66,

  ),
  PostModel(
    name: "Hamad",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: true,
    post:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi4mPLk79rZPDlZYviOnTsOOLdkVkuDp6AIyZ1VaNWnyG_eWSutS-z4zGyO-tVO4v0vif5IowGioP-MNdNF7N2-auRr25mjEYid3oFOoaM6JYJaivP7i684Y8n2hlCx8UB0I9VeWwlfWu_ODc3VlgPhBUq9J0-BB68EeiC8ws3x06cDaDVXZ_imCBj7/w426-h640/2450512392f5ab95912f5eefa3ea230f.jpg",
    profileImage:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi4mPLk79rZPDlZYviOnTsOOLdkVkuDp6AIyZ1VaNWnyG_eWSutS-z4zGyO-tVO4v0vif5IowGioP-MNdNF7N2-auRr25mjEYid3oFOoaM6JYJaivP7i684Y8n2hlCx8UB0I9VeWwlfWu_ODc3VlgPhBUq9J0-BB68EeiC8ws3x06cDaDVXZ_imCBj7/w426-h640/2450512392f5ab95912f5eefa3ea230f.jpg",
    like: 909,
    comment: 22,
    save: 44,
    share: 66,

  ),
  PostModel(
    name: "Hamad",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: false,
    post:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi4mPLk79rZPDlZYviOnTsOOLdkVkuDp6AIyZ1VaNWnyG_eWSutS-z4zGyO-tVO4v0vif5IowGioP-MNdNF7N2-auRr25mjEYid3oFOoaM6JYJaivP7i684Y8n2hlCx8UB0I9VeWwlfWu_ODc3VlgPhBUq9J0-BB68EeiC8ws3x06cDaDVXZ_imCBj7/w426-h640/2450512392f5ab95912f5eefa3ea230f.jpg",
    profileImage:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi4mPLk79rZPDlZYviOnTsOOLdkVkuDp6AIyZ1VaNWnyG_eWSutS-z4zGyO-tVO4v0vif5IowGioP-MNdNF7N2-auRr25mjEYid3oFOoaM6JYJaivP7i684Y8n2hlCx8UB0I9VeWwlfWu_ODc3VlgPhBUq9J0-BB68EeiC8ws3x06cDaDVXZ_imCBj7/w426-h640/2450512392f5ab95912f5eefa3ea230f.jpg",
    like: 11,
    comment: 3,
    save: 44,
    share: 66,
  ),
  PostModel(
    name: "Asif",
    description:
    "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
    isVideo: true,
    post:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjk7cNwaG3Rhi-1205jQ3ecnQXjYMOve2g8wUhPMPQ-gPwBhU-nxbyrrfUm-eZjdoC4SLsNqX_c6yk4RTx5vZPGm6JHg8xDdfh9lQRiRJROTF5wjyd11tMuWQNDa1Y7l3FqS5e7un1ZWgBkOAsejkmdU122TcRpcHSHELif3veCRjFMhdpmusf7pBzr/w640-h428/pexels-photo-301977.jpeg",
    profileImage:
    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjk7cNwaG3Rhi-1205jQ3ecnQXjYMOve2g8wUhPMPQ-gPwBhU-nxbyrrfUm-eZjdoC4SLsNqX_c6yk4RTx5vZPGm6JHg8xDdfh9lQRiRJROTF5wjyd11tMuWQNDa1Y7l3FqS5e7un1ZWgBkOAsejkmdU122TcRpcHSHELif3veCRjFMhdpmusf7pBzr/w640-h428/pexels-photo-301977.jpeg",
    like: 909,
    comment: 22,
    save: 44,
    share: 66,
  ),
];

final List<PollModel> questions = [
  PollModel(
      question: "Which planet is known as the Red Planet?",
      options: [
        PollOption(
            option: "J.K. Rowling",
            vote: 5
        ),
        PollOption(
            option: "Stephen King",
            vote: 3
        ),
        PollOption(
            option: " George R.R. Martin",
            vote: 3
        ),
      ]
  ),
  // PollModel(
  //   question: "What is the chemical symbol for water?",
  //   option: [
  //     PollOption(
  //       option: "H2O",
  //       vote: 2
  //     ),
  //     PollOption(
  //       option: "CO2",
  //       vote: 6
  //     ),
  //     PollOption(
  //       option: "O2",
  //       vote: 8
  //     ),
  //     PollOption(
  //       option: "N2",
  //       vote: 6
  //     ),
  //   ]
  // ),
];


final List options = ['Dart', 'Java', 'Swift', 'C#'];
final List<InterestModel> interestOption = [
  InterestModel(title: "Sports", image:'assets/sports.jpg'),
  InterestModel(title: "Politics", image:'assets/politics.jpg'),
  InterestModel(title: "Family", image:'assets/family.jpg'),
  InterestModel(title: "Relationship", image:'assets/relationship.jpg'),
  InterestModel(title: "Fashion", image:'assets/fashion.jpg'),
  InterestModel(title: "Technology", image:'assets/technology.jpg'),
  InterestModel(title: "Food", image:'assets/technology.jpg'),
  InterestModel(title: "History", image:'assets/history.jpg'),
  InterestModel(title: "Work", image:'assets/work.jpg'),
  InterestModel(title: "Travel", image:'assets/travel.jpg'),
  InterestModel(title: "Music", image:'assets/music.jpg'),
  InterestModel(title: "Entertainment", image:'assets/entertainment.jpg'),
  InterestModel(title: "Cooking", image:'assets/cook.jpg'),
  InterestModel(title: "Culture", image:'assets/culture.jpg'),
  InterestModel(title: "Books", image:'assets/book.jpg'),
];


//Functions


pickVideo(BuildContext context) async {
  await ImagePicker().pickVideo(source: ImageSource.gallery).then((value) {
    navigateWithPush(
        context: context, pageName: UploadVideoScreen(video: value!.path,));
  });
}

pickImage(BuildContext context) async {
  final vid = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (vid != null) {
    navigateWithPush(
        context: context, pageName: UploadImageScreen(image: vid.path,));
  }
}
