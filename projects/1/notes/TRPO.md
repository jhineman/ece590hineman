# TRPO

## Is the algorithm on-policy or off-policy? What does this mean for exploration-exploitation? 
TRPO algorithm is on-policy. It explores by sampling from its current stochastic policy. It works for both continuous and discrete actions
## From what principle is the algorithm derived? For example, did it come from direct optimization of returns of the Bellman equation? Said another way, what are the key equations?
The [key equations](https://spinningup.openai.com/en/latest/algorithms/trpo.html#key-equations) summmarize how to derive the method as a constrained optimization problem where
the constraint is given in terms of **KL** divergence (the constraint is the trust region). A potentially unifying way to view this sort of algorithm is through the natural gradient see for example the [slides](http://rail.eecs.berkeley.edu/deeprlcourse-fa17/f17docs/lecture_13_advanced_pg.pdf) by J Achiam.
## Can you give a simple derivation or at least consistency argument for its update?
The best summary is likely garnered from the practical algorithm and the psuedocode. It is a practical extension of natural policy gradient. Underlying iteration given
in algorithm 1 of the [paper](https://arxiv.org/pdf/1502.05477.pdf) has a provable and strong performance guarantee (see Theorem 1 and equation (10) of the paper).
## Can you write a practical algorithm? That is, how would code up the mathematics?
Practical algorithm is given [here](https://spinningup.openai.com/en/latest/algorithms/trpo.html#pseudocode). It employs of subroutines which should be understood why they are necessary: conjugate
gradient to compute the action of the inverse Hessian; how the policy is updated by back-tracking line search; use of generalize advantage estimation similar (same as in VPG, PPO)
## Did the algorithm come from a paper? Which paper was it, when? What else is in the paper that is maybe not in the spinning up documentation?
Yes. The [paper](https://arxiv.org/pdf/1502.05477.pdf) also contains practical applications to atari games and continuous control tasks.
## Did the paper offer any mathematical guarantees? If so, what are they?
Yes, there is policy improvement guarantee see Theorem 1, equation (10), and the appendix in the [paper](https://arxiv.org/pdf/1502.05477.pdf).
## At the time the paper was written, what was the novelty of the algorithm?
Practical natural policy gradient which could be applied with to deep neural networks capable of high-dimensional continuous and discrete control tasks.
