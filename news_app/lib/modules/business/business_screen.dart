import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Layout/newsapp/cubit/cubit.dart';
import 'package:news_app/Layout/newsapp/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';

class BusinessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewsCubit,NewsStates>(
      listener: (context, state) {},
      builder: (context ,state){
        var list=NewsCubit.get(context).business;

        return  ConditionalBuilder(
          condition: list.length > 0,
          builder: (context) =>
              ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => builArticleItem(list[index]),
                separatorBuilder: (context,index)=> myDivider(),
                itemCount: list.length),
          fallback: (context)=> Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
