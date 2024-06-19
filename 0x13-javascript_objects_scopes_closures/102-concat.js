#!/usr/bin/node

const fs = require('fs');

// Get file paths from command line arguments
const [, , srcFile1, srcFile2, destFile] = process.argv;

// Read content from source files
const content1 = fs.readFileSync(srcFile1, 'utf8');
const content2 = fs.readFileSync(srcFile2, 'utf8');

// Concatenate contents
const concatenatedContent = content1 + content2;

// Write concatenated content to destination file
fs.writeFileSync(destFile, concatenatedContent);

console.log(`Files ${srcFile1} and ${srcFile2} concatenated and saved to ${destFile}`);
