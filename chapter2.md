# Chapter 2

### Exercise 2.1
In ε-greedy action selection, for the case of two actions and ε = 0.5, what is
the probability that the greedy action is selected?
#### Answer
Greedy action will be seleted with probability equals 50%.

### Exercise 2.2
*Bandit example* Consider a k-armed bandit problem with k = 4 actions,
denoted 1, 2, 3, and 4. Consider applying to this problem a bandit algorithm using
ε-greedy action selection, sample-average action-value estimates, and initial estimates
of Q1(a) = 0, for all a. Suppose the initial sequence of actions and rewards is *A1 = 1,
R1 = 1, A2 = 2, R2 = 1, A3 = 2, R3 = 2, A4 = 2, R4 = 2, A5 = 3, R5 = 0*. On some
of these time steps the ε case may have occurred, causing an action to be selected at
random. On which time steps did this definitely occur? On which time steps could this
possibly have occurred?
#### Answer
ε case occured in steps: 2, 5
ε case might occured in steps 1 (depends on algoritm because every action has the same value and we don't know how it is broken).

### Exercise 2.3
In the comparison shown in Figure 2.2 ![Figure 2.2](assets/figure-002_2.jpg), 

which method will perform best in
the long run in terms of cumulative reward and probability of selecting the best action?
How much better will it be? Express your answer quantitatively.
#### Answer
Winner would be red one (ε = 0.01) because it converges to 1 - ε = 0.99. It is 0.09 greater than blue one (ε = 0.1) which converges to 1 - ε = 0.9.

### Exercise 2.4
If the step-size parameters, ![equation](http://latex.codecogs.com/svg.latex?\alpha_{n}), are not constant, then the estimate ![equation](http://latex.codecogs.com/svg.latex?Q_{n}) is a weighted average of previously received rewards with a weighting different from that given by (2.6). What is the weighting on each prior reward for the general case, analogous to (2.6), in terms of the sequence of step-size parameters?
#### Answer
![Figure 2.2](assets/answer-002_4_01.jpg)

*latex:*

```
Q_{n+1} 
= Q_{n} + \alpha_{n}\left(R_{n} - Q_{n}\right)
= \alpha_{n}R_{n} + \left(1-\alpha_{n}\right)\left[Q_{n-1} + \alpha_{n-1}\left(R_{n-1} - Q_{n-1}\right)\right] 
= \ldots 
= \sum_{i=n}^{1}\alpha_{i}R_{i}\prod_{j=i+1}^{n}\left(1 - \alpha_{j}\right)
```


### Exercise 2.5
skipping - programming excercise
