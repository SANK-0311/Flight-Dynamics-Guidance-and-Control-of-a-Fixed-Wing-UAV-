```markdown
# **Flight Dynamics, Guidance, and Control of a Fixed-Wing UAV**

## Overview

This project focuses on the **modeling, guidance, and control of a fixed-wing unmanned aerial vehicle (UAV)** using a physics-based flight dynamics model and classical autopilot design methods. The goal is to build a **modular simulation framework** that integrates aircraft dynamics, control laws, and waypoint-based guidance for autonomous fixed-wing flight.

The work is aligned with **aircraft flight dynamics** and **UAV guidance & control** principles commonly used in aerospace and autonomous systems.

---

## Objectives

* Develop a **6-DOF nonlinear flight-dynamics model** of a fixed-wing UAV
* Obtain **linearized longitudinal and lateral-directional models** about trimmed flight
* Design a **fixed-wing autopilot** using trim, linearization, and classical control
* Implement **waypoint-based guidance and trajectory following**
* Simulate **closed-loop autonomous fixed-wing flight**

---

## System Architecture

The UAV system is organized into four main layers:

Guidance → Autopilot → Aircraft Dynamics → State Propagation

* **Guidance** generates desired altitude, airspeed, and course from waypoints
* **Autopilot** tracks the desired commands using control loops
* **Aircraft Dynamics** computes forces and moments from the 6-DOF equations
* **Simulation** propagates the vehicle state forward in time

This structure mirrors real fixed-wing UAV autopilot architectures.

---

## Key Components

### Flight Dynamics

* Rigid-body **6-DOF equations of motion**
* Aerodynamic force and moment models
* Body and inertial reference frames
* Wind and disturbance modeling

### Trim & Linearization

* Steady-level flight trim solver
* Linearized **longitudinal and lateral-directional models**
* Stability and mode analysis

### Autopilot

* Longitudinal control (airspeed, pitch, altitude)
* Lateral-directional control (roll, yaw, course)
* Classical control design using linearized models

### Guidance

* Waypoint management
* Desired course and altitude generation
* Trajectory following logic for fixed-wing UAVs

---

## Repository Structure

fixed_wing_uav_gnc/
├── models/        # Nonlinear & linearized aircraft models, trim solver
├── control/       # Fixed-wing autopilot (longitudinal & lateral)
├── guidance/      # Waypoint and trajectory logic
├── simulation/    # Integrator, wind model, and simulation loop
├── data/          # Aircraft parameters
├── docs/          # Theory, equations, and design notes
└── plots/         # Simulation results

---

## Current Status

This project is **actively under development**.
The following components are in progress:

* 6-DOF aircraft dynamics formulation
* Trim and linearization framework
* Autopilot control law design
* Guidance and waypoint tracking logic

Simulation and controller integration are being expanded iteratively.

---

## Applications

This framework supports:

* Fixed-wing UAV autopilot design
* Guidance and trajectory-tracking studies
* Flight dynamics and stability analysis
* Autonomous fixed-wing navigation research

---

## Future Extensions

Planned enhancements include:

* Improved aerodynamic models
* Sensor and state-estimation models
* More advanced guidance laws
* Integration with external simulation tools

---

## Author

**Santhosh Kumar**
M.Tech – Aerospace Engineering
Indian Institute of Technology Bombay
```
