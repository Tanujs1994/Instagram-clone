import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

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
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://media.istockphoto.com/id/1216277299/photo/portrait-of-young-woman-hugging-her-dog.jpg?s=1024x1024&w=is&k=20&c=zVDHNXVfKtfSQbAprZyNgSmpTL_OXZKDGJZp9kzCp5w=',
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
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Username',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'some description to insert',
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        '23/10/2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.favorite,
            ),

          ],
        ),
        
        
      ),

    );
  }
}
