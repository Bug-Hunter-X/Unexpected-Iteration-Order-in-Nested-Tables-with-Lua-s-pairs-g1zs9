# Lua Nested Table Iteration Order Bug

This repository demonstrates a subtle bug related to the iteration order of nested tables when using Lua's `pairs` iterator. The issue arises because `pairs` doesn't guarantee a specific order, which can lead to unpredictable results when processing nested structures.

The `bug.lua` file contains code that recursively iterates through a nested table. Depending on the Lua implementation and version, the order in which the nested tables are processed might differ. This inconsistency can be problematic for algorithms that rely on a predictable iteration sequence.

The `bugSolution.lua` file offers a potential solution that ensures a specific iteration order, typically a depth-first traversal.   This ensures consistent and predictable behavior across different Lua environments.  Note that this solution may introduce performance overhead.

## How to Reproduce
1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter.
3. Observe the order of output and compare it against another run or a different Lua implementation.