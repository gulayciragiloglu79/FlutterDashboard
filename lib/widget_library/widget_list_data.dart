import 'package:flutter/material.dart';
import 'package:storyboard/widget_library/buttons/raised_button.dart';
import 'buttons/gradient_button_blue.dart';
import 'buttons/green_gradient_button.dart';
import 'typography/typhography.dart';

class WidgetListData {
  static Map<String, Map<String, Map<String, Widget>>> widgetListMap = {
    "App Bar": WidgetSublistMapData.appbarWidgetsMap,
    "Home Page": WidgetSublistMapData.homePageWidgetsMap,
    "References and Styles": WidgetSublistMapData.referencesWidgetsMap
  };

  static Map<String, Map<String, Widget>> getMapFromKey(String key) {
    Map<String, Map<String, Widget>> mapToReturn;
    widgetListMap.forEach(((k, map) {
      if (k == key) {
        mapToReturn = map;
      }
    }));
    return mapToReturn;
  }
}

class WidgetSublistMapData {
  static Map<String, Widget> getSublistMapFromKey(
      String widgetLibraryKey, String widgetSublistKey) {
    Map<String, Map<String, Widget>> sublistMapToSearch =
        WidgetListData.getMapFromKey(widgetLibraryKey);
    Map<String, Widget> mapToReturn;
    sublistMapToSearch.forEach(((k, map) {
      if (k == widgetSublistKey) {
        mapToReturn = map;
      }
    }));
    return mapToReturn;
  }

  static Map<String, Map<String, Widget>> appbarWidgetsMap = {
    "App bar actions with cash": WidgetStateMapData.appBarMap,
    "App bar actions with Trophy": WidgetStateMapData.appBarMap,
    "New Badge": WidgetStateMapData.appBarMap,
    "Tournament Trophy": WidgetStateMapData.appBarMap,
    "App bar": WidgetStateMapData.appBarMap,
  };

  static Map<String, Map<String, Widget>> homePageWidgetsMap = {
    "Home Page's App Bar": WidgetStateMapData.homePageMap,
    "Side Menu": WidgetStateMapData.homePageMap,
    "Bottom Navigation": WidgetStateMapData.homePageMap,
    "Helper Toolbox": WidgetStateMapData.homePageMap,
    "Custom Divider": WidgetStateMapData.homePageMap,
    "Shimmer Layout": WidgetStateMapData.homePageMap,
  };

  static Map<String, Map<String, Widget>> referencesWidgetsMap = {
    "Blue Gradient Button": WidgetStateMapData.blueStylesAndReferencesMap,
    "Green Gradient Button": WidgetStateMapData.greenStylesAndReferencesMap,
    "Raised Button": WidgetStateMapData.raisedButtonStylesAndReferenceMap,
    "Outlined Button": WidgetStateMapData.outlinedButtonStylesAndReferenceMap,
    "Typography": WidgetStateMapData.typographyStylesAndReferenceMap,
  };
}

class WidgetStateMapData {
  static List<String> getWidgetTitle(String key, String widgetSublistKey) {
    List<String> widgetNameList = List();
    Map<String, Widget> map =
        WidgetSublistMapData.getSublistMapFromKey(key, widgetSublistKey);
    if (map != null) {
      map.forEach((k, v) {
        widgetNameList.add(k);
      });
    }
    return widgetNameList;
  }

  static List<Widget> getWidgets(String key, String widgetSublistKey) {
    List<Widget> widgetsList = List();
    Map<String, Widget> map =
        WidgetSublistMapData.getSublistMapFromKey(key, widgetSublistKey);
    if (map != null) {
      map.forEach((k, v) {
        widgetsList.add(v);
      });
    }
    return widgetsList;
  }

  static Map<String, Widget> appBarMap = {
    "App bar actions with cash": Text(
      'Theme Setter',
    ),
    "App bar actions with Trophy": Container(),
    "New Badge": Container(),
    "Tournament Trophy": Container(),
    "App bar": Container(),
  };

  static Map<String, Widget> simcardMap = {
    "Sim Card state 1": Container(),
    "Sim Card state 2": Container(),
    "Sim Card state 3": Container(),
  };

  static Map<String, Widget> tournamentDetailsMap = {
    "Prize By Rank Card": Container(),
  };

  static Map<String, Widget> sideMenuMap = {
    "Side Menu State 1": Container(),
    "Side Menu State 2": Container(),
    "Side Menu State 3": Container(),
  };

  static Map<String, Widget> homePageMap = {
    "Home Page State 1": Container(),
    "Home Page State 2": Container(),
    "Home Page State 3": Container(),
    "Home Page State 4": Container(),
  };

  static Map<String, Widget> tournamentAndBattlesPageMap = {
    "App Bar": Container(),
    "Helper Toolbox": Container(),
    "Header": Container(),
    "Player and Time Listing": Container(),
    "Card Heading": Container(),
    "Entry Prize Component": Container(),
    "Battle Info": Container(),
    "Battle Info Full": Container(),
    "Battle Info Registered": Container(),
    "Battle Component": Container(),
    "Special Tournament": Container(),
    "Tournament Component": Container(),
    "Create Tournament Card": Container(),
    "Follow Card": Container(),
    "Follow Card List": Container(),
    "Tournament And Battles Page": Container(),
  };

  static Map<String, Widget> blueStylesAndReferencesMap = {
    "Blue Gradient Button": GradientButtonBlue(
      width: 500,
      buttonText: 'PLAY',
      onTapGradientButton: () {},
    ),
    "Blue Gradient Button Disabled": GradientButtonBlue(
      width: 500,
      buttonText: 'PLAY',
      onTapGradientButton: null,
    ),
  };

  static Map<String, Widget> greenStylesAndReferencesMap = {
    "Green Gradient Button": GradientButtonGreen(
        buttonText: 'PLAY FOR FREE',
        buttonTextStyle: null,
        width: 500,
        onTap: () {}),
    "Raised Button": CustomisedButton(),
    "Outlined Button": Container(),
  };

  static Map<String, Widget> raisedButtonStylesAndReferenceMap = {
    "Raised Button": RaisedButton(
      child: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 1'),
      onPressed: () {
        // Perform some action
      },
    ),

    "Disabled Risabled Button": RaisedButton(
      child: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 1'),
      onPressed: null
    ),

    "Raised Button with Icon": RaisedButton.icon(
      icon: const Icon(Icons.add, size: 18.0),
      label: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 2'),
      onPressed: () {
        // Perform some action
      },
    ),

    "Disabled Raised Button with Icon": RaisedButton.icon(
      icon: const Icon(Icons.add, size: 18.0),
      label: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 2'),
      onPressed: null,
    ),

  };


  static Map<String, Widget> outlinedButtonStylesAndReferenceMap = {
    "Outlined Button": OutlineButton(
      child: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 1'),
      onPressed: () {
        // Perform some action
      },
    ),

    "Disabled Outlined Button": OutlineButton(
        child: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 1'),
        onPressed: null
    ),

    "Outlined Button with Icon": OutlineButton.icon(
      icon: const Icon(Icons.add, size: 18.0),
      label: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 2'),
      onPressed: () {
        // Perform some action
      },
    ),

    "Disabled Outlined Button with Icon": OutlineButton.icon(
      icon: const Icon(Icons.add, size: 18.0),
      label: const Text('RAISED BUTTON', semanticsLabel: 'RAISED BUTTON 2'),
      onPressed: null,
    ),

  };

  static Map<String, Widget> typographyStylesAndReferenceMap = {
    "Typhography": TypographyDemo(),
  };

}
