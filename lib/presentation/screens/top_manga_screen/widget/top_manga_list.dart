import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/widget/manga_card.dart';
import 'package:flutter/material.dart';

class TopMangaList extends StatefulWidget {
  const TopMangaList({
    Key? key,
    required this.topMangaList,
    required this.isLastPage,
    required this.onFinishingScroll,
  }) : super(key: key);

  final List<Manga> topMangaList;
  final bool isLastPage;
  final VoidCallback onFinishingScroll;

  @override
  State<TopMangaList> createState() => _TopMangaListState();
}

class _TopMangaListState extends State<TopMangaList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >
              _scrollController.position.maxScrollExtent - 200 &&
          !widget.isLastPage) {
        widget.onFinishingScroll();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _scrollController,
      itemCount: widget.topMangaList.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1 / 1.4,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (index < widget.topMangaList.length) {
          return MangaCard(manga: widget.topMangaList[index],);
        } else {
          return Center(
            child: widget.isLastPage
                ? const Text(
                    'You\'ve reached the end of the list',
                    style: TextStyle(fontSize: 22),
                  )
                : const CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
