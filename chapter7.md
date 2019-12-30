# Chapter 7

### Exercise 7.1

If V changes during the episode, then (6.6) only holds approximately; what would the difference be between the two sides? 
Let Vt denote the array of state values used at time t in the TD error (6.5) and in the TD update (6.2). 
Redo the derivation above to determine the additional amount that must be added to the sum of TD errors in order to equal the Monte Carlo error.

####
_for TD(1)_

![answer 7.1 (case TD(1))](assets/answer-007_01_01.png)

_latex:_
```
    \delta_{t:2} = R_{t+1} + \gamma R_{t+2} + \gamma^2 V_{(2)}(S_{t+2}) - V(S_t)
    G_{t:t+2} = R_{t+1} + \gamma R_{t+2} + \gamma^2G_{t+2}
    G_{t:t+2} - V_{(2)}(S_t) = R_{t+1} + \gamma R_{t+2} + \gamma^2 G_{t+2:t+4} - V_{(2)}(S_t) =
    = R_{t+1} + \gamma R_{t+2} + \gamma^2 V_{(2)} + \gamma^2 \left(G_{t+2:t+4} - V_{(2)}(S_{t+2})\right) = 
    = \sum_{k=0}^{\frac{T-1}{2}} \gamma^{2k} \delta_{t+2k:2}
```
