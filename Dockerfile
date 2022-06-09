# Run Nvidia pytorch image
# we may need to build from scratch later

FROM nvcr.io/nvidia/pytorch:22.05-py3

RUN python3 -m pip install -U wandb

RUN python3 -m pip install --no-cache-dir \
    git+https://github.com/wandb/nb_helpers.git@main

CMD ["/bin/bash"]
