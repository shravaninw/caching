import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
          CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__480.jpg'),
          CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  'https://images.ctfassets.net/hrltx12pl8hq/66lRNN2kfHcVSUMrmrcKxf/76b78071032586ff9766d8eb51592f21/free-nature-images.jpg?fit=fill&w=840&h=350'),
          CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  'https://images.unsplash.com/photo-1444703686981-a3abbc4d4fe3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80')
        ],
      ),
    );
  }
}
