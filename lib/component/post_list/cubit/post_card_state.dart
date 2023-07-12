part of 'post_card_cubit.dart';

class PostCardState {
  const PostCardState({required this.postCardList});

  final List<PostCardUser> postCardList;

  PostCardState.initial() : postCardList = FakeUser.list;

  @override
  List<Object> get props => [postCardList];
}
