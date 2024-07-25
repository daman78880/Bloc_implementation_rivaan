import 'package:bloc_implementation_rivaan/core/common/widgets/loader.dart';
import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_bloc.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  late ScrollController controller;
  bool isPageLoading = false;
  int pageNo = 1;
  var lst = [];

  @override
  void initState() {
    controller = new ScrollController()
      ..addListener(_scrollListener);
    context.read<HomeBloc>().add(const HomeEvent.getUserList(pageNo: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme
              .of(context)
              .appBarTheme
              .titleTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                          controller: controller,
                          physics: const RangeMaintainingScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return userItemWidget(data[index]);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 15.h,
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
            ),
            BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) {
                state.mapOrNull(
                  onPaginateLoad: (value) {
                    showSnackBar(context, 'User login successfully');
                  },
                  failure: (value) {
                    showSnackBar(context, value.msg);
                  },
                );
              }
            ,builder: (context, state) {
              return state.maybeWhen(onPaginateLoad: (data) {
                return Loader();
              },
              orElse: () {
                return Loader();
              },);
            })
          ],
        ),
      ),
    );
  }

  _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter <= 0 && isPageLoading == false) {
      pageNo = pageNo + 1;
      context.read<HomeBloc>().add(HomeEvent.getUserList(pageNo: pageNo));
    }
  }

  Widget userItemWidget(Data data) {
    return IntrinsicHeight(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox(
              width: 100.w,
              height: 100.w,
              child: CachedNetworkImage(
                imageUrl: data.avatar,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Id : ${data.id}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge,
                ),
                Text(
                  'Name : ${data.first_name} ${data.last_name}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
                ),
                Text(
                  'Email : ${data.email}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
