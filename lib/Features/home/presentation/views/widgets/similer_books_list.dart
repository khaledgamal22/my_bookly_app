import 'package:book_app/Features/home/presentation/view_models/similer_cubit/similer_cubit.dart';
import 'package:book_app/core/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerCubit, SimilerState>(
      builder: (context, state) {
        if(state is SimilerSuccess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.14,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child:  CustomBookImage(
                  imageUrl:state.books[index].volumeInfo.imageLinks!.thumbnail
                ),
              );
            },
          ),
        );
        }
        else if(state is SimilerFailure){
          return CustomError(errorMessage: state.errorMessage);
        }
        else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
    ;
  }
}
