import 'package:flutter/material.dart';
import 'package:shoes4you/model/shoe.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final Shoe shoe;

  const DetailScreen({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(shoe: shoe);
        } else {
          return DetailMobilePage(shoe: shoe);
        }
      },
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Shoe shoe;

  const DetailMobilePage({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(shoe.thumbnail),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const FavoriteButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shoe.brand,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 28.0,
                                fontFamily: 'Staatliches',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            shoe.shoeName,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Staatliches',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '\$${shoe.retailPrice.toString()}',
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 24.0,
                            fontFamily: 'Staatliches',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(width: 8.0),
                        Text(
                          shoe.releaseDate,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(Icons.color_lens),
                        const SizedBox(width: 8.0),
                        Text(
                          shoe.colorway,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  shoe.description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Shoe shoe;

  const DetailWebPage({Key? key, required this.shoe}) : super(key: key);

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Shoes 4 You',
                    style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.network(widget.shoe.thumbnail),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    widget.shoe.shoeName,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'Staatliches',
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          const Icon(Icons.calendar_today),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.shoe.releaseDate,
                                            style: informationTextStyle,
                                          ),
                                        ],
                                      ),
                                      const FavoriteButton(),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.money),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        '\$${widget.shoe.retailPrice.toString()}',
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.color_lens),
                                      const SizedBox(width: 8.0),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          widget.shoe.colorway,
                                          style: informationTextStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(
                                      widget.shoe.description,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Oxygen',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
