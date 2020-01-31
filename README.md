# ECE 590: Reinforcement Learning at Scale

**Letcture Time, Place:** MW 8:30-9:45, 208 HH

**Recitation Time, Place:** TEER 106 10:05-11:20

**Office hour:** W 10-11, CIEMAS 3431

**Instructor:** Jay Hineman, Ph.D. (first name dot last name at institution)

**TA:** Zeyu Chen (first name dot last name at institution)

**Short Description:** This course consist of three parts. The first part will
focus on machine learning at scale using modern tools such as Docker, GitLab
with CI/CD, cloud computing, and Kubernetes. The second part will focus on
reinforcement learning (RL) for single- and multi- agent environments and
include topics such as Q-learning, policy gradients, and their deep learning
extensions. The third part will combine the first two topics and focus on
scaling DeepRL methods to attack large problems such as the Atari-57 benchmark
and the StarCraft Multi-Agent Challenge.

## Details
### Evaluation/Homework/Grading
50% HW, 20% Midterm, 30% Projects (including a final project)

### Resources

**Books:**
 * *Reinforcement Learning* Sutton and Barto 2018
 * *Reinforcement Learning and Optimal Control* Bertsekas
 
**Projects:**
  * Open AI Spinning Up
  * Kubeflow
  * Ray / Rllib
  * Horizon
  * Open AI baselines (and stable baselines fork**
  * Chainer RL
  
**Internal resources**
  * [Lecture notes]()
  * [Bibliography]()
  * [Homework]()
  * [Computing details]()

### Proposed Content (in an ideal world)
| Topic                            | Description                                                     |         Lectures | Assignment(s) |
|----------------------------------|-----------------------------------------------------------------|------------------|---------------|
| Docker                           | Dockerize spinningup content                                    |                1 | HW 1          |
| MDPs and variations              | Define basic problem in RL and variations                       |                2 |               |
| Taxonomy of approaches           | Define basic solution methods                                   |                2 |               |
| Review of Neural Networks        | Review use of NN in RL                                          |                3 |               |
| Genral policy Optimization       | Mathematical details on gradient policy optimization techniques |             3, 4 |               |
| Practical policy Optimaization   | Explore practical algorithms and variations in spinning up      |             5, 6 | HW 2          |
| *End of January*                 |                                                                 |                  |               |
| Group presentations              | Groups present from papers                                      |  7 or recitation |               |
| Ray, Rllib                       | Production tools for RL at scale                                |                8 |               |
| Kubernetes                       | Orchestrate docker containers using Kubernetes                  |                9 | HW3           |
| Practicum on methods so far      | Comparing methods and implementations on OpenAI gym             |           10, 11 |               |
| Q learning                       | Introduction to Q-learning                                      |           11, 12 |               |
| *End of February*                |                                                                 |                  |               |
| Q learning + PG                  | explorre connections between Q learning and PG                  |               13 | HW4           |
| Group presentation               | Groups present from papers                                      | 14 or recitation |               |
| Multiagent RL (MARL)             | Introduction and challenges                                     |               15 |               |
| Multiagent RL methods            | MARL methods plain and fancy                                    |           16, 17 |               |
| Practicum on MARL                | Demonstrate production MARL methods                             |               18 | HW 5          |
| *End of March*                   |                                                                 |                  |               |
| Capstone: Starcraft II, SMAC     | Introduce Starcraft challenge and multiagent version            |               19 |               |
| *bonus* hyperparameter tuning    | Automatic tuning methods and ray.tune                           |               20 |               |
| *bonus* evolutionary methods     | Evolutionary techniques                                         |               21 |               |
| Final individual presentations 1 | 22                                                              |                  |               |
| Final individual presentations 2 | 23                                                              |                  |               |
| Buffer                           | 24-28                                                           |                  |               |
