import 'package:flutter/material.dart';
import 'package:pawprints/utils/constants.dart';
import '../../widgets/widgets_import.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final List<FeedInformationWidget> feedItems = [
    FeedInformationWidget(
      imageAsset: 'https://cdn.shopify.com/s/files/1/0272/6838/2822/files/footer-image_c0dee0ea-9aef-41d5-87dc-dd566d342324_1400x.jpg?v=1614292410',
      title: 'The Benefits of Regular Exercise for Your Dog',
    ),
    FeedInformationWidget(
      imageAsset: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9KyrhD_zIeTWSl3kdUh0U1syG7aT1dKtI1Q&usqp=CAU',
      title: 'How to Keep Your Cat\'s Teeth Healthy',
    ),
    FeedInformationWidget(
      imageAsset: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9KyrhD_zIeTWSl3kdUh0U1syG7aT1dKtI1Q&usqp=CAU',
      title: 'The Best Foods to Feed Your Pet Snake',
    ),
    FeedInformationWidget(
      imageAsset: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9KyrhD_zIeTWSl3kdUh0U1syG7aT1dKtI1Q&usqp=CAU',
      title: 'Common Health Problems in Pet Birds',
    ),
    FeedInformationWidget(
      imageAsset: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9KyrhD_zIeTWSl3kdUh0U1syG7aT1dKtI1Q&usqp=CAU',
      title: 'What to Do If Your Hamster Has a Cold',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Pet Care Informations'),
        centerTitle: true,
      ),
      body: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 1,
          childAspectRatio: 1,
          children: feedItems
              .map((item) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeedInformationWidget(
                    imageAsset: item.imageAsset,
                    title: item.title,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      item.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
              .toList(),
        ),
    );
  }
}
