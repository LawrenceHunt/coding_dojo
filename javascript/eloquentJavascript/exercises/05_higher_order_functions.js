/*
Flattening

Use the reduce method in combination with the concat method to “flatten” an
array of arrays into a single array that has all the elements of the input arrays.

var arrays = [[1, 2, 3], [4, 5], [6]];
// Your code here.
// → [1, 2, 3, 4, 5, 6]
*/



/*
Mother-child age difference

Using the example data set from this chapter, compute the average age
difference between mothers and children
(the age of the mother when the child is born). You can use the average function
defined earlier in this chapter.

Note that not all the mothers mentioned in the data are themselves present in
the array. The byName object, which makes it easy to find a person’s object
from their name, might be useful here.

function average(array) {
  function plus(a, b) { return a + b; }
  return array.reduce(plus) / array.length;
}

var byName = {};
ancestry.forEach(function(person) {
  byName[person.name] = person;
});

// Your code here.

// → 31.2
*/




/*
Historical life expectancy

When we looked up all the people in our data set that lived more than 90 years,
only the latest generation in the data came out. Let’s take a closer look at
that phenomenon.

Compute and output the average age of the people in the ancestry data set per
century. A person is assigned to a century by taking their year of death,
dividing it by 100, and rounding it up, as in Math.ceil(person.died / 100).

function average(array) {
  function plus(a, b) { return a + b; }
  return array.reduce(plus) / array.length;
}

// Your code here.

// → 16: 43.5
//   17: 51.2
//   18: 52.8
//   19: 54.8
//   20: 84.7
//   21: 94
For bonus points, write a function groupBy that abstracts the grouping operation.
It should accept as arguments an array and a function that computes the group
for an element in the array and returns an object that maps group names to
arrays of group members.
*/


/*
Deep comparison

The == operator compares objects by identity. But sometimes, you would
prefer to compare the values of their actual properties.

Write a function, deepEqual, that takes two values and returns true only
if they are the same value or are objects with the same properties whose
values are also equal when compared with a recursive call to deepEqual.

To find out whether to compare two things by identity
(use the === operator for that) or by looking at their properties, you can
use the typeof operator. If it produces "object" for both values, you should
do a deep comparison. But you have to take one silly exception into account:
by a historical accident, typeof null also produces "object".


var obj = {here: {is: "an"}, object: 2};
console.log(deepEqual(obj, obj));
// → true
console.log(deepEqual(obj, {here: 1, object: 2}));
// → false
console.log(deepEqual(obj, {here: {is: "an"}, object: 2}));
// → true

*/
