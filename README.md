# Automating the testing of `wandb/examples/colabs`

This repo gives a minimal implementation of testing 1 example of the examples repo.

- The dockerfile has a sort-of minimal pytorch image

## Running the test

```bash
docker run -it --rm --gpus all -v $PWD:/wandb minimal
```

inside the docker container, you can run the execution of the testing with the nb_helpers.run_nbs

```bash
nb_helpers.run_nbs --path  /wandb/Intro_to_Weights_\&_Biases.ipynb
```

after executing this command, you should find a `run.csv` file with basic reporting of the execution.

## TODO
- Orchestrate different images with different notebooks types (tensorflow, pytorch, sklearn, etc...)
- Automate this testing on a machine triggered from a github action

