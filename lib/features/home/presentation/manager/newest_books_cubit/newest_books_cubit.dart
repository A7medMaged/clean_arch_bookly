import 'package:bookly_ca/features/home/domain/entities/book_entity.dart';
import 'package:bookly_ca/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.message));
      },
      (success) {
        emit(NewestBooksSuccess(success));
      },
    );
  }
}
