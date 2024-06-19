#!/usr/bin/node

// Get the first argument passed to the script
const args = process.argv.slice(2);
const firstArg = args[0];

// Convert the first argument to an integer
const num = parseInt(firstArg, 10);

// Check if the conversion was successful and print the appropriate message
if (!isNaN(num)) {
  console.log(`My number: ${num}`);
} else {
  console.log('Not a number');
}
