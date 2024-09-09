% La siguiente rutina permite obtener una expresión que permite transformar
% valores medidos con sonda implementada a valores reales
close all
% A 900 MHz
load("Todos.mat");
format long;
MVG900_Cal_Ant1=TodosDatos{:,'MVG900_Cal_Ant1'};
MVG900_Cal_Ant2=TodosDatos{:,'MVG900_Cal_Ant2'};
MVG900_Cal_Ant3=TodosDatos{:,'MVG900_Cal_Ant3'};
MVG900_Val_Ant1=TodosDatos{:,'MVG900_Val_Ant1'};
MVG900_Val_Ant2=TodosDatos{:,'MVG900_Val_Ant2'};
MVG900_Val_Ant3=TodosDatos{:,'MVG900_Val_Ant3'};

IU900_Cal_Ant1=TodosDatos{:,'IU900_Cal_Ant1'};
IU900_Cal_Ant2=TodosDatos{:,'IU900_Cal_Ant2'};
IU900_Cal_Ant3=TodosDatos{:,'IU900_Cal_Ant3'};
IU900_Val_Ant1=TodosDatos{:,'IU900_Val_Ant1'};
IU900_Val_Ant2=TodosDatos{:,'IU900_Val_Ant2'};
IU900_Val_Ant3=TodosDatos{:,'IU900_Val_Ant3'};

MVG1800_Cal_Ant1=TodosDatos{:,'MVG1800_Cal_Ant1'};
MVG1800_Cal_Ant2=TodosDatos{:,'MVG1800_Cal_Ant2'};
MVG1800_Cal_Ant3=TodosDatos{:,'MVG1800_Cal_Ant3'};
MVG1800_Val_Ant1=TodosDatos{:,'MVG1800_Val_Ant1'};
MVG1800_Val_Ant2=TodosDatos{:,'MVG1800_Val_Ant2'};
MVG1800_Val_Ant3=TodosDatos{:,'MVG1800_Val_Ant3'};

IU1800_Cal_Ant1=TodosDatos{:,'IU1800_Cal_Ant1'};
IU1800_Cal_Ant2=TodosDatos{:,'IU1800_Cal_Ant2'};
IU1800_Cal_Ant3=TodosDatos{:,'IU1800_Cal_Ant3'};
IU1800_Val_Ant1=TodosDatos{:,'IU1800_Val_Ant1'};
IU1800_Val_Ant2=TodosDatos{:,'IU1800_Val_Ant2'};
IU1800_Val_Ant3=TodosDatos{:,'IU1800_Val_Ant3'};

MVG3500_Cal_Ant1=TodosDatos{:,'MVG3500_Cal_Ant1'};
MVG3500_Cal_Ant2=TodosDatos{:,'MVG3500_Cal_Ant2'};
MVG3500_Cal_Ant3=TodosDatos{:,'MVG3500_Cal_Ant3'};
MVG3500_Val_Ant1=TodosDatos{:,'MVG3500_Val_Ant1'};
MVG3500_Val_Ant2=TodosDatos{:,'MVG3500_Val_Ant2'};
MVG3500_Val_Ant3=TodosDatos{:,'MVG3500_Val_Ant3'};

IU3500_Cal_Ant1=TodosDatos{:,'IU3500_Cal_Ant1'};
IU3500_Cal_Ant2=TodosDatos{:,'IU3500_Cal_Ant2'};
IU3500_Cal_Ant3=TodosDatos{:,'IU3500_Cal_Ant3'};
IU3500_Val_Ant1=TodosDatos{:,'IU3500_Val_Ant1'};
IU3500_Val_Ant2=TodosDatos{:,'IU3500_Val_Ant2'};
IU3500_Val_Ant3=TodosDatos{:,'IU3500_Val_Ant3'};

% Ahora solo presentamos los datos originales
% A 900 MHz
figure(1)
fig=gcf;
fig.Position(3:4)=[650,500];
subplot(2,1,1)
tmp1 = max(IU900_Cal_Ant1);
tmp2 = max(IU900_Cal_Ant2);
tmp3 = max(IU900_Cal_Ant3);

plot(IU900_Cal_Ant1./tmp1,'LineWidth',1.5);
hold on
plot(IU900_Cal_Ant2./tmp2,'LineWidth',1.5);
plot(IU900_Cal_Ant3./tmp3,'LineWidth',1.5);
legend('IU_1','IU_2','IU_3')
ylabel('Normalized voltage','FontSize',9,'FontWeight','bold')
xlabel('Sample number - 900 MHz','FontSize',9,'FontWeight','bold')
xlim([1 209]);
ylim([0 1]);
grid on

subplot(2,1,2)
tmp1 = max(MVG900_Cal_Ant1);
tmp2 = max(MVG900_Cal_Ant2);
tmp3 = max(MVG900_Cal_Ant3);
plot(MVG900_Cal_Ant1./tmp1,'LineWidth',1.5);
hold on
plot(MVG900_Cal_Ant2./tmp2,'LineWidth',1.5);
plot(MVG900_Cal_Ant3./tmp3,'LineWidth',1.5);
legend('MVG_1','MVG_2','MVG_3')
ylabel('Normalized voltage','FontSize',9,'FontWeight','bold')
xlabel('Sample number - 900 MHz','FontSize',9,'FontWeight','bold')
xlim([1 209]);
ylim([0 1]);
grid on

% A 1800 MHz
figure(2)
fig=gcf;
fig.Position(3:4)=[650,500];
subplot(2,1,1)
tmp1 = max(IU1800_Cal_Ant1);
tmp2 = max(IU1800_Cal_Ant2);
tmp3 = max(IU1800_Cal_Ant3);
plot(IU1800_Cal_Ant1./tmp1,'LineWidth',1.5);
hold on
plot(IU1800_Cal_Ant2./tmp2,'LineWidth',1.5);
plot(IU1800_Cal_Ant3./tmp3,'LineWidth',1.5);
legend('IU_1','IU_2','IU_3')
ylabel('Normalized voltage','FontSize',9,'FontWeight','bold')
xlabel('Sample number - 1800 MHz ','FontSize',9,'FontWeight','bold')
xlim([1 209]);
ylim([0 1]);
grid on
subplot(2,1,2)
tmp1 = max(MVG1800_Cal_Ant1);
tmp2 = max(MVG1800_Cal_Ant2);
tmp3 = max(MVG1800_Cal_Ant3);
plot(MVG1800_Cal_Ant1./tmp1,'LineWidth',1.5);
hold on
plot(MVG1800_Cal_Ant2./tmp2,'LineWidth',1.5);
plot(MVG1800_Cal_Ant3./tmp3,'LineWidth',1.5);
legend('MVG_1','MVG_2','MVG_3')
ylabel('Normalized voltage','FontSize',9,'FontWeight','bold')
xlabel('Sample number - 1800 MHz ','FontSize',9,'FontWeight','bold')
xlim([1 209]);
ylim([0 1]);
grid on

% A 3500 MHz
figure(3)
fig=gcf;
fig.Position(3:4)=[650,500];
subplot(2,1,1)
tmp1 = max(IU3500_Cal_Ant1);
tmp2 = max(IU3500_Cal_Ant2);
tmp3 = max(IU3500_Cal_Ant3);
plot(IU3500_Cal_Ant1./tmp1,'LineWidth',1.5);
hold on
plot(IU3500_Cal_Ant2./tmp2,'LineWidth',1.5);
plot(IU3500_Cal_Ant3./tmp3,'LineWidth',1.5);
legend('IU_1','IU_2','IU_3')
ylabel('Normalized voltage','FontSize',9,'FontWeight','bold')
xlabel('Sample number - 3500 MHz','FontSize',9,'FontWeight','bold')
xlim([1 209]);
ylim([0 1]);
grid on
subplot(2,1,2)
tmp1 = max(MVG3500_Cal_Ant1);
tmp2 = max(MVG3500_Cal_Ant2);
tmp3 = max(MVG3500_Cal_Ant3);
plot(MVG3500_Cal_Ant1./tmp1,'LineWidth',1.5);
hold on
plot(MVG3500_Cal_Ant2./tmp2,'LineWidth',1.5);
plot(MVG3500_Cal_Ant3./tmp3,'LineWidth',1.5);
legend('MVG_1','MVG_2','MVG_3')
ylabel('Normalized voltage','FontSize',9,'FontWeight','bold')
xlabel('Sample number 3500 MHz','FontSize',9,'FontWeight','bold')
xlim([1 209]);
ylim([0 1]);
grid on

% Los factores de sensilibilidad de la antena MVG son
K1MVG = 5.28*(10^-6);
K2MVG = 6.28*(10^-6);
K3MVG = 6.54*(10^-6);
% Hallamos los factores de calibración para cada antena para 900 MHz
IU900_Cal = [IU900_Cal_Ant1' ; IU900_Cal_Ant2' ; IU900_Cal_Ant3']';
MVG900_Cal = [(MVG900_Cal_Ant1/K1MVG+MVG900_Cal_Ant2/K2MVG+MVG900_Cal_Ant3/K3MVG)']';
K900i = linsolve(IU900_Cal,MVG900_Cal)
K900 = [1/K900i(1) 1/K900i(2) 1/K900i(3)]

% Hallamos los factores de calibración para cada antena para 1800 MHz
IU1800_Cal = [IU1800_Cal_Ant1' ; IU1800_Cal_Ant2' ; IU1800_Cal_Ant3']';
MVG1800_Cal = [(MVG1800_Cal_Ant1/K1MVG+MVG1800_Cal_Ant2/K2MVG+MVG1800_Cal_Ant3/K3MVG)']';
K1800i = linsolve(IU1800_Cal,MVG1800_Cal)
K1800 = [1/K1800i(1) 1/K1800i(2) 1/K1800i(3)]

% Hallamos los factores de calibración para cada antena para 3500 MHz
IU3500_Cal = [IU3500_Cal_Ant1' ; IU3500_Cal_Ant2' ; IU3500_Cal_Ant3']';
MVG3500_Cal = [(MVG3500_Cal_Ant1/K1MVG+MVG3500_Cal_Ant2/K2MVG+MVG3500_Cal_Ant3/K3MVG)']';
K3500i = linsolve(IU3500_Cal,MVG3500_Cal)
K3500 = [1/K3500i(1) 1/K3500i(2) 1/K3500i(3)]

figure(4)
fig=gcf;
fig.Position(3:4)=[650,250];
A = IU900_Val_Ant1/K900(1);
B = IU900_Val_Ant2/K900(2);
C = IU900_Val_Ant3/K900(3);
sumaIU900VAL = A+B+C;
plot(sqrt(sumaIU900VAL),'LineWidth',1.5)
hold on
plot(sqrt(MVG900_Val_Ant1/K1MVG+MVG900_Val_Ant2/K2MVG+MVG900_Val_Ant3/K3MVG),'LineWidth',1.5)
ylabel('E-field (V/m)','FontSize',9,'FontWeight','bold')
xlabel('Sample number','FontSize',9,'FontWeight','bold')
legend('900 MHz Transformed IU','900 MHz MVG');
xlim([1 209]);
ylim([0 101]);
grid on

figure(5)
fig=gcf;
fig.Position(3:4)=[650,250];
A = IU1800_Val_Ant1/K1800(1);
B = IU1800_Val_Ant2/K1800(2);
C = IU1800_Val_Ant3/K1800(3);
sumaIU1800VAL = A+B+C;
plot(sqrt(sumaIU1800VAL),'LineWidth',1.5)
hold on
plot(sqrt(MVG1800_Val_Ant1/K1MVG+MVG1800_Val_Ant2/K2MVG+MVG1800_Val_Ant3/K3MVG),'LineWidth',1.5)
ylabel('E-Field (V/m)','FontSize',9,'FontWeight','bold')
xlabel('Sample number','FontSize',9,'FontWeight','bold')
legend('1800 MHz Transformed IU','1800 MHz MVG');
xlim([1 209]);
ylim([0 74]);
grid on

figure(6)
fig=gcf;
fig.Position(3:4)=[650,250];
A = IU3500_Val_Ant1/K3500(1);
B = IU3500_Val_Ant2/K3500(2);
C = IU3500_Val_Ant3/K3500(3);
sumaIU3500VAL = A+B+C;
plot(sqrt(sumaIU3500VAL),'LineWidth',1.5)
hold on
plot(sqrt(MVG3500_Val_Ant1/K1MVG+MVG3500_Val_Ant2/K2MVG+MVG3500_Val_Ant3/K3MVG),'LineWidth',1.5)
ylabel('E-Field (V/m)','FontSize',9,'FontWeight','bold')
xlabel('Sample number','FontSize',9,'FontWeight','bold')
legend('3500 MHz Transformed IU','3500 MHz MVG');
xlim([1 209]);
ylim([0 60]);
grid on

% Hallamos los errores absolutos de este nuevo enfoque, para cada
% frecuencia
figure(7)
fig=gcf;
fig.Position(3:4)=[650,250];
tmp1 = sqrt(sumaIU900VAL);
tmp2 = sqrt(MVG900_Val_Ant1/K1MVG+MVG900_Val_Ant2/K2MVG+MVG900_Val_Ant3/K3MVG);
plot(abs(tmp2 - tmp1),'LineWidth',1.5)
error900 = abs(tmp2 - tmp1);
hold on
plot(tmp1,'LineWidth',1.5)
plot(tmp2,'LineWidth',1.5)
title('Absolute Error(V/m) - 900 MHz')
legend('Absolute error','Transformed IU','MVG')
xlim([1 209]);
grid on

figure(8)
fig=gcf;
fig.Position(3:4)=[650,250];
tmp1 = sqrt(sumaIU1800VAL);
tmp2 = sqrt(MVG1800_Val_Ant1/K1MVG+MVG1800_Val_Ant2/K2MVG+MVG1800_Val_Ant3/K3MVG);
plot(abs(tmp2 - tmp1),'LineWidth',1.5)
error1800 = abs(tmp2 - tmp1);
hold on
plot(tmp1,'LineWidth',1.5)
plot(tmp2,'LineWidth',1.5)
title('Absolute Error(V/m) - 1800 MHz')
legend('Absolute error','Transformed IU','MVG')
xlim([1 209]);
grid on

figure(9)
fig=gcf;
fig.Position(3:4)=[650,250];
tmp1 = sqrt(sumaIU3500VAL);
tmp2 = sqrt(MVG3500_Val_Ant1/K1MVG+MVG3500_Val_Ant2/K2MVG+MVG3500_Val_Ant3/K3MVG);
plot(abs(tmp2 - tmp1),'LineWidth',1.5)
error3500 = abs(tmp2 - tmp1);
hold on
plot(tmp1,'LineWidth',1.5)
plot(tmp2,'LineWidth',1.5)
title('Absolute Error(V/m) - 3500 MHz')
legend('Absolute error','Transformed IU','MVG')
xlim([1 209]);
grid on

% Ahora la gráfica de CDF
figure(10)
h1 = cdfplot(error900);
hold on
h2 = cdfplot(error1800);
h3 = cdfplot(error3500);
legend('CDF 900 MHz','CDF 1800 MHz','CDF 3500 MHz')
xlabel('Error (V/m)','FontSize',9,'FontWeight','bold')
ylabel('Probability Function (%)','FontSize',9,'FontWeight','bold')
set(h1, 'LineWidth', 1.5);
set(h2, 'LineWidth', 1.5);
set(h3, 'LineWidth', 1.5);