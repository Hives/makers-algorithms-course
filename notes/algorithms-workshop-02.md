# Alogrithm design workshop

*Wed 12 Jun, Week 15 or something?*  
*Coach: Alice*  
*[Workshop repo](https://github.com/makersacademy/skills-workshops/tree/master/week-10-apprs/writing-algorithms)*

### Going over timing stuff from previous workshop(s)

Always give your algorithm the worst case scenario.

Try timing an algorithm that adds something to the end of an array. (Will be constant - vs. adding something to the start of an array, should be linear)

### Arrays
 - retrieving value by index
   `a[i]`
   constant time
 - add at the end
   `a << 5`
   amortized constant time
 - add at the front of the array
   `a.unshift(7)`
   linear time

### Floats, how do they work?

- Look up 'complement to 1' re. storing -ve numbers
