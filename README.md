# Code to find calibration factors for electric field intensity sensor developed at INICTEL-UNI.

## Analysis of measurements made with MVG SAR probe and electric field sensor developed at INICTEL-UNI

The code was developed in Matlab.

Donwload files SAR_measurements.m and Todos.mat in the same folder and execute the script SAR_measurements.m using MATLAB
The script SAR_measurements.m will read data from Todos.mat file.

## Todos.mat file content
This file provides the following information arranged in columns:

- MVG900_Cal_Ant1, MVG900_Cal_Ant2 and MVG900_Cal_Ant3: Voltage measurements of MVG SAR probe antennas used to get calibration factors of developed IU sensor.
- MVG900_Val_Ant1, MVG900_Val_Ant2 and MVG900_Val_Ant3: Voltage measurements of MVG SAR probe antennas used to validate the transformed IU voltage values.
- IU900_Cal_Ant1, IU900_Cal_Ant2 and IU900_Cal_Ant3: Voltage measurements of IU sensor antennas used to get calibration factors of developed IU sensor.
- IU900_Val_Ant1, IU900_Val_Ant2 and IU900_Val_Ant3: Voltage measurements of IU sensor antennas used to validate the transformation factors found.

- MVG1800_Cal_Ant1, MVG1800_Cal_Ant2 and MVG1800_Cal_Ant3: Voltage measurements of MVG SAR probe antennas used to get calibration factors of developed IU sensor.
- MVG1800_Val_Ant1, MVG1800_Val_Ant2 and MVG1800_Val_Ant3: Voltage measurements of MVG SAR probe antennas used to validate the transformed IU voltage values.
- IU1800_Cal_Ant1, IU1800_Cal_Ant2 and IU1800_Cal_Ant3: Voltage measurements of IU sensor antennas used to get calibration factors of developed IU sensor.
- IU1800_Val_Ant1, IU1800_Val_Ant2 and IU1800_Val_Ant3: Voltage measurements of IU sensor antennas used to validate the transformation factors found.

- MVG3500_Cal_Ant1, MVG3500_Cal_Ant2 and MVG3500_Cal_Ant3: Voltage measurements of MVG SAR probe antennas used to get calibration factors of developed IU sensor.
- MVG3500_Val_Ant1, MVG3500_Val_Ant2 and MVG3500_Val_Ant3: Voltage measurements of MVG SAR probe antennas used to validate the transformed IU voltage values.
- IU3500_Cal_Ant1, IU3500_Cal_Ant2 and IU3500_Cal_Ant3: Voltage measurements of IU sensor antennas used to get calibration factors of developed IU sensor.
- IU3500_Val_Ant1, IU3500_Val_Ant2 and IU3500_Val_Ant3: Voltage measurements of IU sensor antennas used to validate the transformation factors found.

## Results
K900, K1800 and K3500 contain the values ​​of the calculated calibration factors.
Figures 1, 2 and 3 are the normalized voltage values ​​obtained with the MVG probe and the IU sensor at frequencies of 900 MHz, 1800 MHz and 3500 MHz respectively. These values are used to calibrate the IU sensor.
Figures 4, 5 and 6 are the electric field values ​​calculated from the voltages measured with the MVG probe and the IU sensor at the frequencies of 900 MHz, 1800 MHz and 3500 MHz respectively. The measured voltage values ​​have been multiplied by the corresponding calibration factors.
Figure 7 shows the CDF of the absolute error in electric field values.


