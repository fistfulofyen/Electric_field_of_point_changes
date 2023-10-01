# Electrical Field Simulation for Point Charges

This program simulates the electric field due to a point charge situated in a quadrant in the XY plane, while the X and Y axes are covered by an infinitely long grounded conductor.

## Instructions

1. Set the coordinates of the point charge by modifying the `inX` and `inY` variables.
2. Adjust the charge magnitude of the point charge by modifying the `inq` variable.
3. Run the program to visualize the electric field using the method of images quadruple.

## Usage

The program calculates the electric field generated by the point charge and visualizes it using arrows (quiver plot) or streamlines (streamslice plot). By default, the quiver plot is used. To switch to the streamslice plot, comment out the corresponding lines in the code.

## How it Works

1. The program defines a function `GraphEField` to calculate and graph the electric field.
2. It takes the position and charge of the point charge as input and plots the electric field within a defined domain.
3. The electric potential due to the point charge and the conductor is calculated and combined using a loop.
4. The electric field is obtained by taking the gradient of the electric potential and scaling it for visualization.
5. The electric field vectors are plotted using either the quiver plot (arrows) or the streamslice plot (streamlines).

## Customization

You can customize the simulation by adjusting the following parameters:

- `inX` and `inY`: Change the coordinates of the point charge in the XY plane.
- `inq`: Modify the magnitude of the point charge (positive or negative).
- `L`: Set the size of the domain to plot.
- `K`: Adjust the scaling factor for the electric field vectors.
- `s`: Set the step size for the meshgrid (affects plot resolution).

## Example Output

The program will generate a plot showing the electric field vectors due to the point charge in the first quadrant. The arrows or streamlines represent the direction and magnitude of the electric field at different positions.

![Electric Field Simulation](https://github.com/fistfulofyen/Electric_field_of_point_changes/blob/main/quad.png)

## Note

For the best visualization, it is recommended to adjust the `inq` value to a large number to make the electric field vectors more visible in the plot.

## Disclaimer

This program is intended for educational and illustrative purposes. It may not accurately model real-world scenarios and should not be used for critical applications. Use it at your own risk.

---

Thank you for using the Electrical Field Simulation Program! We hope you find it helpful in understanding electric fields and their visualization. If you have any questions or suggestions, feel free to reach out to us. Happy simulating!
