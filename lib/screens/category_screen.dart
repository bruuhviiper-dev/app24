import 'package:flutter/material.dart';

import '../data/models.dart';
import '../widgets/banner_ad.dart';
import '../widgets/verse_tile.dart';

/// Lista de versículos de uma categoria, com banner ancorado no rodapé.
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final VerseCategory category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${category.emoji}  ${category.name}')),
      body: SafeArea(
        top: false,
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 12, bottom: 24),
          itemCount: category.verses.length,
          itemBuilder: (context, i) => VerseTile(verse: category.verses[i]),
        ),
      ),
      bottomNavigationBar: const BannerPlaceholder(),
    );
  }
}
