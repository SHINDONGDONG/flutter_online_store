import 'package:flutter/cupertino.dart';

class ReadMoreTextItem extends StatefulWidget {
  const ReadMoreTextItem({Key? key}) : super(key: key);

  @override
  State<ReadMoreTextItem> createState() => _ReadMoreTextItemState();
}

class _ReadMoreTextItemState extends State<ReadMoreTextItem> {
  bool isCheckedForMore = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      height: isCheckedForMore ? 90 : 50,
      padding: EdgeInsets.all(5),
      curve: Curves.ease,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isCheckedForMore = !isCheckedForMore;
          });
        },
        child: Text(
          "The proat studio Thinnest laptops Fearthdn Grapidcnd worldThe "
              "proat studio Thinnest laptops Fearthdn Grapidcnd worldThe proat "
              "studio Thinnest laptops Fearthdn Grapidcnd world",
          maxLines: isCheckedForMore ? 500 : 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
