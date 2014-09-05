###
	Copyright 2014 David Pearson.
	All rights reserved.
###

# Public: Generates a random boolean
#
# min - The minimum allowable value (inclusive)
# max - The maximum allowable value (exclusive)
#
# Example:
#		number 5, 16
# 		# => 13.9
# 		number 5, 16
# 		# => 5.2
#
# Returns a random decimal value in the range [min, max).
number = (min, max) ->
	delta = max - min

	Math.random() * delta + min

# Public: Finds and returns a random element of an array
#
# array - The array to search
#
# Example:
#		element [5, 6, 7]
# 		# => 6
# 		element [5, 6, 7]
# 		# => 5
#
# Returns a random element of the array.
element = (array) ->
	array[Math.floor Math.random() * array.length]

# Public: Finds and returns a random key of an object
#
# object - The object to search
#
# Example:
# 		obj =
# 			test1 : "Hi"
# 			test2 : 9
# 			test3 : true
#		key obj
# 		# => "test1"
# 		key obj
# 		# => "test3"
#
# Returns a random key of the object as a string.
key = (object) ->
	keys = []
	for key of object
		if object.hasOwnProperty key
			keys.push key

	if keys.length is 0
		null
	else
		element keys

# Public: Generates a random boolean
#
# Example:
#		boolean()
# 		# => true
# 		boolean()
# 		# => false
#
# Returns either true or false.
boolean = ->
	Math.random() * 100 >= 50

exports.number = number
exports.element = element
exports.key = key
exports.boolean = boolean