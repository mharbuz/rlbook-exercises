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
