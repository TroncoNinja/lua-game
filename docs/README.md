# Lua Game

This is a simple text-based game written in Lua. The game includes various modules for handling different aspects such as dice rolls, weapons, and the game interface.

## Project Structure

```bash
.
├── assets
│   ├── dices
│   │   ├── DiceD10.lua
│   │   ├── DiceD6.lua
│   │   └── DiceD8.lua
│   ├── Interface.lua
│   └── weapons
│       ├── Axe.lua
│       ├── GreatAxe.lua
│       ├── GreatStaff.lua
│       ├── GreatSword.lua
│       ├── Staff.lua
│       └── Sword.lua
├── docs
│   ├── CHANGELOG.md
│   └── README.md
├── LICENSE.md
├── src
│   ├── config.lua
│   ├── enemy.lua
│   ├── game.lua
│   ├── main.lua
│   ├── player.lua
│   └── utils.lua
└── tests
    ├── dice_test.lua
    ├── interface_test.lua
    ├── player_test.lua
    └── weapon_test.lua
```

## Modules

### Dice Modules

- **DiceD6**: Implements a six-sided dice.
- **DiceD8**: Implements an eight-sided dice.
- **DiceD10**: Implements a ten-sided dice.

### Weapon Modules

- **Sword**: Implements a sword weapon that uses a six-sided dice for damage.
- **Great Sword**: Implements a great sword weapon that uses two six-sided dice for damage.
- **Axe**: Implements an axe weapon that uses a eight-sided dice for damage.
- **Great Axe**: Implements a great axe weapon that uses a twelve-sided dice for damage.
- **Staff**: Implements an axe weapon that uses a six-sided dice for damage and has a bonus of +1.
- **Great Staff**: Implements an axe weapon that uses a eight-sided dice for damage and has a bonus of +2.

### Interface Module

- **Interface**: Handles the game interface, displaying player and enemy stats, and messages.

## Tests

The `tests` directory contains test scripts for the various modules:

- **dice_test.lua**: Tests the dice modules.
- **interface_test.lua**: Tests the interface module.
- **weapon_test.lua**: Tests the weapon modules.
- **player_test.lua**: Tests the player module

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE.md](../LICENSE.md) file for details.

## How to Run