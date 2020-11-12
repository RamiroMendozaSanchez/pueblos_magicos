import 'package:flutter/material.dart';
import 'package:pueblos_magicos/navbar/history.dart';
import 'navbar/events.dart';
import 'navbar/hotels.dart';
import 'navbar/restaurants.dart';
import 'resources/constants.dart';
import 'screens/first_screen.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int pageIndex= 0;

  final HistoryScrren _historyScrren = HistoryScrren();
  final RestaurantsScreen _restaurantsScreen = RestaurantsScreen();
  final HotelsScreen _hotelsScreen = HotelsScreen();
  final EventsScreen _eventsScreen = EventsScreen();

  Widget _showPage = new HistoryScrren();

  // ignore: missing_return
  Widget _pageChooser(int page){
    switch(page){
      case 0:
        return _historyScrren;
        break;
      case 1:
        return _restaurantsScreen;
        break;
      case 2:
        return _hotelsScreen;
        break;
      case 3:
        return _eventsScreen;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp, color: cAssentHistory,),
              label: "Historia"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant, color: cAssentRestorantsAndButtonVideo,),
              label: "Restaurant"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.apartment, color: cAssentInHoteles,),
              label: "Hoteles"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, color: cAppBarEventos,),
              label: "Eventos"
          )
        ],
        onTap: (int index){
          setState(() {
            _showPage = _pageChooser(index);
          });
        },
      ),
      body: Container(
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }

}


