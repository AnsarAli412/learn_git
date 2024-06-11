import 'package:flutter/material.dart';
import 'package:learn_git/search_api_/search_api_class.dart';
import 'package:learn_git/search_api_/search_model_api.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController();
  var _futuresearch = List<SearchModel>.empty();

  @override
  void initState() {
    super.initState();
    _searchBooks("patna");
  }

  Future<List<SearchModel>?> _searchBooks(String query) async {
    var data = await SearchApiClass().getSearchdata(query);
    _futuresearch = data!;
    setState(() {
      print(data.first.url);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 50,
        backgroundColor: Colors.teal,
        title: const Text(
          "SearchView",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: TextFormField(
              controller: _searchController,
              onChanged: (value) async {
                _futuresearch = (await SearchApiClass().getSearchdata(value))!;
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Search..",
                filled: true,
                fillColor: Colors.black12,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff0764822464)),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: _futuresearch.length,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 10,
                      color: Colors.teal,
                      child: Column(
                        children: [
                          Text(
                            _futuresearch[index].id.toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(_futuresearch[index].name.toString()),
                          Text(_futuresearch[index].country.toString()),
                          Text(_futuresearch[index].region.toString()),
                          Text(_futuresearch[index].lat.toString()),
                          Text(_futuresearch[index].lon.toString()),
                          Text(_futuresearch[index].url.toString()),
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
