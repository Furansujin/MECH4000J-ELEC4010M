# MECH4000J/ELEC4010M Project 2
Implement functions to determine the quality grasps on planar parts. The list of functions implemented are shown below:

1. Plotting Polygon function
2. Determining Force Closure function
3. Plotting Baxter arm function

Refer to [Project#2.pdf](https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project_2/Project%232.pdf) for more details.

## Getting Started
Clone the following repository into your local system and open the project folder in matlab and you are good to go! It's that easy.

## Running the tests
Run Project_2.m and input the parameters. See below an example of the sample output and usage:

Case 1: Force Closure == True

<img src="https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project_2/images/input_fc.png" width="548" height="79"/>

Result:

<img src="https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project_2/images/final.png" width="640" height="242"/>

Case 2: Force Closure == False

<img src="https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project_2/images/input_nfc.png" width="548" height="79"/>

Result:

<img src="https://github.com/trns1997/MECH4000J-ELEC4010M/blob/master/Project_2/images/nfc.png" width="640" height="242"/>

### Functions Implemented
Plotting Polygon function
```
polygon(vertices)
```
Determining Force Closure function
```
[x_coordinate_line_1, y_coordinate_line_1, x_coordinate_line_2, y_coordinate_line_2, Force_Closure_Flag] = det_fr_cls(vertices, line_1, line_2, point_on_line_1, point_on_line_1, cone_angle);
```
Plotting Baxter arm function
```
plt_rbt(vertices, x_coordinate_line_1, y_coordinate_line_1, x_coordinate_line_2, y_coordinate_line_2, Force_Closure_Flag);
```

## Authors
* **Thomas Narayana Swamy** [trns1997](https://github.com/trns1997)

See also the list of [contributors](https://github.com/trns1997/MECH4000J-ELEC4010M/contributors) who participated in this project.

## Acknowledgments
* Professor Jun Seo, Course Code: ELEC4010M/MECH4000J, HKUST, Hong Kong
