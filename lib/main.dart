import 'package:emberquest/overlays/game_over.dart';
import 'package:emberquest/overlays/main_menu.dart';
import 'package:emberquest/screens/ember_quest_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    GameWidget<EmberQuestGame>.controlled(
    gameFactory: EmberQuestGame.new,
    overlayBuilderMap: {
      'MainMenu': (_, game) => MainMenu(game: game),
      'GameOver': (_, game) => GameOver(game: game),
    },
    initialActiveOverlays: const ['MainMenu'],
  ),
  );
}
