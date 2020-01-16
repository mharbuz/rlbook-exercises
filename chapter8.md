# Chapter 8

### Exercise 8.1

The nonplanning method looks particularly poor in Figure 8.3 because it is
a one-step method; a method using multi-step bootstrapping would do better. Do you
think one of the multi-step bootstrapping methods from Chapter 7 could do as well as
the Dyna method? Explain why or why not.

#### Answer

n-step TD with n high enough to cover optimal path from starting point to terminate state.

More intuition from Figure 7.4:

![figure 7.4](assets/answer-008_01_01.png)

### Exercise 8.2

Why did the Dyna agent with exploration bonus, Dyna-Q+, perform
better in the first phase as well as in the second phase of the blocking and shortcut
experiments?

#### Answer

Dyna-Q is less explorative and after first time it found way to get into terminal state it sticks to it for a longer time.

### Exercise 8.3

Careful inspection of Figure 8.5 reveals that the difference between Dyna-Q+
and Dyna-Q narrowed slightly over the first part of the experiment. What is the reason
for this?

#### Answer 

Dyna-Q+ finds more efficient patch much faster but after some time Dyna-Q finds it too. Exploration cost for Dyna-Q+ is bigger than for Dyna-Q and that's the reason.

### Exercise 8.5

1. How might the tabular Dyna-Q algorithm shown on page 164 be modified
to handle stochastic environments? 
2. How might this modification perform poorly on
changing environments such as considered in this section? 
3. How could the algorithm be
modified to handle stochastic environments and changing environments?

![Tabular Dyna-Q page 164](assets/answer-008_05_01.png)

#### Answer

1. We should add R and S' in step _(e)_ as next element in array (like _Model(S,A)[] ← R,S'_), then in step 4 of _(f)_ loop we can randomly select next R and S' from array
2. The reason can be exactly the same as in Example 8.3: Shortcut Maze
3. We can add exploration bonus (Dyna-Q+ for env changing into better conditions) and we can add tracking of changes in Q(S,A); when change is "large" and negative we can zeroing at all
