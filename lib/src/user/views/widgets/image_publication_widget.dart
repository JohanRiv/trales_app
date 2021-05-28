import 'package:flutter/material.dart';
import 'package:trales_app/src/user/views/widgets/image_card_widget.dart';
import 'package:trales_app/src/user/views/widgets/image_description_widget.dart';

class ImagePublicationWidget extends StatelessWidget {
  String imageCardPath = "";
  String siteName = "";
  String siteDescription = "";
  String siteSteps = "";

  ImagePublicationWidget(
      this.imageCardPath, this.siteName, this.siteDescription, this.siteSteps);

  @override
  Widget build(BuildContext context) {
    Container imageSitePublication = Container(
        height: 320,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment(0, 2.2),
              children: [
                ImageCardWidget(imageCardPath),
                ImageDescriptionWidget(siteName, siteDescription, siteSteps)
              ],
            )
          ],
        ));

    return imageSitePublication;
  }
}
