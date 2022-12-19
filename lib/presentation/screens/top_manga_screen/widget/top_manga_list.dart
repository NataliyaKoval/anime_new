import 'package:anime_new/domain/models/models.dart';
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
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemCount: widget.topMangaList.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index < widget.topMangaList.length) {
          return SizedBox(
            height: 120,
            child: Card(
              color: Colors.black,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Text(
                widget.topMangaList[index].title,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
            ),
          );
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
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 20),
    );
  }
}
