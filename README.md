# Pac-Man in MASM x86 Assembly Language

This project is a terminal-based implementation of the classic Pac-Man game, developed in MASM x86 assembly language . It features core gameplay elements such as player movement, score tracking, level progression, and enemy behavior.

## Features

- **Classic Gameplay:** Navigate Pac-Man through a maze to collect all the pellets while avoiding enemies.
- **Multi-Level Support:** Progress through different levels with increasing difficulty.
- **Enemy AI:** Enemies move randomly within the maze, with basic collision detection.
- **Fruit Collection:** Earn extra points by collecting randomly appearing fruits.
- **Portals:** Some levels feature portals that teleport Pac-Man across the maze.
- **User Interface:** Simple text-based interface for displaying score, lives, and current level.

## Controls

- **w:** Move up
- **s:** Move down
- **a:** Move left
- **d:** Move right
- **p:** Pause the game
- **r:** Resume the game (after pause)
- **x:** Exit the game

## Instructions

1. **Movement:** Use the `w`, `a`, `s`, `d` keys to move Pac-Man through the maze and collect all the coins.
2. **Avoid Enemies:** Stay clear of the enemies to avoid losing lives.
3. **Level Up:** Clear all pellets on the current maze to advance to the next level.
4. **Fruit:** Collect randomly appearing fruits for bonus points.
5. **Portals:** Some levels have portals that transport Pac-Man to different parts of the maze.

## Game Flow

1. **Start Screen:** Enter your username.
2. **Main Menu:** Choose an option:
   - Start Game
   - View High Scores (not implemented)
   - Select Level
   - Quit
3. **Gameplay:** Control Pac-Man to clear levels, avoid enemies, and collect bonuses.
4. **Level Progression:** Each level presents a new challenge, with added enemies and obstacles.
5. **Game Over:** When all lives are lost, the game ends and displays a "Game Over" message.

## Code Structure

- **Game Map:** The game map is defined using a byte array, where different characters represent walls, coins, and empty spaces.
- **Player and Enemy Movement:** Movement logic is handled through various subroutines that update the positions of Pac-Man and enemies.
- **Collision Detection:** Simple collision detection is implemented to check for walls and interactions with enemies.
- **Portals:** Portal logic checks for specific positions on the map and transports Pac-Man accordingly.

## Contributing

Feel free to contribute by submitting issues or pull requests. Contributions can include bug fixes, enhancements, or new features.

