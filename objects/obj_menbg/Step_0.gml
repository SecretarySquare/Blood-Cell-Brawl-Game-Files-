y += 2;

// If this background moves completely off the bottom of the room (y >= 240)
if (y >= 240) {
    y = -240; // Teleport it back to the top, right above the other background!
}