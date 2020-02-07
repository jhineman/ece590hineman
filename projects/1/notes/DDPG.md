# DDPG

## Is the algorithm on-policy or off-policy? What does this mean for exploration-exploitation? 
DDPG algorithm is off-policy. It can be used only with continuous actions. See the summary of [exploration-exploitation](https://spinningup.openai.com/en/latest/algorithms/ddpg.html#exploration-vs-exploitation).
## From what principle is the algorithm derived? For example, did it come from direct optimization of returns of the Bellman equation? Said another way, what are the key equations?
DDPG has a fitted or approximate Q-learning part (i.e. optimizing MSBE) and a policy gradient part. The policy gradient is not a deterministic policy gradient, that being exactly the
extension of the policy gradient like we described in class to deterministic policies. This is described in detail in the original Deterministic Policy Gradient [work](http://proceedings.mlr.press/v32/silver14.pdf) and expanded in the DDPG [work](https://arxiv.org/pdf/1509.02971.pdf).
## Can you give a simple derivation or at least consistency argument for its update?
The explanations is probably clearest from the [psuedocode](https://spinningup.openai.com/en/latest/algorithms/ddpg.html#pseudocode). Essentially it is both Q update and policy update.
## Can you write a practical algorithm? That is, how would code up the mathematics?
Yes, see the [psuedocode](https://spinningup.openai.com/en/latest/algorithms/ddpg.html#pseudocode).
## Did the algorithm come from a paper? Which paper was it, when? What else is in the paper that is maybe not in the spinning up documentation?
Yes, see [Continuous control with deep reinforcement learning](https://arxiv.org/abs/1509.02971). The paper includes the algorithm and demonstrates its practical effectiveness on 20 continuous control tasks.
## Did the paper offer any mathematical guarantees? If so, what are they?
No, but the original Deterministic Policy Gradient [work](http://proceedings.mlr.press/v32/silver14.pdf) does offer some intuition on why using deterministic policies is useful.
## At the time the paper was written, what was the novelty of the algorithm?
Effectively dealing with continuous action spaces in an off-policy way. The [DDPG](https://arxiv.org/abs/1509.02971) paper suggests: *We adapt the ideas underlying the success of Deep Q-Learning 
to the continuous action domain*
