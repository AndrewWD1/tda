## Activiating Conda with custom environment that has ripser, numpy, etc...

After logging into the universities research computer via ssh, you can do the following to activate
a custom python environment to allow you to download the software you need. Just
using pip in the terminal will not work as their are controls in place taht restrict
what you are able to do.

## If first time 
Copy paste to terminal and run

```bash
nano ~/.condarc
```

Copy and paste into file then save and exit

```bash
pkgs_dirs:
  - /projects/$USER/.conda_pkgs
envs_dirs:
  - /projects/$USER/software/anaconda/envs
```

Now use

```bash
conda install <package>
```

to install the special packages you need for topological data analysis.

## Returning
Copy paste to terminal and run


```bash 
source /curc/sw/anaconda3/latest
```

Copy paste to terminal and run

```bash 
conda activate mycustomenv
```

You should now be able to run python files on the remote computer. YOu shouldn't expect these
to compute any faster than on your local machine however.

To actually utilize the supercomputing resources, you must use a job 
(you can do this interactively, but probably easiest to just use a standard job
that runs in the background). You also need an allocation, but as soon as you 
request an account you get a 'ucb-general' allocation which has a modest amount
of computing resources. To request a larger allocation use this link
https://www.colorado.edu/rc/userservices/allocations

## This process of requesting an allocation is expected to take a minimum of two weeks
