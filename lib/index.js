// Generated by CoffeeScript 1.8.0

/*
	Copyright 2014 David Pearson.
	All rights reserved.
 */

(function() {
  var boolean, element, key, number;

  number = function(min, max) {
    var delta;
    delta = max - min;
    return Math.random() * delta + min;
  };

  element = function(array) {
    return array[Math.floor(Math.random() * array.length)];
  };

  key = function(object) {
    var keys;
    keys = [];
    for (key in object) {
      if (object.hasOwnProperty(key)) {
        keys.push(key);
      }
    }
    if (keys.length === 0) {
      return null;
    } else {
      return element(keys);
    }
  };

  boolean = function() {
    return Math.random() * 100 >= 50;
  };

  exports.number = number;

  exports.element = element;

  exports.key = key;

  exports.boolean = boolean;

}).call(this);
