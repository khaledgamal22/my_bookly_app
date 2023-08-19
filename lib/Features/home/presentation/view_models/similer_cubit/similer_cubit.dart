
import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_state.dart';

class SimilerCubit extends Cubit<SimilerState> {
  SimilerCubit(this.homeRepo) : super(SimilerInitial());

  final HomeRepo homeRepo;
  Future<void> getsimiler({required String category}) async {
    emit(SimilerLoading());
    var data = await homeRepo.fetechSimilerBooks(category: category);

    data.fold((failre) {
      emit(SimilerFailure(failre.errorMessage));
    }, (books) {
      emit(SimilerSuccess(books));
    });
  }
}
