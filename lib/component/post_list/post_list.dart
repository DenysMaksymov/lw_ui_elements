import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_project/component/post_list/post_card_item.dart';
import 'cubit/post_card_cubit.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCardCubit>(
      create: (context) => PostCardCubit(),
      child: BlocBuilder<PostCardCubit, PostCardState>(
        builder: (context, state) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.postCardList.length,
              itemBuilder: (_, index) {
                return PostCardItem(postCardUser: state.postCardList[index]);
              });
        },
      ),
    );
  }
}
