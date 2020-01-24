# Homework 1 notes and FAQ

## Dependencies for spinning up
* In addition to looking at the code for `setup.py` there are also installation
  instructions in the docs
  https://spinningup.openai.com/en/latest/user/installation.html#
* Here some of the options of using `conda`, `pip`, and `apt`/`apt-get` are
described. These are all package management utilities that allow you to install
python codes in the case `conda` and `pip` and other operating systems
requirements in the case of `apt`/`apt-get`.
* `apt`/`apt-get` are really the same. `apt` is the package manager for Debian
  based Linux and derivatives (e.g. Ubuntu)

## Running something (check your install)
* I suggested running `python spinup/examples/bench_ppo_cartpole.py` this seems
  to cause some problems.
* An alternative would be what is *suggested for testing install from the
  documentation*:
  https://spinningup.openai.com/en/latest/user/installation.html#check-your-install
* For convenience a command to check your install is:
  ```
  python -m spinup.run ppo --hid "[32,32]" --env LunarLander-v2 --exp_name installtest --gamma 0.999
  ```
* The associated plot command will require modification or other compensation to
  execute correctly (and that is OK)
  
## github and gitlab
* You can have private forks of repos on https://www.gitlab.com
* *I will finalize what we will do for submission on Monday 27 January 2020*

## dockerfile
* I'm essentially interested in students being able encode dependencies (i.e.
  what was needed to run their code). There are many ways to do this with docker
  (see `docker --help`) and other documentation online. For example, `dockerfile`
  contents don't need to be in something called `dockerfile`, you could inject a
  `requirements.txt` into your image at build and myriad of other cool things. *I'm
  not expecting this at the moment.*
* You should be able to use learned in the earlier parts to do 5.
* You will need a build command, like shown in class, but not in the homework 1 write-up
  ```docker build -t spinup-hineman .```
  The `.` say look in this directory for a file named `dockerfile`.
* If you want to run jupyter out of the docker container you'll need something like
  ```docker run -i -t -p 8888:8888 spinup-hineman /bin/bash -c "mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"```

## Other notes
* MPI seems to mad about running as root (which is the docker default), this can
  be corrected by adding a user. I leave this as bonus for homework 1
* It's worth while to play around with spinning up in other ways. Try installing
  it locally for example.
* There are other `gym` environments other than `LunarLander-v2`. Explore these.
* You could also follow the instructions on Mujoco and try some continuous tasks.
