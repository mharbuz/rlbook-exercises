# Chapter 10

### Exercise 10.1

We have not explicitly considered or given pseudocode for any Monte Carlo
methods or in this chapter. What would they be like? Why is it reasonable not to give
pseudocode for them? How would they perform on the Mountain Car task?

#### Answer

There is no approximation in Monte Carlo methods because with MC methods we know exactly what episode reward is (MC method ends with episode end).

### Exercise 10.2

Give pseudocode for semi-gradient one-step Expected Sarsa for control.

#### Answer

In third line from the bottom of Sarsa pseudocode:

![pasudocode for sarsa](assets/answer-010_02_02.png)

we need to replace last term of q with:

![answer 10.2](assets/answer-010_02_01.png)

### Exercise 10.3

Why do the results shown in Figure 10.4 have higher standard errors at
large n than at small n?

#### Answer 

Small change in 𝛂 value is multiplied by n??

