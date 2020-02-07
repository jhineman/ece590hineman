# PPO

## Is the algorithm on-policy or off-policy? What does this mean for exploration-exploitation? 
PPO algorithm is on-policy. It explores by sampling from its current stochastic policy.
## From what principle is the algorithm derived? For example, did it come from direct optimization of returns of the Bellman equation? Said another way, what are the key equations?
PPO can be seen a first order way of enforcing the principles discovered in TRPO (really a natural gradient approach to policy gradients). The goal being how do we take large steps in policy
space without degrading performance. In TRPO this done by enforcing a hard constraint (at least in the practical algorithm). In PPO this done practically in two ways, a variable penalty from **KL**
or by using a surrogate *clipped* objective. The penalized version is essentially of the form of a *proximal* method from optimization where **KL** is replaces the usual 2-norm. 

See in particular the equations (3-5) of [paper](https://arxiv.org/pdf/1707.06347.pdf).
## Can you give a simple derivation or at least consistency argument for its update?
Yes. see [key equations](https://spinningup.openai.com/en/latest/algorithms/ppo.html#key-equations).
## Can you write a practical algorithm? That is, how would code up the mathematics?
Practical algorithm is given [here](https://spinningup.openai.com/en/latest/algorithms/ppo.html#pseudocode). The [paper](https://arxiv.org/pdf/1707.06347.pdf) paper introduces
an *actor-critic* style implementation---here they are showing how various parts of the basic algorithm (see spinning up) can be made asynchronous (non-blocking) via the 
work of [Mnih et al](https://arxiv.org/abs/1602.01783). The code in spinning up is implementing this kind of parallelism through MPI. This also done in the VPG and TRPO algorithms.
## Did the algorithm come from a paper? Which paper was it, when? What else is in the paper that is maybe not in the spinning up documentation?
Yes: [Proximal Policy Optimization Algorithms](https://arxiv.org/pdf/1707.06347.pdf). Some interesting points that are not discussed in the documentation are the proximal style
penalty and results on atari games and continuous control tasks.
## Did the paper offer any mathematical guarantees? If so, what are they?
None other than its relationship to TRPO which has a theoretically policy improvement guarantee.
## At the time the paper was written, what was the novelty of the algorithm?
1st order method (faster and easier to implement) with performance similar to TRPO. The big wins for this algorithm are: [OpenAI Five Dota2](https://openai.com/blog/openai-five/), 
[OpenAI emergent tool use](https://openai.com/blog/emergent-tool-use/).


