import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentCard extends StatefulWidget {
  final snap;
  const CommentCard({super.key,required this.snap});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Container(
        // color: Colors.amber,
        child: Row(
          children: [
             CircleAvatar(
              backgroundImage: NetworkImage(
                widget.snap['profilePic']??'https://th.bing.com/th/id/OIF.u95OXogCL9aovMznaZpSZw?pid=ImgDet&rs=1'
              ),
              radius: 18,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text:  TextSpan(
                        children: [
                          TextSpan(
                            text: widget.snap['username'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '${widget.snap['text']}',
                          ),
                        ],
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        DateFormat.yMMMd().format(
                          widget.snap['datePublished'].toDate()
                        ),
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Icon(
              Icons.favorite,
            ),
          ],
        ),
      ),
    );
  }
}
