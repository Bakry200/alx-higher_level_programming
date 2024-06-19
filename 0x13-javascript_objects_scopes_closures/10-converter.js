#!/usr/bin/node

function converter(base) {
  return function convertToBase(number) {
    if (number < base) {
      return number.toString();
    } else {
      return convertToBase(Math.floor(number / base)) + (number % base).toString();
    }
  };
}

exports.converter = converter;
