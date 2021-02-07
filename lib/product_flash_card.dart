import 'package:flutter/material.dart';
import 'product.dart';

class FicheProduit extends StatefulWidget {
  @override
  _FicheProduitState createState() => _FicheProduitState();
}

class _FicheProduitState extends State<FicheProduit> {
  //creating product
  Product prod = Product(
      "Volvic citron",
      "Volvic",
      "recyclable",
      "France",
      "plastique",
      "Non issu du commerce équitable",
      "https://static.openfoodfacts.org/images/products/305/764/038/5148/front_fr.162.200.jpg",
      7.0);

  //To try with the API !!!
  //Product prod = Product(product, brand, bin, origin, packaging, fairtrade, pic, score)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Fiche produit'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[400],
        //elevation: 0.0,
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            //just to test button and statefull
            prod.product = "Barilla spaghetti n°5";
            prod.brand = "Barilla";
            prod.origin = "Italie";
            prod.packaging = "carton";
            prod.bin = "recyclable";
            prod.fairtrade = "Non issu du commerce équitable";
            prod.score = 6.0;
            prod.pic =
                "https://static.openfoodfacts.org/images/products/807/680/019/5057/front_fr.334.200.jpg";
          });
        },
        child: Icon(
          Icons.info_outline_rounded,
          color: Colors.white,
          size: 40.0,
        ),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text('${prod.product}',
                    style: TextStyle(
                      color: Colors.blueGrey[700],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(prod.pic),
                  radius: 60.0,
                ),
              ),
              Divider(height: 50.0, color: Colors.blueGrey),
              Row(children: <Widget>[
                Icon(
                  Icons.eco_outlined,
                  color: Colors.greenAccent[700],
                ),
                SizedBox(width: 10.0),
                Text(
                  'EKO-SCORE : ${prod.score}/10',
                  style: TextStyle(
                      color: Colors.greenAccent[700],
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
              ]),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.autorenew_rounded,
                    color: Colors.greenAccent[700],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('${prod.bin}',
                      style: TextStyle(
                        color: Colors.greenAccent[700],
                        letterSpacing: 2.0,
                      )),
                ],
              ),
              Divider(height: 50.0, color: Colors.blueGrey),
              Text(
                'Informations',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 20.0),
              Row(children: [
                Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Marque : ${prod.brand}',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                  ),
                ),
              ]),
              SizedBox(height: 15.0),
              Row(children: <Widget>[
                Icon(
                  Icons.blur_circular,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 10.0),
                Text('${prod.fairtrade}',
                    style:
                        TextStyle(color: Colors.blueGrey, letterSpacing: 2.0)),
              ]),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.flag_outlined,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Origine : ${prod.origin}',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(children: <Widget>[
                Icon(Icons.border_all_rounded, color: Colors.blueGrey),
                SizedBox(
                  width: 10.0,
                ),
                Text('Emballage : ${prod.packaging}',
                    style: Theme.of(context).textTheme.bodyText1)
              ])
            ],
          )),
    );
  }
}