Julia-Array-Functions
========================================================
author: 
date: 
autosize: true

Array Functions
========================================================


Other functions[edit]

If you want to do something to an array, there's probably a function to do it, and sometimes with an exclamation mark to remind you of the potential consequences. Here are a few more of these array-modifying functions: 
resize!() change the length of a Vector
append!() push a second collection at the back of the first one

Array Functions
========================================================

prepend!() insert elements at the beginning of the first Vector
empty!(a) remove all elements
rotr90(a) make a copy of an array rotated 90 degrees clockwise:
Array Functions
========================================================

julia> rotr90([1 2 3 ; 4 5 6])
3x2 Array{Int64,2}:
4  1
5  2
6  3
Array Functions
========================================================

circshift(a) move the elements around 'in a circle' by a number of steps:
julia> circshift(1:6, 1)
6-element Array{Int64,1}:
 6
 1
 2
 3
 4
 5

Array Functions
========================================================


This function can also do circular shifts on 2D arrays too. For example, here's a table: 
julia> table = collect(r*c for r in 1:5, c in 1:5)
5×5 Array{Int64,2}:
 1   2   3   4   5
 2   4   6   8  10
 3   6   9  12  15
 4   8  12  16  20
 5  10  15  20  25

Array Functions
========================================================

By supplying a tuple you can move rows and columns. For example: moving the columns by 0 and the rows by 1 moves the first dimension by 0 and the second by 1. The first dimension is downwards, the second rightwards: 
julia> circshift(table, (0, 1))
5×5 Array{Int64,2}:
  5  1   2   3   4
 10  2   4   6   8
 15  3   6   9  12
 20  4   8  12  16
 25  5  10  15  20


There's a modifying version of circshift(), circshift! 

Array Functions
========================================================

Setting the contents of arrays[edit]

To set the contents of an array, specify the indices on the left-hand side of an assignment expression: 
julia> a = collect(1:10);

julia> a[9]= -9
-9

Array Functions
========================================================


To check that the array has really changed: 
julia> print(a)
[1,2,3,4,5,6,7,8,-9,10]


You can set a bunch of elements at the same time, using the broadcasting assignment operator: 
julia> a[3:6] .= -5
4-element view(::Array{Int64,1}, 3:6) with eltype Int64:
 -5
 -5
 -5
 -5
julia> print(a)
[1,2,-5,-5,-5,-5,7,8,-9,10]

Array Functions
========================================================

And you can set a sequence of elements to a suitable sequence of values: 
julia> a[3:9] = collect(9:-1:3)
7-element Array{Int64,1}:
9
8
7
6
5
4
3

Array Functions
========================================================


Notice here that, although Julia shows the 7 element slice as the return value, in fact the whole array has been modified: 
julia> a
10-element Array{Int64,1}:
 1
 2
 9
 8
 7
 6
 5
 4
 3
10


You can set ranges to a single value in one operation using broadcasting: 
julia> a[1:5] .= 0
0

julia> a
10-element Array{Int64,1}:
  0
  0
  0
  0
  0
  6
  7
  8
  9
 10

julia> a[1:10] .= -1;
-1

julia> print(a)
[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]

Array Functions
========================================================


As an alternative to the square bracket notation, there's a function call version that does the same job of setting array contents, setindex!(): 
julia> setindex!(a, 1:10, 10:-1:1)
10-element Array{Int64,1}:
10
 9
 8
 7
 6
 5
 4
 3
 2
 1

Array Functions
========================================================


You can refer to the entire contents of an array using the colon separator without start and end index numbers, i.e. [:]. For example, after creating the array a: 
julia> a = collect(1:10);


we can refer to the contents of this array a using a[:]: 
julia> b = a[:]
10-element Array{Int64,1}:
 1
 2
 3
 4
 5
 6
 7
 8
 9
10

julia> b[3:6]
4-element Array{Int64,1}:
3
4
5
6



Slide With Plot
========================================================

![plot of chunk unnamed-chunk-1](Julia-Array-Functions-figure/unnamed-chunk-1-1.png)
