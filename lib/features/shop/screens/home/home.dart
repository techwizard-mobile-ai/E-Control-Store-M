import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_store/features/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../utils/constants/text_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.grey),
                        ),
                        Text(
                          TTexts.homeAppbarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: TColors.white),
                        ),
                      ],
                    ),
                    actions: [
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Iconsax.shopping_bag,
                                color: TColors.white,
                              )),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: TColors.black,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .apply(color: TColors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Add more widgets here to ensure the column has content
            // This is just for testing visibility
            // Container(
            //   height: 500, // Arbitrary height to see if it shows up
            //   color: Colors.red,
            //   child: Center(
            //     child: Text(
            //       "Content goes here",
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


