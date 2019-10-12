# Chapter 1
### Excercise 1.1
*Self-Play* Suppose, instead of playing against a random
opponent, the reinforcement learning algorithm described above played against
itself. What do you think would happen in this case? Would it learn a different
way of playing?
#### Answer
We assumed opponent is imperfect. After some work algorithm can achieve better policy on a state that random opponent and tic-tac-toe isn't too hard explore to the point where algorithm can achieve tie from every start state

### Excercise 1.2
*Symmetries* Many tic-tac-toe positions appear different but
are really the same because of symmetries. How might we amend the reinforcement learning algorithm described above to take advantage of this? In what
ways would this improve it? Now think again. Suppose the opponent did not
take advantage of symmetries. In that case, should we? Is it true, then, that
symmetrically equivalent positions should necessarily have the same value?
#### Answer
We can update *value function* not only for one state but also for symmetrically the same states.
Value function for two *symmetrically the same* states can be achieved through different ways and get different values for some episodes but at the infinity it should be the same with enough exploration.

### Excercise 1.3
*Greedy Play* Suppose the reinforcement learning player was
greedy, that is, it always played the move that brought it to the position that
it rated the best. Would it learn to play better, or worse, than a nongreedy
player? What problems might occur?
#### Answer
If policy for greedy player is good enough to achieve at least a draw then greedy policy can be good.
Nongreedy player is forced to choose "worse" action but it can lead to explore better policy.
Greedy player can play at the same level all the time but it can't improve their policy after some point.

### Excercise 1.4
*Learning from Exploration* Suppose learning updates occurred
after all moves, including exploratory moves. If the step-size parameter is
appropriately reduced over time, then the state values would converge to a
set of probabilities. What are the two sets of probabilities computed when we
do, and when we do not, learn from exploratory moves? Assuming that we
do continue to make exploratory moves, which set of probabilities might be
better to learn? Which would result in more wins?
#### Answer
The first set is ![equation](https://latex.codecogs.com/gif.latex?%5Cleft%5C%7B0%2C%201%5Cright%5C%7D) and the second set is ![equation](https://latex.codecogs.com/svg.latex?%5Cleft%5C%7B%5Cfrac%7B%5Cepsilon%7D%7B%7CS%7C%7D%2C%201-%5Cepsilon%5Cright%5C%7D)

### Excercise 1.5
*Other Improvements* Can you think of other ways to improve
the reinforcement learning player? Can you think of any better way to solve
the tic-tac-toe problem as posed?
#### Answer
