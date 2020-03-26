# Lists and Loops
<!-- _class: lead -->

---


## What we will cover...

1. DRY
2. Lists and Loops
3. Operations on lists: map, filter, reduce

---


## DRY

**DRY** stands for **D**o not **R**epeat **Y**ourself. 

DRY is a basic strategy for removing repetition in code. Almost all code should be dry!

Why do we want to remove repetition from our code?

Loops are a necessary tool when we want the computer to repeat something, but we don't want to write any redundant code.

---

## Lists
<!-- _class: sidecode -->

```python
my_list = [0, 1, 2, 3, 4]
```

In python, the basic loop happens over an **iterable**.

An iterable is a data structure, which consists of a set of values which can be looped (or _iterated_) over.

The most simple iterable is the **list**.

---

## Looping
<!-- _class: sidecode -->

```python
for 
```

The basic loop in python is the **for loop** which consists of:

1. The keyword `for`.

---


## Looping
<!-- _class: sidecode -->

```python
for number
```

The basic loop in python is the **for loop** which consists of:

1. The keyword `for`
2. A variable name for each item in the iterable (i.e. `number`)

---


## Looping
<!-- _class: sidecode -->

```python
for number in
```


The basic loop in python is the **for loop** which consists of:

1. The keyword `for`
2. A variable name for each item in the iterable (i.e. `number`)
3. The keyword `in`.

---


## Looping
<!-- _class: sidecode -->

```python
for number in my_list:
```


The basic loop in python is the **for loop** which consists of:

1. The keyword `for`
2. A variable name for each item in the iterable (i.e. `number`)
3. The keyword `in`.
4. The iterable (`my_list`) and `:`.

---

## Looping
<!-- _class: sidecode -->

```python
for number in my_list:
    print(number)
```


The basic loop in python is the **for loop** which consists of:

1. The keyword `for`
2. A variable name for each item in the iterable (i.e. `number`)
3. The keyword `in`.
4. The iterable (`my_list`) and `:`.
5. The code **block** to be repeated, indented 4 spaces. 

---


## Data
<!-- _class: sidecode -->

```python
names = ['Foo', 'Bar', 'Baz']
```

Data often comes in a list (if not, it would be called datum).

There are 3 basic operations we perform on data in lists: 

**map** transform each element
**filter** remove some elements
**reduce** aggregate the list into a single element

---


## Map
<!-- _class: sidecode -->

```python
names = ['Foo', 'Bar', 'Baz']

def get_length(name):
    return len(name)
    
[get_length(n) for n in names]
# [3, 3, 3]
```

Map consists of transforming each element of the list into a new element. We can use functions to transform elements!

The map operation returns a new list of the same length as the old list.

Given a list and a function, we can **map** the old list into a new list with a **list comprehension**.

---

## Writing list comprehensions
<!-- _class: sidecode -->

```python
[]
```

Steps to write a **list comprehension**:

1. Start with square brackets `[]`.

---


## Writing list comprehensions
<!-- _class: sidecode -->

```python
[get_length(n)]
```

Steps to write a **list comprehension**:

1. Start with square brackets `[]`.
2. Call the function with a variable that you will define later (`n`).

---


## Writing list comprehensions
<!-- _class: sidecode -->

```python
[get_length(n) for n in names]
```

Steps to write a **list comprehension**:

1. Start with square brackets `[]`.
2. Call the function with a variable that you will define later (`n`).
3. `for`
4. new variable(`n`) 
5. `in` 
6. iterable(`names`)

---


## Filter
<!-- _class: sidecode -->

```python
names = ['Foo', 'Bar', 'Baz']

def we_like(name):
    return name != 'Bar'
    
[n for n in names if we_like(n)]
```

Filter is used to remove certain elements from a list.

We can filter a list by adding an **if statement** to a list comprehension.

Like all if statements, the `if` keyword is followed by a boolean.

The element is included in the new list only if the boolean is true.

---


## Map + Filter
<!-- _class: sidecode -->

```python
names = ['Foo', 'Bar', 'Baz']

def get_length(name):
    return len(name)

def we_like(name):
    return name != 'Bar'
    
[get_length(n) for n in names if we_like(n)]
```

List comprehensions allow us to easily map and filter at the same time.

What will this code output?

---


## Reduce
<!-- _class: sidecode -->

```python
numbers = [0,1,2,3,4]

def get_sum(nums):
    total = 0
    for n in nums:
        total += n
    return total
    
get_sum(numbers)
```

The reduce operation **aggregates** a list into a single element.

The single element that comes out of a reduce operation is called the **acumulator**.

Summing the numbers in a list is a reduction!

---


## Reduce
<!-- _class: sidecode -->

```python
def get_lowest(nums):
    lowest = nums[0]

```

To write a **reduce** function: 

1. Initialize the **acumulator** (`lowest`)

---


## Reduce
<!-- _class: sidecode -->

```python
def get_lowest(nums):
    lowest = nums[0]
    for n in nums:

```

To write a **reduce** function: 

1. Initialize the **acumulator** (`lowest`)
2. Define a for loop (`for n in nums:`)

---


## Reduce
<!-- _class: sidecode -->

```python
def get_lowest(nums):
    lowest = nums[0]
    for n in nums:
        if n < lowest:
            lowest = n

```

To write a **reduce** function: 

1. Initialize the **acumulator** (`lowest`)
2. Define a for loop (`for n in nums:`)
3. Modify the accumulator (`lowest`) in the body of the for loop

---


## Reduce
<!-- _class: sidecode -->

```python
def get_lowest(nums):
    lowest = nums[0]
    for n in nums:
        if n < lowest:
            lowest = n
    return lowest

```

To write a **reduce** function: 

1. Initialize the **acumulator** (`lowest`)
2. Define a for loop (`for n in nums:`)
3. Modify the accumulator (`lowest`) in the body of the for loop
4. Return the accumulator

---


## Map + Filter + Reduce
<!-- _class: sidecode -->

```python
def get_length(name):
    return len(name)

def we_like(name):
    return name != 'Bar'

def get_sum(nums):
    total = 0
    for n in nums:
        total += n
    return total

names = ['Foo', 'Bar', 'Baz']
lengths = [get_length(n) for n in names 
           if we_like(n)]
total_length = get_sum(lengths)                      
```

Together, map, filter, and reduce consist of a powerful set of abstractions that allow us to transform data.

Breaking down a data transformation task into these steps, then implementing them, is a large part of any data analysis project. 
