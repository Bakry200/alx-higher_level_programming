#!/usr/bin/node

// Get the arguments passed to the script
const args = process.argv.slice(2);
const firstArg = args[0];
const secondArg = args[1];

// Print the formatted string
console.log(`${firstArg} is ${secondArg}`);
