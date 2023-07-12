import 'package:bloc/bloc.dart';

import '../../../fake_data/fake_user.dart';
import '../../../model/post_card_user.dart';

part 'post_card_state.dart';

class PostCardCubit extends Cubit<PostCardState> {
  PostCardCubit() : super( PostCardState.initial());
}
