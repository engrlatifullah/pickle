import 'package:flutter/material.dart';
import 'package:pickle/utils/app_text_style.dart';
import 'package:pickle/utils/globel.dart';
class WishListApp extends StatelessWidget {
  const WishListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text("WhishList",style: AppTextStyles.mediumStyle,),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: postData.length,
            itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(postData[index].post!),
                ),
                title: Text(postData[index].name!),
                subtitle: Text("subTitle"),
              ),
            );
          },))
        ],
      ),
    );
  }
}
