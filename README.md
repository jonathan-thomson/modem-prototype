# modem-prototype
## Zephyr workspace (west)

This repo uses **west** and keeps Zephyr sources under `thirdparty/zephyrproject/`.

### One-time setup

```bash
# From repo root
west init -l .west
west update
```

### Build Control MCU firmware

```bash
# Choose your board later (custom board will live under targets/boards)
export ZEPHYR_BASE="$PWD/thirdparty/zephyrproject/zephyr"
export BOARD_ROOT="$PWD/targets/boards"
export SHIELD_ROOT="$PWD/targets/shields"

west build -b <your_board> control -d control/build
```

### Cleaning

```bash
west clean
```

Notes:
- Firmware build output directory: `control/build/`
- Unit test build output directory: `control/test-catch2/build/`
