## Activiating Conda with custom environment that has ripser, numpy, etc...

## Copy paste to terminal and run
source /curc/sw/anaconda3/latest

## Copy paste to terminal and run
conda activate mycustomenv

To actually utilize the supercomputing resources, you must use a job 
(you can do this interactively, but probably easiest to just use a standard job
that runs in the background). You also need an allocation, but as soon as you 
request an account you get a 'ucb-general' allocation which has a modest amount
of computing resources. To request a larger allocation use this link
https://www.colorado.edu/rc/userservices/allocations

This process of requesting an allocation is expected to take a minimum of two weeks
