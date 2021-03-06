import './online_user.dart';
import '../UI/lets_memory_flipable_card.dart';

abstract class SocketListener {
  void onLoginResult(bool success, String username);

  void onChallengeReceived(String username);
  void onChallengeDenided(String username);

  void onBeginGame(int playerNumber, String adversaryName, List<LetsMemoryFlipableCard> cards);
  void onSearchResult(List<OnlineUser> users);

  void onAdversaryLeft();

  bool isMounted();
  void onDisconnect();
}

//Gestisce le dinamiche di gioco
abstract class GameSocketListener {
  bool isMounted();
  void onDisconnect();

  void onAdversaryTurn();
  void onMyTurn();
  void onAdversaryCardFlipped();
}