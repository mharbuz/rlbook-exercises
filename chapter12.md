# Chapter 12

### Exercise 12.1

Just as the return can be written recursively in terms of the first reward and
itself one-step later (3.9), so can the λ-return. Derive the analogous recursive relationship
from (12.2) and (12.1).

#### Answer 

![answer 12.1](assets/answer-012_01_01.png)

Thanks for: https://yangyang1987.info/reinforcementlearning/eligibility_trace.pdf

### Exercise 12.2

The parameter λ characterizes how fast the exponential weighting in
Figure 12.2 falls off, and thus how far into the future the λ-return algorithm looks in
determining its update. But a rate factor such as λ is sometimes an awkward way of
characterizing the speed of the decay. For some purposes it is better to specify a time
constant, or half-life. What is the equation relating λ and the half-life, τ_λ, the time by
which the weighting sequence will have fallen to half of its initial value?

#### Answer

Half-life is n for which λ^n <= 1/2.

For λ <= 1/2 half-life is one.
