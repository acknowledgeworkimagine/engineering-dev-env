# 🧰 Engineering Dev Environment (Docker)

This repository provides a Docker-based Python development environment tailored for:

✅ Mechatronics Engineers  
✅ Mobility Systems Engineers  
✅ Design and Simulation Engineers  
✅ Systems Engineers

---

## 🚀 Features

- **Python 3 + JupyterLab** interface
- Scientific libraries: `numpy`, `pandas`, `scipy`, `matplotlib`, `sympy`, `control`, `pint`
- Machine learning tools: `scikit-learn`, `seaborn`, `plotly`
- Engineering tools: `pyserial`, `opencv-python`, `gnuplot`, `graphviz`
- Development tools: `git`, `make`, `cmake`, `build-essential`
- Visual tools: `ipywidgets`, `nbconvert`, `jupyterlab-git`

---

## 🧪 How to Use

### 1. Clone the repository
```bash
git clone https://github.com/youruser/engineering-dev-env.git
cd engineering-dev-env
```

### 2. Build the Docker image
```bash
docker build -t eng-dev-env .
```

### 3. Run the container with Jupyter and volume access
```bash
docker run -p 8888:8888 -v $(pwd)/notebooks:/home/jovyan/work eng-dev-env
```
On Windows:
```bash
docker run -p 8888:8888 -v %cd%\notebooks:/home/jovyan/work eng-dev-env
```

### 4. Access the JupyterLab interface
Visit: `http://localhost:8888` in your browser. Use the token shown in terminal if asked.

---

## 📂 Project Structure Example
```
engineering-dev-env/
├── Dockerfile
├── README.md
├── requirements.txt (optional)
└── notebooks/
    ├── test.ipynb
    └── experiments.ipynb
```

---

## 📌 Notes
- All work saved inside `notebooks/` is persisted across runs.
- You can install additional packages by editing the Dockerfile or using pip inside the container.
- For version control, push this folder to your GitHub repo.

---

## 📬 Need Help?
Feel free to open an issue or ping [yourname] on GitHub.

---

> Built for engineers who prototype, analyze, and simulate systems — in one powerful container.
