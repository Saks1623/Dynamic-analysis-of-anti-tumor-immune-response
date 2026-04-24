# Dynamic-analysis-of-anti-tumor-immune-response
This project simulates the interaction between tumor cells and the immune system using a system of nonlinear ordinary differential equations (ODEs). The implementation reproduces multiple dynamical behaviors observed in research literature by varying a key parameter.

---

## Overview

The model studies the evolution of:
- Tumor cells
- Immune cells
- Effector dynamics (depending on formulation)

By adjusting the parameter **γ (gamma)**, the system exhibits different biological behaviors such as:
- Tumor explosion
- Stable tumor growth
- Oscillations
- Tumor elimination

---

## Model Parameters

The following parameters are fixed across simulations:

| Parameter | Value |
|----------|------|
| α (alpha) | 0.3 |
| β (beta)  | 0.6 |
| δ (delta) | 10 |

Solver accuracy:
- Relative tolerance: `1e-8`
- Absolute tolerance: `1e-10`

---

## 📊 Simulated Cases

The project includes five different simulation scenarios:

### Case 1: Tumor Explosion (γ = 2)
- Time span: `[0, 20]`
- Behavior: Rapid tumor growth (unstable system)

### Case 2: Large Tumor Stable (γ = 3.5)
- Time span: `[0, 200]`
- Behavior: Tumor stabilizes at high level

### Case 3: Oscillatory Behavior (γ = 4)
- Time span: `[0, 80]`
- Behavior: Tumor and immune system oscillate

### Case 4: Small Tumor Stable (γ = 5)
- Time span: `[0, 200]`
- Behavior: Tumor stabilizes at low level

### Case 5: Tumor-Free State (γ = 6.2)
- Time span: `[0, 10]`
- Behavior: Tumor is eliminated

---

## Numerical Method

The system is solved using MATLAB’s built-in ODE solver:

- **Solver used:** `ode45`
- Suitable for non-stiff differential equations
- Provides adaptive step-size control for accuracy

---

## File Structure


project.m # Main script to run all simulations
tumor_system.m # Defines the system of ODEs
plot_case.m # Helper function to generate plots


---

## How to Run

1. Open MATLAB
2. Navigate to the project directory
3. Run the main script

This will:
Simulate all five cases
Generate plots for each scenario
## Output

Each simulation produces:

Time-series plots of system variables
Visualization of tumor dynamics under different γ values
## Key Insight

The parameter γ plays a critical role in determining system behavior:

Low γ → Tumor dominance
Intermediate γ → Oscillations
High γ → Tumor elimination

## Reference

https://doi.org/10.1007/s12190-019-01292-9

## Author

Saksham
MSc Mathematics, IIT Hyderabad


If you want, I can also:
- generate a **downloadable README.md file**
- or tailor it specifically for **GitHub (badges, screenshots, etc.)**
