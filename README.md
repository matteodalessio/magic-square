# magic-square
Solving magic square as an Integer Programming problem: we can apply Integer Programming optimization, there is no function we want to minimize, the magic square problem can be called a satisfiability or feasibility problem.

# Run
* Open ampl and type `include sm.run`

# Result
For `n = 3`:

```
CPLEX 12.9.0.0: optimal integer solution; objective 15
139 MIP simplex iterations
0 branch-and-bound nodes
Magic_Constant = 15

Magic square:
  8   1   6
  3   5   7
  4   9   2
  ```
