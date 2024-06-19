#!/usr/bin/node
/**
 * This script defines a class Rectangle that takes two arguments: w and h.
 * It initializes the instance attributes width and height with the values of w and h.
 */

class Rectangle {
  constructor(w, h) {
    this.width = w;
    this.height = h;
  }
}

// Export the Rectangle class to make it available for import in other modules
module.exports = Rectangle;
