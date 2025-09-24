import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/image_preview.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/widgets_exports.dart';
import 'package:reyna_solution_app/src/utils/utils_export.dart';

class GalleryView extends StatefulWidget {
  final bool isDark;

  const GalleryView({super.key, required this.isDark});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  final Map<String, List<String>> imageSections = {
    "Celebrations": [
      'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
      'https://fastly.picsum.photos/id/391/200/200.jpg?hmac=eWWXf2lLHPoO-zrpo97Q3ViRD7KFeO4CborOD3CC4AU',
      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      'https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s'
    ],
    "Important Events": [
      'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
      'https://fastly.picsum.photos/id/391/200/200.jpg?hmac=eWWXf2lLHPoO-zrpo97Q3ViRD7KFeO4CborOD3CC4AU',
      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      'https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s'
    ],
    "Functions": [
      'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
      'https://fastly.picsum.photos/id/391/200/200.jpg?hmac=eWWXf2lLHPoO-zrpo97Q3ViRD7KFeO4CborOD3CC4AU',
      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      'https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s',
      'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
      'https://fastly.picsum.photos/id/391/200/200.jpg?hmac=eWWXf2lLHPoO-zrpo97Q3ViRD7KFeO4CborOD3CC4AU',
      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      'https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s',
      'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
      'https://fastly.picsum.photos/id/391/200/200.jpg?hmac=eWWXf2lLHPoO-zrpo97Q3ViRD7KFeO4CborOD3CC4AU',
      'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
      'https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s'
    ],
  };

  @override
  Widget build(BuildContext context) {
    return BackgroundUi(
      isDark: widget.isDark,
      otherWidget: Scaffold(
        appBar: MyAppBar(
          title: '',
          centerTitle: false,
          isIcon: true,
          backBtn: false,
          isDark: widget.isDark,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: AppColors.transparentColor,
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: imageSections.entries.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBox10(),
                AppText(
                  text: entry.key,
                  style: widget.isDark
                      ? FontTypography.fontStyle18PrimarySemi
                          .copyWith(fontSize: 20.0)
                      : FontTypography.fontStyle16BlackSemi
                          .copyWith(fontSize: 20.0),
                ),
                sizedBox10(),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: entry.value.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    final imageUrl = entry.value[index];
                    return SizedBox(
                      width: 100,
                      height: 100,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ImagePreviewScreen(
                                imageUrl: imageUrl,
                                isDark: widget.isDark,
                              ),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            entry.value[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                sizedBox20(),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
