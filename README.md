# MECH4000J/ELEC4010M Project 1
Implement functions to determine the baxter robots 7-DOF arm configuration. The list of functions implemented are shown below:

1. Forward Kinematics function
2. Generating Point Cloud function
3. Inverse Kinematics function
4. Write my Initial TS function

Refer to [Project#1.pdf](https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project%231.pdf) for more details.

## Getting Started
Clone the following repository into your local system and open the project folder in matlab and you are good to go! It's that easy.

## Running the tests
Refer to Project_1.m for sample usage code. Run by section from the top as the sample test requires certain functions to run before others.

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
