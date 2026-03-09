package main

import "core:fmt"
import rl "vendor:raylib"

// N -> Top-Right    0
// NE ->             1
// E -> Bottom-right 2
// SE ->             3
// S -> Bottom-Left  4
// SW ->             5
// W -> Top-Left     6
// NW ->             7

TILE_WIDTH:: 256
TILE_HEIGHT :: 128
TILE_FULL_HEIGHT :: 512

main::proc() {
    rl.SetTraceLogLevel(.ERROR)
    rl.SetConfigFlags({.MSAA_4X_HINT, .WINDOW_HIGHDPI, .VSYNC_HINT})
    // rl.InitWindow(1920, 1080, "The Dugeon 2D") // Fullscreen (my laptop is also 1920x1080 so it's harder to close the window)
    rl.InitWindow(1280, 720, "The Dungeon 2D")
    defer rl.CloseWindow()

    rl.SetTargetFPS(144)
    for !rl.WindowShouldClose() {
        free_all(context.temp_allocator)

        rl.BeginDrawing(); defer rl.EndDrawing()

        // fmt.println("Hello, World!")
        // rl.EndDrawing()

        // rl.ClearBackground(rl.RayWhite)
        rl.ClearBackground({128, 180, 255, 255})

        rl.DrawFPS(10, 10)
    }
}