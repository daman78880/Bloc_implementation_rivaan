import 'package:bloc_implementation_rivaan/core/common/app_string.dart';
import 'package:bloc_implementation_rivaan/core/common/cubits/lanuage/lanuage_cubit.dart';
import 'package:bloc_implementation_rivaan/core/common/widgets/loader.dart';
import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_bloc.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/show_snackbar.dart';
import '../../../../init_dependencies.dart';
import '../bloc/home_event.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController controller;
  bool isPageLoading = false;

  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getInitialListing());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.home.getString(context),
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          GestureDetector(
              onTap: () {
                serviceLocator<LanguageCubit>().changeLang();
              //   var _localization = serviceLocator<FlutterLocalization>();
              //   print('localication ${_localization.currentLocale?.languageCode} first ${MapLocaleList.types[0].languageCode} second ${MapLocaleList.types[1].languageCode}');
              //   if( _localization.currentLocale?.languageCode == MapLocaleList.types[0].languageCode) {
              //   _localization.translate(MapLocaleList.types[1].languageCode);
              // }else{
              //   _localization.translate(MapLocaleList.types[0].languageCode);
              //   }
              },
              child: Icon(
                Icons.change_circle_outlined,
                size: 25.w,
                color: Colors.white,
              )),
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
              onTap: () => context
                  .read<HomeBloc>()
                  .add(const HomeEvent.getInitialListing()),
              child: Icon(
                Icons.refresh,
                size: 25.w,
                color: Colors.white,
              )),
          SizedBox(
            width: 18.w,
          )
        ],
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
                    if (value.loadingMore == null &&
                        value.loadMoreError == null) {
                      isPageLoading = false;
                    }
                  },
                  failure: (value) {
                    showSnackBar(context, value.msg);
                  },
                );
              },
              builder: (context, state) {
                print('inside state is ${state}');
                return state.maybeWhen(
                  emptyList: () {
                    return Expanded(
                      child: Center(
                        child: Text(
                          AppString.notFound.getString(context),
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    );
                  },
                  failure: (msg) {
                    return Expanded(
                      child: Center(
                        child: Text(
                          msg,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    );
                  },
                  orElse: () {
                    return const Expanded(child: const Center(child: Loader()));
                  },
                  listLoaded: (data, loadingMore, loadMoreError) {
                    return Expanded(
                      child: Column(
                        children: [
                          Expanded(
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
                          ),
                          loadingMore != null
                              ? Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        loadingMore.message,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const Loader()
                                    ],
                                  ),
                                )
                              : const SizedBox(),
                          loadMoreError != null
                              ? Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        loadMoreError.message,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      const Loader()
                                    ],
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter <= 0 && isPageLoading == false) {
      isPageLoading = true;
      context.read<HomeBloc>().add(const HomeEvent.getMoreListingData());
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
                errorWidget: (context, url, error) => const Icon(Icons.error),
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
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'Name : ${data.first_name} ${data.last_name}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Email : ${data.email}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
