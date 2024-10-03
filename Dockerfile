FROM docker.io/ubuntu:24.10
# Just gonna try to open jupyterlab and see where i've landed.
RUN apt update; apt upgrade -y; apt --full-upgrade -y; apt install curl wget nmap python3-pip; python3 -m pip install jupyter-lab; python -m pip install jupyter_collaboration; jupyterlab --ip=0.0.0.0 --port=80 --allow-root --no-browser
