import 'package:bloc_implementation_rivaan/core/common/widgets/loader.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_bloc.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/show_snackbar.dart';
import '../bloc/home_event.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.getUserList(pageNo: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'User list',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          BlocConsumer<HomeBloc, HomeState>(
            listener: (context, state) {
              state.mapOrNull(
                listLoaded: (value) {
                  showSnackBar(context, 'User login successfully');
                },
                failure: (value) {
                  showSnackBar(context, value.msg);
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                listLoaded: (data) {
                  return Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Text(
                            '${data[index].email}',
                            style: Theme.of(context).textTheme.headlineSmall,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10.h,
                          );
                        },
                        itemCount: data.length),
                  );
                },
                orElse: () {
                  return const Center(child: Loader());
                },
              );
            },
          )
        ],
      ),
    );
  }
}
