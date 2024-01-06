import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class LinkPreview extends StatelessWidget {
  final String url;
  const LinkPreview({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return AnyLinkPreview(
              link: url != ""?url: "https://www.youtube.com/watch?v=tK5lwBSVdEc",
              displayDirection: UIDirection.uiDirectionHorizontal,
              showMultimedia: true,
              bodyMaxLines: 10,

              previewHeight: 80,

              bodyTextOverflow: TextOverflow.ellipsis,
              titleStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              bodyStyle: TextStyle(color: Constants.black, fontSize: 12),
              errorBody: 'Link Not found',
              errorTitle: 'Show my custom error title',
              errorWidget: Container(
                color: Colors.grey[300],
                child: Text('Oops!'),
              ),
              errorImage: "https://google.com/",
              cache: Duration(days: 1),
              backgroundColor: Colors.white,
              borderRadius: 12,
              removeElevation: false,
              boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey)],
              onTap: () {}, // This disables tap event
            );
  }
}