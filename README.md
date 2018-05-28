## Battle

### Challenge setup
#### user stories

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first

As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

```


screenshot homepage
![image](https://user-images.githubusercontent.com/33194929/40628045-84376316-62ba-11e8-9f8c-357eb4e77760.png)

screenshot intro game
![image](https://user-images.githubusercontent.com/33194929/40628030-6c1ae1cc-62ba-11e8-8e04-3fe3e10a93cb.png)

screenshot attack page
![image](https://user-images.githubusercontent.com/33194929/40628020-57618ccc-62ba-11e8-92fa-f17e320d76cc.png)

screenshot end game
![image](https://user-images.githubusercontent.com/33194929/40628053-929c0f74-62ba-11e8-9826-196c00a8bdda.png)

#### Technologies used
Ruby
Sinatra
Capybara


#### Use
clone project, run ```bundle install``` in terminal.
use HTTP server. To install HTTPie ```$ brew install httpie```
```rackup config.ru```
in your browser go to localhost:9292 and BattleUp!!
