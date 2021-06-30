## Utlizing the University of Colorado Research Computer to run python scripts

Example job script and code can be found at https://github.com/AndrewWD1/tda

### Activiating Conda with custom environment that has ripser, numpy, etc...

After logging into the universities research computer via ssh, you can do the following to activate
a custom python environment to allow you to download the software you need. Just
using pip in the terminal will not work as there are controls in place that restrict
what you are able to do.

### If first time 
Copy paste to the following to your terminal and run

```bash
nano ~/.condarc
```

Copy and paste the following a into file then save and exit

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

### Returning
Copy paste to the following to your terminal and run


```bash 
source /curc/sw/anaconda3/latest
```

Copy paste to the following to your terminal and run

```bash 
conda activate mycustomenv
```

You should now be able to run python files that require special packages on the 
remote computer. You shouldn't expect these to compute any faster than on your 
local machine however.

To actually utilize the supercomputing resources, you must use a job 
(you can do this interactively, but probably easiest to just use a standard job
that runs in the background). You also need an allocation, but as soon as you 
request an account you get a 'ucb-general' allocation which has a modest amount
of computing resources. To request a larger allocation use this link
https://www.colorado.edu/rc/userservices/allocations. This process of requesting 
an allocation is expected to take a minimum of two weeks. So, the prudent thing
to do is to use the 'ucb-general' allocation for a proof-of-concept and to see how 
much computing resource you actually need. Then, these trials can be used as part 
of your application for an allocation. 

### Job Scripts

In order to run your program as a job you must write a job script. An example 
of one which we wrote to run ripser on our cyclooctane data is below. The #SBATCH
commands are parameters for SLURM, the software that allocates compute space and runs
your software. You can see that we are using just one compute node, we chose a high 
memory node, we are limiting the run time to 10 minutes, and we have given the job a name.

```bash 
#!/bin/bash

#SBATCH --nodes=1
#SBATCH --partition=smem
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --job-name=tda_script


module purge
source /curc/sw/anaconda3/latest
conda activate mycustomenv


python3 anthony_iso.py
```
