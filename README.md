# Ruby NameError Example

This repository demonstrates a common Ruby error: `NameError: undefined method`. This error occurs when you try to call a method that doesn't exist on an object.

## The Bug
The `bug.rb` file shows a simple class `MyClass` with a `value` method.  The code attempts to access a method named `nonexistent_method` which does not exist, leading to a `NameError`.

## The Solution
The `bugSolution.rb` file shows how to prevent this error by using methods like `respond_to?` to check for the existence of a method before calling it, or through more robust error handling with `begin`/`rescue` blocks.