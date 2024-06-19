#!/usr/bin/node

const SquareBase = require('./5-square'); // Assuming the previous Square class is defined here

class Square extends SquareBase {
  constructor(size) {
    super(size); // Call the Square constructor with size
  }

  charPrint(c) {
    if (c === undefined) {
      c = 'X';
    }

    for (let i = 0; i < this.height; i++) {
      console.log(c.repeat(this.width));
    }
  }
}

module.exports = Square;
