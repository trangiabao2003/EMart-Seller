import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //swiper section
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,

                  //title and details section
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,

                  //rating
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),

                  10.heightBox,
                  '\$30,000'
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),

                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          'In House Brands'
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),

                  // color section
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 6))
                                    .make()),
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              '0'
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                              10.heightBox,
                              '(0 available)'.text.color(textfieldGrey).make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //total row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          '\$0.00'.text.color(redColor).fontFamily(bold).make(),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),

                  //description section
                  10.heightBox,
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  "This is a dumpy item and dumpy description here ... Losem ismperium  id meteba diahd ahhs da adDS Adhfha"
                      .text
                      .color(darkFontGrey)
                      .make(),

                  //buttons section
                  10.heightBox,

                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        itemDetailButtonList.length,
                        (index) => ListTile(
                              title: itemDetailButtonList[index]
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              trailing: const Icon(Icons.arrow_forward),
                            )),
                  ),
                  20.heightBox,
                  productsyoumaylike.text
                      .fontFamily(bold)
                      .size(16)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            6,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 130,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "Laptop 8GB/256GB"
                                        .text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .make(),
                                    10.heightBox,
                                    "\$600"
                                        .text
                                        .color(redColor)
                                        .fontFamily(bold)
                                        .size(16)
                                        .make(),
                                    10.heightBox,
                                  ],
                                )
                                    .box
                                    .white
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .roundedSM
                                    .padding(const EdgeInsets.all(8))
                                    .make()),
                      ))
                ],
                //here our details UI is also completed...
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Add to cart"),
          )
        ],
      ),
    );
  }
}
