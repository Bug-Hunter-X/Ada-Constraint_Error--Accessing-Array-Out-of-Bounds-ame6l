# Ada Constraint_Error Example

This repository demonstrates a common runtime error in Ada: the `Constraint_Error` that occurs when attempting to access an array element outside of its defined bounds.  The example shows how to cause the error and provides a solution.

## Bug Description
The Ada code in `bug.ada` attempts to access an element in an array that is beyond the array's declared size.  This results in a `Constraint_Error` exception being raised at runtime.

## Solution
The `bugSolution.ada` file shows how to avoid this error by carefully checking array indices before accessing them, or using a safer method that handles possible out of bound errors.