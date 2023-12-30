import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/layout/shop_app/cubit/cubit.dart';
import 'package:new_flutter_udemy2/layout/shop_app/cubit/states.dart';
import 'package:new_flutter_udemy2/models/shopApp/home_model.dart';
import 'package:new_flutter_udemy2/modules/shop_app/products/description.dart';
import 'package:new_flutter_udemy2/shared/network/local/cache_helper.dart';
import 'package:new_flutter_udemy2/shared/styles/colors.dart';
import '../../../models/shopApp/categories_model.dart';
import '../../../shared/components/components.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopLayoutState>(
      builder: (context, state) {
        var cubit = ShopCubit.get(context);
        return ConditionalBuilder(
          condition: cubit.homeModel != null && cubit.categoriesModel != null,
          builder: (context) =>
              productsBuilder(cubit.homeModel, cubit.categoriesModel, context),
          fallback: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
      },
      listener: (context, state) {
        if (state is ChangeIsFavoriteErrorState) {
          // showMsg(msg: state.model.message, state: ToastStates.error);
        } else if (state is ChangeIsFavoriteSuccessState &&
            !state.model.status) {
          // showMsg(msg: state.model.message, state: ToastStates.warning);
        }
      },
    );
  }

  Widget productsBuilder(HomeModel? model, CategoriesModel? categoriesModel, context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: model?.data?.banners!
                .map((e) => CachedNetworkImage(
                      imageUrl: e.image,
                      errorWidget: (context, url, error) => const Image(
                        image: AssetImage(
                            'D:\flutter project\new_flutter_udemy\assets\images\bannerImageError.PNG'),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              height: 200,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              viewportFraction: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return buildCategoryItem(
                          categoriesModel?.data.data[index]);
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemCount: categoriesModel?.data.data.length ?? 0,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'New Products',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridView.count(
                childAspectRatio: 1 / 1.52,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: List.generate(
                  model?.data?.products.length ?? 0,
                  (index) =>
                      buildGridProduct(model!.data!.products[index], context),
                ),
                // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryItem(DataModel? model) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CachedNetworkImage(
            imageUrl: model?.image ?? '',
            fit: BoxFit.fill,
            width: 120,
            height: 110,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
          ),
          Container(
            color: Colors.grey.withOpacity(.5),
            width: 120,
            height: 15,
            child: Text(
              model?.name ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                  height: 1.5),
              maxLines: 1,
            ),
          ),
        ],
      );

  Widget buildGridProduct(ProductsModel model, context) {
    return Container(
      color: CacheHelper.getData(key: 'isDark') ? Colors.black : Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            height: 160,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CachedNetworkImage(
                  imageUrl: model.image,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  fit: BoxFit.cover,
                  height: 160,
                  width: double.infinity,
                ),
                if (model.inCart == false)
                  Container(
                    width: double.infinity,
                    height: 35,
                    color: Colors.grey.withOpacity(.5),
                    child: IconButton(
                      onPressed: () {
                        ShopCubit.get(context).removeOrAddCart(
                          model.id,
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                if (model.discount != 0)
                  Container(
                    padding: const EdgeInsets.all(2),
                    color: Colors.red,
                    child: const Text(
                      'Discount',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: CacheHelper.getData(key: 'isDark')
                ? Colors.black
                : Colors.white,
            height: 101,
            width: double.infinity,
            child: InkWell(
              onTap: () {
                navigateTo(
                  context,
                  widget: Description(
                      description: model.description, images: model.images),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          height: 1.5,
                          overflow: TextOverflow.ellipsis,
                        ),
                    maxLines: 2,
                  ),
                  const Spacer(),
                  Row(children: [
                    Text(
                      '${model.price.round()}',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: defaultColor,
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    if (model.discount != 0)
                      Text(
                        '${model.oldPrice.round()}',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                      ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        ShopCubit.get(context).postFavorites(model.id);
                      },
                      icon: CircleAvatar(
                        backgroundColor:
                            ShopCubit.get(context).isInFavorites[model.id] ==
                                    true
                                ? defaultColor
                                : Colors.grey,
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
