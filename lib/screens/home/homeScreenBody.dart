import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/gap.dart';
import '../../components/textDisplay.dart';
import '../../constants.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  String customerAddress = "Plot no 74, Ripon Street";
  String article =
      "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~혹시 어떤 상품이 제일 괜찮았어? 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!";

  String subArticle =
      "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니꼭 봐주세용~!";
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0,
        bottom: 90, //display untill the height of bottom widget
        left: 0, right: 0,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleWidget(),
                const Gap(),
                articleWidget(),
                const Gap(),
                TextDisplay(
                    header: article,
                    color: kSubTextColor,
                    fs: 12,
                    fw: FontWeight.w500),
                const Gap(),
                tabs(),
                const Gap(),
                secondTabs(),
                const Gap(),
                image(),
                const Gap(),
                postSection(),
                const Gap(),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                ellipsis(),
                const SizedBox(
                  height: 8,
                ),
                secondPostSection(),
                const Gap(),
                thirdPostSection(),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
      Positioned(bottom: 0, left: 0, right: 0, child: chatSection())
    ]);
  }

  Container chatSection() {
    return Container(
      height: 100,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/gallery.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 16),
                const TextDisplay(
                    header: '댓글을 남겨주세요.',
                    color: iconColor,
                    fs: 12,
                    fw: FontWeight.w400),
              ],
            ),
            const TextDisplay(
                header: '등록', color: iconColor, fs: 12, fw: FontWeight.w400),
          ],
        ),
      ),
    );
  }

  Padding thirdPostSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 42.0),
      child: Column(
        children: [
          TextDisplay(
              header: subArticle,
              color: kSubTextColor,
              fs: 12,
              fw: FontWeight.w500),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/favorite.svg', color: iconColor),
              const SizedBox(width: 6),
              const TextDisplay(
                  header: '5',
                  color: iconTextColor,
                  fs: 12,
                  fw: FontWeight.w400),
              const SizedBox(width: 6),
              SvgPicture.asset(
                'assets/icons/chat.svg',
              ),
              const SizedBox(width: 6),
              const TextDisplay(
                  header: '6',
                  color: iconTextColor,
                  fs: 12,
                  fw: FontWeight.w400),
            ],
          ),
          ellipsis(),
          Row(
            children: [
              Image.asset(
                'assets/images/proSecond.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 6),
              const TextDisplay(
                  header: 'ㅇㅅㅇ',
                  color: kTextColor,
                  fs: 14,
                  fw: FontWeight.w700),
              const TextDisplay(
                  header: '1일전',
                  color: kTextFieldColor,
                  fs: 10,
                  fw: FontWeight.w500),
            ],
          ),
          const Gap(),
          Column(
            children: [
              const TextDisplay(
                  header: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                  color: kSubTextColor,
                  fs: 12,
                  fw: FontWeight.w400),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/favorite.svg',
                        color: iconColor),
                    const SizedBox(
                      width: 6,
                    ),
                    const TextDisplay(
                        header: '5',
                        color: iconTextColor,
                        fs: 12,
                        fw: FontWeight.w400),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row secondPostSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/proFirst.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 6),
            const TextDisplay(
                header: '안녕 나 응애 ',
                color: kTextColor,
                fs: 14,
                fw: FontWeight.w700),
            SvgPicture.asset(
              'assets/icons/ticked.svg',
            ),
            const TextDisplay(
                header: '1일전 ',
                color: kTextFieldColor,
                fs: 10,
                fw: FontWeight.w500),
            const TextDisplay(
                header: '1일전',
                color: kTextFieldColor,
                fs: 12,
                fw: FontWeight.w400),
          ],
        ),
        containerButton()
      ],
    );
  }

  Row postSection() {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/favorite.svg', color: iconColor),
        const SizedBox(width: 6),
        const TextDisplay(
            header: '5', color: iconTextColor, fs: 12, fw: FontWeight.w400),
        const SizedBox(width: 6),
        SvgPicture.asset(
          'assets/icons/chat.svg',
        ),
        const SizedBox(width: 6),
        const TextDisplay(
            header: '6', color: iconTextColor, fs: 12, fw: FontWeight.w400),
        const SizedBox(width: 6),
        SvgPicture.asset(
          'assets/icons/bookmark.svg',
        ),
        const SizedBox(width: 6),
        const TextDisplay(
            header: '...', color: iconTextColor, fs: 12, fw: FontWeight.w400),
      ],
    );
  }

  Image image() {
    return Image.asset(
        fit: BoxFit.cover,
        // height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        "assets/images/hyperImage.png");
  }

  Row secondTabs() {
    return Row(
      children: [
        categoryTabs("#WOW", "assets/icons/home.svg"),
        const SizedBox(
          width: 12,
        ),
        categoryTabs("#ROW IS MONDAY", "assets/icons/address.svg"),
      ],
    );
  }

  Row tabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        categoryTabs("#2023", "assets/icons/home.svg"),
        categoryTabs("#TODAY IS MONDAY", "assets/icons/address.svg"),
        categoryTabs("#TOP", "assets/icons/locationAlt.svg"),
        categoryTabs("#POPSI", "assets/icons/locationAlt.svg"),
      ],
    );
  }

  TextDisplay articleWidget() {
    return const TextDisplay(
        header: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
        color: kTextColor,
        fs: 18,
        fw: FontWeight.w700);
  }

  Row titleWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/proFirst.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 6),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TextDisplay(
                        header: '안녕 나 응애 ',
                        color: kTextColor,
                        fs: 14,
                        fw: FontWeight.w700),
                    SvgPicture.asset(
                      'assets/icons/ticked.svg',
                    ),
                    const TextDisplay(
                        header: '1일전 ',
                        color: kTextFieldColor,
                        fs: 10,
                        fw: FontWeight.w500),
                  ],
                ),
                const TextDisplay(
                    header: '165cm . 53kg ',
                    color: kTextFieldColor,
                    fs: 12,
                    fw: FontWeight.w400),
              ],
            ),
          ],
        ),
        containerButton(),
      ],
    );
  }

  Container containerButton() {
    return Container(
      width: 58,
      height: 34,
      //  margin: const EdgeInsets.all((20)),
      padding: const EdgeInsets.symmetric(
        horizontal: (10),
        vertical: (10),
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextDisplay(
          header: '팔로우', color: Colors.white, fs: 12, fw: FontWeight.w500),
    );
  }

  Align ellipsis() {
    return const Align(
      alignment: Alignment.centerRight,
      child: TextDisplay(
          header: '...', color: iconColor, fs: 20, fw: FontWeight.w800),
    );
  }

  GestureDetector categoryTabs(
    String header,
    String icon,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        //  margin: const EdgeInsets.all((20)),
        padding: const EdgeInsets.symmetric(
          horizontal: (10),
          vertical: (10),
        ),
        decoration: BoxDecoration(
          color: kGrey6,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            TextDisplay(
                header: header, color: kGrey3, fs: 12, fw: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
