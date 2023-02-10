import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Container gridItem(String imageUrl, String name, String price, Function() onClick) {
  return Container(
    padding: const EdgeInsets.all(5),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xffffffff)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          height: 90,
        ),
        Text(
          name,
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          overflow: TextOverflow.visible,
          maxLines: 1,
        ),

        Text(
          price,
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          child: MaterialButton(
            onPressed: () {
              onClick.call();
            },
            child: const Text("купить", textAlign: TextAlign.center, style: TextStyle(color: Colors.black,  fontStyle: FontStyle.italic),),
          ),
        )
      ],
    ),
  );
}
