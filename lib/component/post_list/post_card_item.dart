import 'package:flutter/material.dart';

import '../../model/post_card_user.dart';
import '../../utils/util_colors.dart';
import '../../utils/util_text_style.dart';

class PostCardItem extends StatelessWidget {
  final PostCardUser postCardUser;

  const PostCardItem({
    super.key,
    required this.postCardUser,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(postCardUser.title,
                style: UtilTextStyle.textRobotoCondensed.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(height: 12),
            Row(
              children: [
                Image.asset('assets/location.png'),
                const SizedBox(width: 8),
                Text(postCardUser.location,
                    style: UtilTextStyle.textRobotoCondensed.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: UtilColors.lGrey))
              ],
            ),
            const SizedBox(height: 12),
            Text(postCardUser.message,
                style: UtilTextStyle.textRobotoCondensed.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w300, height: 1.6)),
            const SizedBox(height: 16),
            Text('Категорії',
                style: UtilTextStyle.textRobotoCondensed.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(height: 24),
            const Divider(
              height: 1,
              color: UtilColors.lGrey,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/message.png'),
                    const SizedBox(width: 8),
                    Text('${postCardUser.messageCount}',
                        style: UtilTextStyle.textRobotoCondensed.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: UtilColors.black)),
                  ],
                ),
                Row(
                  children: [
                    Text(postCardUser.urgently ? 'Tерміново' : 'Не терміново',
                        style: UtilTextStyle.textRobotoCondensed.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: UtilColors.black)),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/clock.png',
                      color: postCardUser.urgently
                          ? UtilColors.orange
                          : UtilColors.black,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
