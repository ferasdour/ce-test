FROM docker.io/ubuntu:24.10
# Just gonna try to open jupyterlab and see where i've landed.
RUN /bin/bash -c "apt update; apt upgrade -y; apt --full-upgrade -y; apt install -y curl wget nmap python3 python3-pip -y; python3 -m pip install --break-system-packages --root-user-action=ignore jupyterlab; python3 -m pip install --break-system-packages --root-user-action=ignore jupyter_collaboration; python3 -m jupyterlab --ip=0.0.0.0 --port=8080 --allow-root --no-browser"
