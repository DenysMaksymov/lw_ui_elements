import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../post_list/cubit/post_card_cubit.dart';
import '../post_list/post_card_item.dart';

class PostRequests extends StatelessWidget {
  const PostRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCardCubit>(
      create: (context) => PostCardCubit(),
      child: BlocBuilder<PostCardCubit, PostCardState>(
        builder: (context, state) {
          return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              itemCount: state.postCardList.length,
              itemBuilder: (_, index) {
                return PostCardItem(postCardUser: state.postCardList[index]);
              });
        },
      ),
    );
  }
}
