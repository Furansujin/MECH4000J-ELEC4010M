# MECH4000J/ELEC4010M Project 2
Implement functions to determine the quality grasps on planar parts. The list of functions implemented are shown below:

1. Plotting Polygon function
2. Determining Force Closure function
3. Plotting Baxter arm function

Refer to [Project#2.pdf](https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project%231.pdf) for more details.

## Getting Started
Clone the following repository into your local system and open the project folder in matlab and you are good to go! It's that easy.

## Running the tests
Run Project_2.m and input the parameters. See below an example of the sample output and usage:

### Functions Implemented
Forward Kinematics function
```
fwd_kin(angle_joint_1, angle_joint_2, angle_joint_3, angle_joint_4, angle_joint_5, angle_joint_6, angle_joint_7, plot_color)
```

Generating Point Cloud function
```
p_cloud(vector_spacing)
```

Inverse Kinematics function
```
inv_kin(x_pos, y_pos, z_pos, pre-calculated point cloud or [], number of solutions, plot_color)
```

Write my Initial TS function
```
wrt_init(point_spacing, pre-calculated point cloud (recommended) or [])
```

## Authors
* **Thomas Narayana Swamy** [trns1997](https://github.com/trns1997)

See also the list of [contributors](https://github.com/trns1997/MECH4000J-ELEC4010M/contributors) who participated in this project.

## Acknowledgments
* Professor Jun Seo, Course Code: ELEC4010M/MECH4000J, HKUST, Hong Kong
