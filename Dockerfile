# Dockerfile for a Mechatronics, Mobility, Design, and Systems Engineering Dev Environment

FROM jupyter/scipy-notebook:latest

# Set working directory inside the container
WORKDIR /home/jovyan/work

# Install additional tools useful for engineers and yourself
RUN pip install \
    jupyterlab \
    matplotlib \
    numpy \
    pandas \
    scipy \
    sympy \
    scikit-learn \
    opencv-python \
    pyserial \
    seaborn \
    plotly \
    ipywidgets \
    nbconvert \
    pint \
    control \
    jupyterlab-git

# Add system tools
USER root
RUN apt-get update && apt-get install -y \
    git \
    make \
    cmake \
    build-essential \
    libopencv-dev \
    graphviz \
    gnuplot \
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Return to the default user
USER $NB_UID

# Launch command
CMD ["start-notebook.sh"]
