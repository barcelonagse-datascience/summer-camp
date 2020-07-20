# Up and Running with Python
<!-- _class: lead -->

---

## What we will cover...

1. What is Python?
2. Running Python.
3. Writing Python.

---

## What is Python?

Python refers to both:

1. A program (it runs on a computer).
2. A programming language.

The program's purpose is to **interpret** the language and convert it into instructions for a computer.

---

## Running Python

<!-- _class: sidecode -->

```shell
> which python

> which python3
```

Python does not have a GUI, so we run it from a terminal.

Let's make sure we can find the program (the "executable").

`which` is a program, available in your terminal, that tells you where on your computer a given executable lives.

---

## Running Python

Let's run python:

```shell
> python3

Python 3.8.2 (default, Feb 26 2020, 22:21:03)
[GCC 9.2.1 20200130] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```
---


## Running Python

Let's run python:

```shell
> python3

Python 3.8.2 (default, Feb 26 2020, 22:21:03)
[GCC 9.2.1 20200130] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 5 + 5
```
---


## Running Python

Let's run python:

```shell
> python3

Python 3.8.2 (default, Feb 26 2020, 22:21:03)
[GCC 9.2.1 20200130] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 5 + 5
10
>>>
```

You can quite this "interactive interpreter" with `ctrl+d`.

---

## Writing Python

Python is a programming language.

It's named after Monty Python and was created by Guido van Rossum in 1991.

There are two major versions that are still circulating: 2 & 3.

Python2 has been dying a long, slow death for many years now. We will be using Python3 for this course.

---

## A python file

Open your text editor (ie VSCode) and open a new folder for this class.

Create a new file inside that folder and call it `hello.py`.

Write the following in the file (within your text editor):

```python
message = 'Hello CodeOp!'
print(message)
```

---

## A python file

In your terminal:

1. Navigate to the directory of the `hello.py` file you just created. (remember: `ls`, `pwd`, `cd`).
2. Run the file with python: `python3 hello.py`.
3. Celebrate.


---

## Installing Packages

To complete the assignments, it can be helpful to have some basic python packages (libraries) installed on your computer:

1. pylint
2. pytest
3. pytest-xdist

You can install python libraries ("globally") with the following command:

```shell
python3 -m pip install -U --user pylint
```

---

## Review

1. What is Python?
2. Running Python.
3. Writing Python.
