import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_debounce/easy_debounce.dart';

import 'package:peliculas/models/models.dart';
import 'package:peliculas/providers/providers.dart';
import 'package:peliculas/screens/screens.dart';

class MovieSearch extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Buscar';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Icon(
          Icons.movie,
          color: Colors.black,
          size: 133,
        ),
      );
    }

    return SearchSuggestions(query: query.trim());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Icon(
          Icons.movie,
          color: Colors.black,
          size: 133,
        ),
      );
    }

    return SearchSuggestions(query: query.trim());
  }
}

class SearchSuggestions extends ConsumerStatefulWidget {
  final String query;

  const SearchSuggestions({super.key, required this.query});

  @override
  ConsumerState<SearchSuggestions> createState() => _SearchSuggestionsState();
}

class _SearchSuggestionsState extends ConsumerState<SearchSuggestions> {
  @override
  void dispose() {
    EasyDebounce.cancelAll();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Result>> search = ref.watch(getSearchProvider);

    EasyDebounce.debounce(
      'suggestion',
      const Duration(milliseconds: 444),
      () {
        if (ref.read(queryProvider) != widget.query) {
          ref.read(queryProvider.notifier).state = widget.query;
          debugPrint('Llamada a debounce. query: ${widget.query}');
        }
      },
    );

    return search.when(
      data: (data) {
        return Container(
          margin: const EdgeInsets.only(top: 3, bottom: 7),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                height: 66,
                alignment: Alignment.center,
                child: ListTile(
                  dense: true,
                  visualDensity: const VisualDensity(vertical: 4),
                  leading: Hero(
                    tag: Key('${data[index].id}'),
                    child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: 'assets/images/no-image.jpg',
                      image:
                          'https://image.tmdb.org/t/p/w500${data[index].poster_path}',
                      imageErrorBuilder: (context, error, stackTrace) =>
                          Image.asset(
                        'assets/images/no-image.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    data[index].title!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    ref.read(selectedMovieProvider.notifier).state =
                        data[index].copyWith();
                    ref.read(keyProvider.notifier).state =
                        Key('${data[index].id}');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
