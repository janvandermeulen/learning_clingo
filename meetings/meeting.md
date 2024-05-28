# Meeting 24/05
# 1: What we have so far
- Parsing into clingo.
- Clingo solver for optimal matching given an AST and N possible compressions.



# 2: Direction
We want to make heuristic based on N ASTs and test them based on Clingo compressions.
Input: N ASTs and 1 grammar
1. HERB: Generate multiple ASTs (preferably same grammar) (done) 
2. HERB: Apply heuristic to find promising subtrees 
3. CLINGO: Compress ASTs (Initial version done)
4. HERB: Extend grammar with best compressions --> return to step 2 
Output: N compressed ASTs and extended grammar



To us it seems that there are 2 different problems to solve here:
-	One is that we’d have a large number of abstract syntax trees, and we have to analyze those to retrieve good (eg. often occurring) subtrees
-	The other is that we have a clingo encoding for subtrees to compress an AST given a set of possible subtrees

# 3: TODO
