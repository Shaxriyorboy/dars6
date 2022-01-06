import 'package:flutter/material.dart';

class FristPage extends StatefulWidget {
  const FristPage({Key? key}) : super(key: key);

  @override
  _FristPageState createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {

  Widget _item(String image,String name,String text){
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade200),
        ),
      ),
      padding: EdgeInsets.only(left: 15, right: 15, top: 15,bottom: 15),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.keyboard_arrow_right),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          _item('assets/images/im_simple2.jpg', 'Laurent       20:18', 'how about metting tomorrow?'),
          _item('assets/images/im_simple2.jpg', 'Tracy       19:22', "I love thar idea, it's great!"),
          _item('assets/images/im_simple2.jpg', 'Claire       14:34', "I was not aware of that. Let me check"),
          _item('assets/images/im_simple2.jpg', 'Joe       11:05', 'Flutter just release1.0 offically.\nShould I go for it'),
          _item('assets/images/im_simple2.jpg', 'Mark       09:48', 'how about metting tomorrow?'),
          _item('assets/images/im_simple2.jpg', 'Williams       15:14', 'how about metting tomorrow?'),
          _item('assets/images/im_simple2.jpg', 'Simon       21:46', 'how about metting tomorrow?'),
        ],
      ),
    );
  }
}
