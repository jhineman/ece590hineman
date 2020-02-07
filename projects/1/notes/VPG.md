# VPG

## Is the algorithm on-policy or off-policy? What does this mean for exploration-exploitation? 
VPG algorithm is on-policy. It explores by sampling from its current stochastic policy. It works for both continuous and discrete actions
## From what principle is the algorithm derived? For example, did it come from direct optimization of returns of the Bellman equation? Said another way, what are the key equations?
VPG with generalized advantage estimation (GAE) is derived like we did in class, but using GAE and including the separate estimate of value. 
In the GAE [paper](https://arxiv.org/abs/1506.02438) one can find: the general form of update in 
equation (1) and the notes after it; an interpretation GAE as reward shaping (section 4) which suggests why we might make particular choices about which estimator to use; estimating the value
which could be used in the *generalized advantage estimator.*
## Can you give a simple derivation or at least consistency argument for its update?
Yes. see [key equations](https://spinningup.openai.com/en/latest/algorithms/vpg.html#key-equations). We did a derivation like this in class, but for total reward. 
## Can you write a practical algorithm? That is, how would code up the mathematics?
Practical algorithm is given [here](https://spinningup.openai.com/en/latest/algorithms/vpg.html#pseudocode). We did not discuss how one might estimate value as is done in step 8. of the psuedocode.
The code in spinning up is implementing the work of [Mnih et al](https://arxiv.org/abs/1602.01783) on asynchronous actor-critic through MPI. This also done in the PPO and TRPO algorithms.
## Did the algorithm come from a paper? Which paper was it, when? What else is in the paper that is maybe not in the spinning up documentation?
Yes. Originally Sutton, McAllester, Singh, Mansoor: [Policy Gradient Methods for Reinforcement Learning with Function Approximation](https://papers.nips.cc/paper/1713-policy-gradient-methods-for-reinforcement-learning-with-function-approximation.pdf). From the abstract: *Our main new result is to show that the gradient can
be written in a form suitable for estimation from experience aided
by an approximate action-value or advantage function. Using this
result, we prove for the first time that a version of policy iteration
with arbitrary differentiable function approximation is convergent to
a locally optimal policy.*
## Did the paper offer any mathematical guarantees? If so, what are they?
Yes. They give a convergence result, but this is to a local optima.
## At the time the paper was written, what was the novelty of the algorithm?
From the abstract: *Our main new result is to show that the gradient can
be written in a form suitable for estimation from experience aided
by an approximate action-value or advantage function. Using this
result, we prove for the first time that a version of policy iteration
with arbitrary differentiable function approximation is convergent to
a locally optimal policy.*
