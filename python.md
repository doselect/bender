**Basic Python coding standards and guidelines :**

When writing Python code always remember `The Zen of Python` also knows as PEP20
Some examples for PEP20 can be found [here](https://artifex.org/~hblanks/talks/2011/pep20_by_example.pdf)

[PEP8](https://www.python.org/dev/peps/pep-0008/) is the de-facto code style guide for Python. 
A high quality, easy-to-read version of PEP 8 is also available at [pep8.org](pep8.org).


Reduce the need for documentation but what happens when you have written some complex code/logic ?
Write some documentation for it. Comment your code. 

When to document or comment your code ?

   1. When there are multiple people working on same code base and you expect to forget the logic in some days (always happens).
   2. When there are Business rules, while they may be readable, may not alone show why they are there.
   3. Where people want to know why you did X instead of Y - you can capture your answer in the code for everyone 
      else who looks at it in now or in the future

Always remember **Explaining yourself is good, not needing to do so is better**

If you have to write comments and docstrings for Python then please follow these guidelines

**Documentation Style Guide for Python :**

We will be using the Google Style for writing docstring which can be found [here](https://github.com/google/styleguide/blob/gh-pages/pyguide.md#38-comments-and-docstrings)

For Pycharm user you can enable the default docstring by going to
 
`Preferences (settings) -> Tools -> Python Integrated Tools -> Docstrings -> Choose Docstring format`

You can also check `Analyze Python code in docstrings` this will help to identify python code inside the docstring if any 

Some examples and explanation can be found at Real Python and Stack Overflow. 
Basic guidelines of docstrings in the world of Python can be found here.

For VSCode, please install [this](https://github.com/NilsJPWerner/autoDocstring) plugin and choose Google as format in the plugin settings. 


Recommended reading : 
1. [Clean Code](https://www.amazon.in/Clean-Code-Handbook-Software-Craftsmanship-ebook/dp/B001GSTOAM?tag=googinhydr18418-21&tag=kindlecontentin24-21&ascsubtag=_k_EAIaIQobChMIroHZlovA4QIVFR4rCh2-XQMEEAYYASABEgJgY_D_BwE_k_)

How to write beautiful Python code ? 

Listen to these talks
   1. [Transforming Code into Beautiful, Idiomatic Python](https://www.youtube.com/watch?v=OSGv2VnC0go)
   2. [Beyond PEP8](https://www.youtube.com/watch?v=wf-BqAjZb8M)

